/*
 * It is just simple and pure template project
 * It does absolutely nothing and indicates that toolchain
 * is installed correctly.
 */

#include "stm32f407xx.h" // GPIO
#include "core_cm4.h" // SysTick

void SysTickConfig(void) {
	SysTick->LOAD |= 1999;
	SysTick->VAL |= 1999;
	SysTick->CTRL |= SysTick_CTRL_TICKINT_Msk | SysTick_CTRL_ENABLE_Msk;
}

volatile int ms_counter = 0;

void SysTick_Handler(void) {
	//static volatile int ms_counter = 0;

	if (ms_counter == 0) {
                GPIOD->BSRR = GPIO_BSRR_BR12;
        }
	if (ms_counter == 500) {
                GPIOD->BSRR = GPIO_BSRR_BS12;
        }
	ms_counter++;
	if (ms_counter == 1000) {
		ms_counter = 0;
	}
}

void GPIO_Config(void) {

	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN | RCC_AHB1ENR_GPIOAEN; // enables GPIOD peripheral clock    

        GPIOD->MODER |= GPIO_MODER_MODE14_0 | GPIO_MODER_MODE13_0 | GPIO_MODER_MODE12_0; // set mode to output

        // GPIOA->MODER &= ~GPIO_MODER_MODE0; // set A0 port as input - useless instruction they are initially outputs

       // GPIOD->OTYPER &= ~GPIO_OTYPER_OT14; // set ouput type to push-pull - useless instruction they are such by default

        //GPIOA->PUPDR &= GPIO_PUPDR_PUPD0_1; // set pull up to ground (?) - wrong, no pull-up/pull-down

        //GPIOD->OSPEEDR &= ~GPIO_OSPEEDR_OSPEED14; // set output speed to low (?)
}

int main(void)
{
        volatile int i;

	GPIO_Config();

        SysTickConfig();

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
