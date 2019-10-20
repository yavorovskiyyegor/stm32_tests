/*
 * It is just simple and pure template project
 * It does absolutely nothing and indicates that toolchain
 * is installed correctly.
 */

#include "stm32f407xx.h" // GPIO
#include "core_cm4.h" // SysTick

#define MAX_Duty 10

void SysTickConfig(void) {
	SysTick->LOAD |= 2000/MAX_Duty - 1;
	SysTick->VAL |= 2000/MAX_Duty - 1;
	SysTick->CTRL |= SysTick_CTRL_TICKINT_Msk | SysTick_CTRL_ENABLE_Msk;
}

void Tim2Config(void) {
	RCC->APB1ENR |= RCC_APB1ENR_TIM2EN; // turn on TIM2 clock
	//TIM2->CR1 |= TIM_CR1_ARPE; // enables preload register
	//TIM2->CR1 |= TIM_CR1_CKD_1; // divide clock signal by 4
	TIM2->ARR = 99; //  must have 1 tick per second;
	TIM2->PSC = 159; // clock is 16 MHz, CKD_1 divides it by 4 -> 4 MHz, divides it by PSC -> 1 kHz
	TIM2->CR1 |= TIM_CR1_URS; // only counter overflow undeflow enables interrupt
	TIM2->CR1 |= TIM_CR1_CEN; // enables clock
	TIM2->DIER |= TIM_DIER_UIE; //enables interrupt	
	// PWM Config
	TIM2->CCR1 = 0;
	TIM2->CCMR1 |= (0b110 << TIM_CCMR1_OC1M_Pos); // PWM1_Mode
	TIM2->CR1 |= TIM_CR1_ARPE; // enables preload register
	TIM2->CCER |= TIM_CCER_CC1E;
	NVIC->ISER[0] |= 1 << 28;
}

void TIM2_IRQHandler(void) {
	static int TIM2_counter = 0;
	static int brightness = 0;
	static int up = 1;
	// GPIOD->BSRR = (GPIOD->ODR & GPIO_ODR_OD15) ? GPIO_BSRR_BR15 : GPIO_BSRR_BS15;
	switch (TIM2_counter) {
		case 0:
			GPIOD->BSRR = GPIO_BSRR_BS15;
			break;
		case 499:
			GPIOD->BSRR = GPIO_BSRR_BR15;
			break;
	}
	if (TIM2_counter % 40 == 39) {
		brightness = (up) ? brightness + 1 : brightness - 1;
	}
	switch (brightness) {
		case 0:
			up = 1;
			break;
		case 99:
			up = 0;
			break;
	
	}
	TIM2->CCR1 = brightness;
	TIM2_counter = (TIM2_counter < 999) ? TIM2_counter + 1 : 0;		
	//TIM2->CCR1 = TIM2_counter / 10;
	TIM2->SR &= ~TIM_SR_UIF;
}

volatile int ms_counter = 0;

volatile int PD8_Duty = 0;

volatile int PD9_Duty = MAX_Duty;

volatile int PD9_Duty_Up = 0;

volatile int PD8_Duty_Up = 1;

volatile int duty_counter = 0;

void SysTick_Handler(void) {
	//static volatile int ms_counter = 0;

	if (ms_counter == 0) {
                GPIOD->BSRR = GPIO_BSRR_BR12;
        }
	if (ms_counter == 500 * MAX_Duty) {
		GPIOD->BSRR = GPIO_BSRR_BS12;
	}
	if (ms_counter == 500 * MAX_Duty - 1 || ms_counter == 1000 * MAX_Duty - 1) {
		if (PD9_Duty_Up) {
			PD9_Duty += 1;
			PD9_Duty_Up = (PD9_Duty < MAX_Duty) ? 1 : 0;
		} else {
			PD9_Duty -= 1;
			PD9_Duty_Up = (PD9_Duty > 0) ? 0 : 1;
		}
		if (PD8_Duty_Up) {
			PD8_Duty += 1;
			PD8_Duty_Up = (PD8_Duty < MAX_Duty) ? 1 : 0;
		} else {
			PD8_Duty -= 1;
			PD8_Duty_Up = (PD8_Duty > 0) ? 0 : 1;
		}
		
        }
	ms_counter++;
	if (ms_counter == 1000 * MAX_Duty) {
		ms_counter = 0;
	}
	if (duty_counter == PD9_Duty) {
		GPIOD->BSRR = GPIO_BSRR_BR9;
	}
	if (duty_counter == PD8_Duty) {
		GPIOD->BSRR = GPIO_BSRR_BR8;
	}
	if (duty_counter == 0 && PD8_Duty != 0) {
		GPIOD->BSRR = GPIO_BSRR_BS8;
	}
	if (duty_counter == 0 && PD9_Duty != 0) {
		GPIOD->BSRR = GPIO_BSRR_BS9;
	}
	duty_counter++;
	if (duty_counter == MAX_Duty) {
		duty_counter = 0;
	}

}

void GPIO_Config(void) {

	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN | RCC_AHB1ENR_GPIOAEN; // enables GPIOD peripheral clock    

        GPIOA->MODER |= GPIO_MODER_MODE15_1; // alternative function mode

	GPIOA->AFR[1] |= GPIO_AFRH_AFSEL15_0; // AF0_function turn on

	GPIOD->MODER |= GPIO_MODER_MODE15_0; // configure blue led pin to output;

	GPIOD->MODER |= GPIO_MODER_MODE14_0 | GPIO_MODER_MODE13_0 | GPIO_MODER_MODE12_0 | GPIO_MODER_MODE8_0 | GPIO_MODER_MODE9_0; // set mode to output

        // GPIOA->MODER &= ~GPIO_MODER_MODE0; // set A0 port as input - useless instruction they are initially outputs

       // GPIOD->OTYPER &= ~GPIO_OTYPER_OT14; // set ouput type to push-pull - useless instruction they are such by default

        //GPIOA->PUPDR &= GPIO_PUPDR_PUPD0_1; // set pull up to ground (?) - wrong, no pull-up/pull-down

        //GPIOD->OSPEEDR &= ~GPIO_OSPEEDR_OSPEED14; // set output speed to low (?)
}

int main(void) {

        volatile int i;

	GPIO_Config();

        SysTickConfig();

	Tim2Config();

	while (1) {
		

                GPIOD->BSRR = GPIO_BSRR_BS14;

                for(i = 0; i < 1000000; i++) {
			if (GPIOA->IDR & GPIO_IDR_ID0)
				GPIOD->BSRR = GPIO_BSRR_BS13;
			else
				GPIOD->BSRR = GPIO_BSRR_BR13;
         	}
                GPIOD->BSRR = GPIO_BSRR_BR14;

                for(i = 0; i < 1000000; i++) {
                        if (GPIOA->IDR & GPIO_IDR_ID0)
                                GPIOD->BSRR = GPIO_BSRR_BS13;
                        else
                                GPIOD->BSRR = GPIO_BSRR_BR13;
                }
        }
        return 0;
}
