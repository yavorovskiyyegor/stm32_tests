/*
 * It is just simple and pure template project
 * It does absolutely nothing and indicates that toolchain
 * is installed correctly.
 */

#include "stm32f407xx.h"

// Add some comments to test git behaviour

int main(void)
{
        volatile int i;

        RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN; // enables GPIOD peripheral clock	

        GPIOD->MODER |= GPIO_MODER_MODE14_0 | GPIO_MODER_MODE13_0; // set mode to output

	GPIOA->MODER |= ~GPIO_MODER_MODE0; // set A0 port as input

        GPIOD->OTYPER &= ~GPIO_OTYPER_OT14; // set ouput type to open drain

	GPIOA->PUPDR &= GPIO_PUPDR_PUPD0_1; // set pull up to ground (?)

        GPIOD->OSPEEDR &= ~GPIO_OSPEEDR_OSPEED14; // set output speed to low (?)


        while (1) {
		

                GPIOD->BSRR |= GPIO_BSRR_BS14;

                for(i = 0; i < 1000000; i++) {
			if (GPIOA->IDR &= GPIO_IDR_ID0)
				GPIOD->BSRR |= GPIO_BSRR_BS_13;
			else
				GPIOD->BSRR |= GPIO_BSRR_BS_13;
         	}
                GPIOD->BSRR |= GPIO_BSRR_BR14;

                for(i = 0; i < 1000000; i++) {
                        if (GPIOA->IDR &= GPIO_IDR_ID0)
                                GPIOD->BSRR |= GPIO_BSRR_BS_13;
                        else
                                GPIOD->BSRR |= GPIO_BSRR_BS_13;
                }
        }
        return 0;
}
