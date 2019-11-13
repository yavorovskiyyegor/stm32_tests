/*
Receive signals:
1) Command to change some variable value (changed_val) | Value_MSB | Value_LSB
2) Command to switch LED
Send signals:
1) Each 10 seconds send counter value
2) Each button press send current variable value (changed_value)
*/

#include "stm32f407xx.h"

#define HSI_Clock_Freq 16000000

volatile uint8_t regime = 0;
volatile uint8_t button_pressed = 0;
volatile uint16_t changed_value = 0;

void UARTConfig() {
	
}

void GPIOConfig() { 
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
	GPIOA->MODER |= GPIO_MODER_MODE1_1; // PA1 - TIM5_CH2
	GPIOA->MODER |= GPIO_MODER_MODE0_1; // PA0 - TIM5_CH1
	GPIOA->MODER |= GPIO_MODER_MODE2_0 | GPIO_MODER_MODE3_0;
	GPIOA->PUPDR |= GPIO_PUPDR_PUPD5_0;
	GPIOA->AFR[0] |= GPIO_AFRL_AFSEL0_1 | GPIO_AFRL_AFSEL1_1; // datasheet table 9
}

void TIM2Config() { // handle LEDs
	RCC->APB1ENR |= RCC_APB1ENR_TIM2EN;
	TIM2->ARR = 999;
	TIM2->PSC = HSI_Clock_Freq/1000 - 1;
	TIM2->CR1 |= TIM_CR1_URS;
	TIM2->DIER |= TIM_DIER_UIE;
	TIM2->CR1 |= TIM_CR1_CEN;
	NVIC->ISER[0] |= 1 << 28;
}

void TIM4Config() { // handle buttons
	RCC->APB1ENR |= RCC_APB1ENR_TIM4EN;
	TIM4->ARR = 49;
	TIM4->PSC = HSI_Clock_Freq/1000 - 1;
	TIM4->CR1 |= TIM_CR1_URS; // interrupt only on counter over/underflow
	TIM4->DIER |= TIM_DIER_UIE; // update interruppt enable
	NVIC->ISER[0] |= 1 << 30; // NVIC info - STM32_Programming_Guide, Chapter 4
}

void EXTIConfig() {
	RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;
	SYSCFG->EXTICR[1] |= SYSCFG_EXTICR2_EXTI5_PA;
	EXTI->FTSR |= EXTI_FTSR_TR5;
	EXTI->IMR |= EXTI_IMR_MR5;
	NVIC->ISER[0] |= 1 << 23;
}

void EXTI9_5_IRQHandler(void) {
	//NVIC->ISER[0] ^= 1 << 23;
	EXTI->PR |= EXTI_PR_PR5; // to clear pending register have to write 1 there!
	EXTI->IMR &= ~EXTI_IMR_MR5;
	TIM4->CR1 |= TIM_CR1_CEN;
}

void TIM4_IRQHandler(void) { // handle buttons
	// this approach allows to react only to one button at a time
	static uint8_t buttons_counter = 0;
	if (~(GPIOA->IDR >> 5) & 0x1) {
		buttons_counter += (buttons_counter <= 100) ? 1 : -60;
		if (buttons_counter == 40) {
			regime ^= 0x4;
			if (regime & 0x4) {
				GPIOA->BSRR = (regime & 0x3) << 2;
			}
		}
	} else {
		if (buttons_counter) {
			if (buttons_counter < 40) {
				regime = (0b100 & regime) | ((regime + 1) & 0b11);
			}
			if (regime & 0b100) {
				GPIOA->BSRR = (regime & 0b11) << 2;
			}
			GPIOA->BSRR = (~regime & 0b11) << 2 << 16;
			buttons_counter = 0;
		}
		TIM4->CR1 &= ~TIM_CR1_CEN;
		TIM4->CNT = 0;
		EXTI->IMR |= EXTI_IMR_MR5;
		//NVIC->ISER[0] |= 1 << 23; 
	}
	TIM4->SR &= ~TIM_SR_UIF;	
}

void TIM2_IRQHandler(void) {	
	static uint8_t seconds_counter = 0;
	static uint8_t increase_duty = 1;

	switch (seconds_counter) { // lights up a LED with different intencity
		case 3:
			// turn on PWM;
			if (increase_duty) {
				TIM5->CCR2 += 1;
			} else {
				TIM5->CCR2 -= 1;
			}
			if (TIM5->CCR2 >= 98 || TIM5->CCR2 == 0) {
				increase_duty = !increase_duty;
			}
			TIM5->CCER |= TIM_CCER_CC2E; // enables TIM5_CH2 output PA1
			seconds_counter++;
			break;
		case 6:
			seconds_counter = 0;
			// turn off PWM
			TIM5->CCER &= ~TIM_CCER_CC2E; // disables TIM5_CH2 output PA1
			break;
		default:
			seconds_counter++;
	}

	if (!(regime & NO_BLINK)) { // if blink mode is active
		if (regime & FIRST_LED_ON && seconds_counter % 2) {
			GPIOA->BSRR = 1 << 2;
		} else {
			GPIOA->BSRR = 1 << 18;
		}
		if (regime & SECOND_LED_ON && !(seconds_counter % 3)) {
			GPIOA->BSRR = 1 << 3;
		} else {
			GPIOA->BSRR = 1 << 19;
		}
	}
	TIM2->SR &= ~TIM_SR_UIF;
}

int main(void) {

	volatile int i = 0;

	i++;

	GPIOConfig();

	TIM2Config();

	TIM4Config();

	TIM5Config();

	EXTIConfig();

	while (1) {
	}

	return 0;
}
