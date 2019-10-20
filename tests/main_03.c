/*
 * It is just simple and pure template project
 * It does absolutely nothing and indicates that toolchain
 * is installed correctly.
 */

#include "stm32f407xx.h"

volatile int nums_array[10] = {0b1110111, // 0
				0b1000100, // 1
				0b0111110, // 2
				0b1101110, // 3
				0b1001101, // 4
				0b1101011, // 5
				0b1111011, // 6
				0b1000110, // 7
				0b1111111, // 8
				0b1101111}; // 9

volatile int curr_num = 0;

int main(void)
{
        volatile int i;

        RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN | RCC_AHB1ENR_GPIOAEN; // enables GPIOD peripheral clock	

        GPIOD->MODER |= GPIO_MODER_MODE14_0 | GPIO_MODER_MODE13_0 // LEDs on board
			| GPIO_MODER_MODE0_0 | GPIO_MODER_MODE1_0 // 
			| GPIO_MODER_MODE2_0 | GPIO_MODER_MODE3_0
			| GPIO_MODER_MODE4_0 | GPIO_MODER_MODE5_0
			| GPIO_MODER_MODE6_0 | GPIO_MODER_MODE7_0; // set mode to output

	GPIOD->BSRR = nums_array[curr_num];
	
	// GPIOA->MODER &= ~GPIO_MODER_MODE0; // set A0 port as input - useless instruction they are initially outputs

       // GPIOD->OTYPER &= ~GPIO_OTYPER_OT14; // set ouput type to push-pull - useless instruction they are such by default

	//GPIOA->PUPDR &= GPIO_PUPDR_PUPD0_1; // set pull up to ground (?) - wrong, no pull-up/pull-down

        //GPIOD->OSPEEDR &= ~GPIO_OSPEEDR_OSPEED14; // set output speed to low (?)


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

		GPIOD->BSRR = nums_array[curr_num] << 16;		

		curr_num = (curr_num >= 9) ? 0 : ++curr_num;

		GPIOD->BSRR = nums_array[curr_num];

        }
        return 0;
}
