#include "stm32f407xx.h"

#define HSI_Clock_Freq 16000000

#define FIRST_LED_ON 0x1
#define SECOND_LED_ON 0x2
#define NO_BLINK 0x4

volatile uint8_t regime = 0;
volatile uint8_t button_pressed = 0;

void GPIOConfig() {
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
	GPIOA->MODER |= GPIO_MODER_MODE1_1;
	GPIOA->MODER |= GPIO_MODER_MODE2_0 | GPIO_MODER_MODE3_0;
	GPIOA->PUPDR |= GPIO_PUPDR_PUPD5_0;
}

void TIM2Config() { // handle buttons and LEDs

}

void TIM4Config() {
	
}

void TIM5Config() { // handle PWM

}

void EXTIConfig() {
	button_pressed = (EXTI->PR >> 5) & 0x1;
	NVIC->ISER[0] ^= 1 << 23;
	EXTI->PR &= ~EXTI_PR_PR5;

}

void EXTI9_5_IRQHandler(void) {
	
}

void TIM4_IRQHandler(void) { // handle buttons
	
}

void TIM2_IRQHandler(void) {	
	static uint16_t ms_counter = 0;
	static uint8_t buttons_counter = 0;

	switch (seconds_counter) {
		case 10:
			// turn on PWM
			break;
		case 12:
			seconds_counter = 0;
			// turn off PWM
			break;
		default:
			seconds_counter++;
	}

	if (!(regime & NO_BLINK)) {
		if (regime & FIRST_LED_ON && seconds_counter % 2) {
			GPIOA->BSRR |= (GPIOA->ODR & GPIO
		}
	}
}

int main(void) {

	GPIOConfig();

	TIM2Config();

	TIM4Config();

	TIM5Config();

	EXTIConfig();

	while (1) {
	}

	return 0;
}
