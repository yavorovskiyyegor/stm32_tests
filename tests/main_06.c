/*
 * It is just simple and pure template project
 * It does absolutely nothing and indicates that toolchain
 * is installed correctly.
 */

#include "stm32f407xx.h" // GPIO
#include "core_cm4.h" // SysTick

#define HSI_Clock_Freq 16000000

volatile uint8_t nums[10] = {0b1110111, // 0
                                0b1000100, // 1
                                0b0111110, // 2
                                0b1101110, // 3
                                0b1001101, // 4
                                0b1101011, // 5
                                0b1111011, // 6
                                0b1000110, // 7
                                0b1111111, // 8
                                0b1101111}; // 9

struct clock {
	uint8_t seconds;
	uint8_t minutes;
	uint8_t hours;
	uint8_t regime;
};

volatile struct clock my_clock = {0, 0, 0, 0};

void Tim2Config(void) { // clock timer
	RCC->APB1ENR |= RCC_APB1ENR_TIM2EN; // turn on TIM2 clock
	TIM2->ARR = 999; //  must have 1 tick per second;
	TIM2->PSC = HSI_Clock_Freq / 1000; // clock is 16 MHz, CKD_1 divides it by 4 -> 4 MHz, divides it by PSC -> 1 kHz
	TIM2->CR1 |= TIM_CR1_URS; // only counter overflow undeflow enables interrupt
	TIM2->CR1 |= TIM_CR1_CEN; // enables clock
	TIM2->DIER |= TIM_DIER_UIE; //enables interrupt	
	NVIC->ISER[0] |= 1 << 28;
}

void Tim3Config(void) {
	RCC->APB1ENR |= RCC_APB1ENR_TIM3EN;
	TIM3->ARR = 6;
	TIM3->PSC = HSI_Clock_Freq / 1000;
	TIM3->CR1 |= TIM_CR1_URS;
	TIM3->CR1 |= TIM_CR1_CEN;
	TIM3->DIER |= TIM_DIER_UIE;
	NVIC->ISER[0] |= 1 << 29;
}

void TIM3_IRQHandler(void) {
	static uint8_t current_num = 0;
	GPIOE->BSRR = 0b111111 << 16;
	GPIOD->BSRR = 0b11111111 << 16;
	switch (current_num) {
		case 0:
			GPIOD->BSRR = nums[my_clock.seconds % 10];
			GPIOE->BSRR = 0b1;
			break;
		case 1:
			GPIOD->BSRR = nums[my_clock.seconds / 10];
			GPIOE->BSRR = 0b10;
		case 2:
			GPIOD->BSRR = nums[my_clock.minutes % 10] | 128;
			GPIOE->BSRR = 0b100;
			break;
		case 3:
			GPIOD->BSRR = nums[my_clock.minutes / 10];
			GPIOE->BSRR = 0b1000;
			break;
		case 4:
			GPIOD->BSRR = nums[my_clock.hours % 10] | 128;
			GPIOE->BSRR = 0b10000;
			break;
		case 5:
			GPIOD->BSRR = nums[my_clock.hours / 10];
			GPIOE->BSRR = 0b100000;
			break; 
			
	}
	current_num = (current_num < 5) ? ++current_num : 0;
	TIM3->SR &= ~TIM_SR_UIF;	
}

void TIM2_IRQHandler(void) {
	my_clock.seconds = (my_clock.seconds < 59) ? ++(my_clock.seconds) : 0;
	if (my_clock.seconds == 0) {
		my_clock.minutes = (my_clock.minutes < 59) ? ++(my_clock.minutes) : 0;
	}
	if (my_clock.minutes == 0 && my_clock.seconds == 0) {
		my_clock.hours = (my_clock.hours < 23) ? ++(my_clock.hours) : 0;
	}
	TIM2->SR &= ~TIM_SR_UIF;
}

void GPIO_Config(void) {

	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN | RCC_AHB1ENR_GPIOEEN; // enables GPIOD peripheral clock    

        GPIOE->MODER |= GPIO_MODER_MODE0_0 | GPIO_MODER_MODE1_0 | GPIO_MODER_MODE3_0
			GPIO_MODER_MODE3_0 | GPIO_MODER_MODE4_0 | GPIO_MODER_MODE5_0; // alternative function mode

	GPIOD->MODER |=   GPIO_MODER_MODE0_0 | GPIO_MODER_MODE1_0 
                        | GPIO_MODER_MODE2_0 | GPIO_MODER_MODE3_0
                        | GPIO_MODER_MODE4_0 | GPIO_MODER_MODE5_0
                        | GPIO_MODER_MODE6_0 | GPIO_MODER_MODE7_0; // set mode to output

}

int main(void) {

	GPIO_Config();

	Tim2Config();

	Tim3Config();

	while (1) {

        }

        return 0;
}
