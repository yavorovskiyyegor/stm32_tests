/*
 * It is just simple and pure template project
 * It does absolutely nothing and indicates that toolchain
 * is installed correctly.
 */

#include "stm32f407xx.h" // GPIO
#include "core_cm4.h" // SysTick

#define HSI_Clock_Freq 16000000
#define RUNNING_LINE

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

volatile uint8_t letters[26] = {0b1011111, // A 
				0b1111001, // b
				0b0110011, // C
				0b1111100, // d 
				0b0111011, // E
				0b0011011, // F
				0b1110011, // G
				0b1011001, // h
				0b0010001, // I
				0b1110100, // J
				0b1011011, // k
				0b0110001, // L
				0b1011010, // M
				0b1011000, // n
				0b1111000, // o
				0b0011111, // P
				0b1001111, // q
				0b0010011, // r
				0b1101011, // S
				0b0111001, // t
				0b1110101, // U
				0b1110000, // v
				0b0101101, // W
				0b1011101, // X
				0b1101101, // Y
				0b0111110}; // Z

struct clock {
	uint8_t seconds;
	uint8_t minutes;
	uint8_t hours;
	uint8_t hours_12;
	uint8_t minutes_alm;
	uint8_t hours_alm;
	uint8_t hours_12_alm;
	uint8_t regime;
	
	// regime:
	// bit 0 - time / alarm
	// bit 1 - 24 / 12
	// bit 2 - watch / set
	// bit 3 - hours blink
	// bit 4 - alarm is on! (was minutes blink)
	// bit 5 - alarm
	// bit 6 - hours
	// bit 7 - show_dsp
};

volatile struct clock my_clock = {0, 0, 0, 12, 0, 0, 12, 0};

volatile uint8_t ch_counter = 0;

volatile uint16_t str_speed = 500; // ms for one digit

volatile char str[] = " Danfoss";

volatile uint8_t str_len = 8;

uint8_t ch2dsp(char *str, uint8_t i) {
	char ch = 0;
	if (ch_counter < i || ch_counter - i >= str_len) {
		return 0;
	}
	ch = str[ch_counter - i];
	if (ch < 48 || (ch > 57 && ch < 65) || (ch > 90 && ch < 97) || ch > 122) {
		return 0;
	}
	if (ch >= 48 && ch <= 57) { // 0-9
		return nums[ch - 48];	
	}
	if (ch >= 65 && ch <= 90) { // a-z
		return letters[ch - 65];
	}
	if (ch >= 97 && ch <= 122) { // A-Z
		return letters[ch - 97];
	}
}

void Tim2Config(void) { // clock timer
	RCC->APB1ENR |= RCC_APB1ENR_TIM2EN; // turn on TIM2 clock
	TIM2->ARR = 999; //  must have 1 tick per second;
	TIM2->PSC = HSI_Clock_Freq / 1000; // clock is 16 MHz, CKD_1 divides it by 4 -> 4 MHz, divides it by PSC -> 1 kHz
	TIM2->CR1 |= TIM_CR1_URS; // only counter overflow undeflow enables interrupt
	TIM2->CR1 |= TIM_CR1_CEN; // enables clock
	TIM2->DIER |= TIM_DIER_UIE; //enables interrupt	
	NVIC->ISER[0] |= 1 << 28;
}

void Tim3Config(void) { // display timer
	RCC->APB1ENR |= RCC_APB1ENR_TIM3EN;
	TIM3->ARR = 6;
	TIM3->PSC = HSI_Clock_Freq / 1000;
	TIM3->CR1 |= TIM_CR1_URS;
	TIM3->CR1 |= TIM_CR1_CEN;
	TIM3->DIER |= TIM_DIER_UIE;
	NVIC->ISER[0] |= 1 << 29;
}

void TIM4Config(void) { // buttons timer
	RCC->APB1ENR |= RCC_APB1ENR_TIM4EN;
	TIM4->ARR = 49;
	TIM4->PSC = HSI_CLock_Freq / 1000;
	TIM4->CR1 |= TIM_CR1_URS;
	

	NVIC->ISER[0] |= 1 << 30;
}

void TIM5Config(void) { // Sound PWM
	RCC->APB1ENR | RCC_APB1ENR_TIM5EN;
	TIM5->ARR = ;
	TIM5->PSC = HSI_Clock_Freq / ;
	TIM5->CR1 |= TIM_CR1_URS;

	NVIC->ISER[0] |= 1 << 31;
}

void TIM3_IRQHandler(void) {
	static uint32_t ms_counter = 0;
	static uint8_t current_num = 0;
	GPIOE->BSRR = 0b111111 << 16;
	GPIOD->BSRR = 0b11111111 << 16;
	if (my_clock.regime >> 7) {
		current_num = 0;
        	TIM3->SR &= ~TIM_SR_UIF;
		return;
	}
	#ifdef RUNNING_LINE
	switch (current_num) {
		case 0:
			GPIOD->BSRR = ch2dsp(str, 0);
			GPIOE->BSRR = 0b1;
			break;
		case 1:
			GPIOD->BSRR = ch2dsp(str, 1);
            GPIOE->BSRR = 0b10;
			break;
		case 2:
			GPIOD->BSRR = ch2dsp(str, 2);
            GPIOE->BSRR = 0b100;
			break;
		case 3:
			GPIOD->BSRR = ch2dsp(str, 3);
            GPIOE->BSRR = 0b1000;
			break;
		case 4:
			GPIOD->BSRR = ch2dsp(str, 4);
            GPIOE->BSRR = 0b10000;
			break;
		case 5: 
			GPIOD->BSRR = ch2dsp(str, 5);
            GPIOE->BSRR = 0b100000;
			break;
	}	
	ms_counter = (ms_counter < str_speed * (str_len + 6)) ? ms_counter + 6 : 0;
        ch_counter = ms_counter / str_speed;
	#else
	switch (current_num) {
		case 0:
			if (my_clock.regime & 0b1) {
				GPIOD->BSRR = (uint8_t) (letters[23] * (my_clock.regime >> 6 & 0b1));
			} else {
				GPIOD->BSRR = nums[my_clock.seconds % 10];
			}	
			GPIOE->BSRR = 0b1;
			break;
		case 1:
			if (my_clock.regime & 0b1) {
                                GPIOD->BSRR = (uint8_t) (letters[0] * (my_clock.regime >> 5 & 0b1));
                        } else {
				GPIOD->BSRR = nums[my_clock.seconds / 10];
			}
			GPIOE->BSRR = 0b10;
			break;
		case 2:
			if (my_clock.regime & 0b1) {
				GPIOD->BSRR = nums[my_clock.minutes_alm % 10] | 128;
			} else {
				GPIOD->BSRR = nums[my_clock.minutes % 10] | 128;
			}
			if (!(my_clocks.regime & 0b10000 && ms_counter < blink_period / 2)) {
                                GPIOE->BSRR = 0b100;
                        }
			break;
		case 3:
			if (my_clock.regime & 0b1) {
                                GPIOD->BSRR = nums[my_clock.minutes_alm / 10];
                        } else {
                                GPIOD->BSRR = nums[my_clock.minutes / 10];
                        }
			if (!(my_clocks.regime & 0b10000 && ms_counter < blink_period / 2)) {
                                GPIOE->BSRR = 0b1000;
                        }
			break;
		case 4:
			if (my_clock.regime & 0b1) {
                                GPIOD->BSRR = nums[((my_clock.regime & 0b10) ? my_clocks.hours_12_alm : my_clocks.hours_alm) % 10] | 128;
                        } else {
                                GPIOD->BSRR = nums[((my_clock.regime & 0b10) ? my_clocks.hours_12 : my_clocks.hours) % 10] | 128;
                        }
			if (!(my_clocks.regime & 0b1000 && ms_counter < blink_period / 2)) {
				GPIOE->BSRR = 0b10000;
			}
			break;
		case 5:
			if (my_clock.regime & 0b1) {
                                GPIOD->BSRR = nums[((my_clock.regime & 0b10) ? my_clocks.hours_12_alm : my_clocks.hours_alm) / 10];
                        } else {
				
                                GPIOD->BSRR = nums[((my_clock.regime & 0b10) ? my_clocks.hours_12 : my_clocks.hours) / 10];
                        }
			if (!(my_clocks.regime & 0b1000 && ms_counter < blink_period / 2)) {
                                GPIOE->BSRR = 0b100000;
                        }
			break; 
			
	}
	if (my_clocks.regime & 0b100) {
		ms_counter = (ms_counter < blink_period) ? ms_counter + 6 : 0;
	} else {
		ms_counter = 0;
	}
	#endif
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
		my_clock.hours_12 = (my_clock.hours_12 < 12) ? ++(my_clock.hours_12) : 1;
	}
	if (my_clock.hours == my_clock.hours_alm && my_clock.minutes == my_clock.minutes_alm && my_clock.seconds == 0 && my_clock.regime & 0b010000) {
		my_clock.regime |= 0b010000;
		// start alarm
		// if display is off - turn on display
	}
	TIM2->SR &= ~TIM_SR_UIF;
}

void GPIO_Config(void) {

	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN | RCC_AHB1ENR_GPIODEN | RCC_AHB1ENR_GPIOEEN; // enables GPIOD peripheral clock    
	
	GPIOA->PUPDR |= 
	
        GPIOE->MODER |=   GPIO_MODER_MODE0_0 | GPIO_MODER_MODE1_0 | GPIO_MODER_MODE2_0
			| GPIO_MODER_MODE3_0 | GPIO_MODER_MODE4_0 | GPIO_MODER_MODE5_0; // alternative function mode

	GPIOD->MODER |=   GPIO_MODER_MODE0_0 | GPIO_MODER_MODE1_0 
                        | GPIO_MODER_MODE2_0 | GPIO_MODER_MODE3_0
                        | GPIO_MODER_MODE4_0 | GPIO_MODER_MODE5_0
                        | GPIO_MODER_MODE6_0 | GPIO_MODER_MODE7_0; // set mode to output

}

void EXTI_Config(void) {
	RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;
	EXTI->
}

void (void) {
	TIM4->CNT = 0;
	TIM4->CR1 |= TIM_CR1_CEN; // enables clock
        TIM4->DIER |= TIM_DIER_UIE; //enables interrupt 
	// fordib button interrupt
	// set flag - which button was pressed
	// start timer
}

void TIM4_IRQHandler(void) { // 50 ms
	static uint8_t buttons_ms_counter = 0;
	static uint8_t code_counter = 4;
	if () { // if display screen is off
		// any button turn dispay on
	} else if () { // if allarm is active
		switch() {
			case 1:
				if (!buttons_ms_counter) {
					code_counter = (code_counter == 4) ? --code_counter : 4;
				}
				break;
			case 2:
				if (!buttons_ms_counter) {
					code_counter = (code_counter == 2) ? --code_counter : 4;
				}
				break;
			case 4:
				if (!buttons_ms_counter) { 
					code_counter = (code_counter == 1) ? --code_counter : 4;
				}
				break;
			case 8:
				if (!buttons_ms_counter) {	
					code_counter = (code_counter == 3) ? --code_counter : 4;
				}
				break;
			default:
				buttons_ms_timer = 0;
                                TIM4->SR &= ~TIM_SR_UIF;
                                // turn off timer
                                // enable external interrupts
                                return;

				
		}	
	} else {
		// compare current state with state on interrupt
		switch () {
			case 1:	// set button was pressed
				if (!buttons_ms_counter) {   
					if (my_clocks.regime & 0b100) { // if set mode
						my_clocks.regime ^= 0b11000; // switch parameter to set
					} else { // if watch 
						my_clocks.regime ^= 0b1100; // on set mode
					}
				}
				break;	
			case 2: // mode button was pressed
				if (!buttons_ms_counter) {
					if (my_clocks.regime & 0b100) { // if is set
						my_clocks.regime &= 0b11100011; // off set mode
					} else { // if watch 
						my_clocks.regime ^= 0b1; // switch alarm/time
					}
				}
				break;
			case 4: // plus button was pressed
				if (!(my_clocks.regime & 0b100)) { // if watch
					if (!buttons_ms_counter) { 
                                		if (my_clocks.regime & 0b1) {
                                        		my_clocks.regime ^= 0b100000;
                                		} else {
                                        		my_clocks.regime ^= 0b10;
                                		}
					}
                        	} else { // if set
					if (!buttons_ms_counter || (buttons_ms_counter >= 20 && !(buttons_ms_counter % 2))) {
						if (my_clocks.regime & 0b1) { // alarm
							if (my_clocks.regime & 0b1000) { // if hours
								my_clock.hours_alm = (my_clock.hours_alm < 23) ? ++(my_clock.hours_alm) : 0;
				        	        	my_clock.hours_12_alm = (my_clock.hours_12_alm < 12) ? ++(my_clock.hours_12_alm) : 1;
							} else { // if minutes
								my_clock.minutes_alm = (my_clock.minutes_alm < 59) ? ++(my_clock.minutes_alm) : 0;
							}
						} else { // time
							if (my_clocks.regime & 0b1000) { // if hours
                                	        	        my_clock.hours = (my_clock.hours < 23) ? ++(my_clock.hours) : 0;
                        	                	        my_clock.hours_12 = (my_clock.hours_12 < 12) ? ++(my_clock.hours_12) : 1;
                	                        	} else { // if minutes
                                        	        my_clock.minutes = (my_clock.minutes < 59) ? ++(my_clock.minutes) : 0;
        	                                	}
						}
					}
				} 
				break;
			case 8: // minus button was pressed
				if (!(my_clocks.regime & 0b100) && !buttons_ms_counter) { // if watch 
					if (my_clocks.regime & 0b1) {
						my_clocks.regime ^= 0b1000000;
					} else {
						my_clocks.regime ^= 0b10000000;
					}
				} else { // if set
					if (!buttons_ms_counter || (buttons_ms_counter >= 20 && !(buttons_ms_counter % 2))) {
	                                        if (my_clocks.regime & 0b1) { // alarm
	                                                if (my_clocks.regime & 0b1000) { // if hours
                                                	        my_clock.hours_alm = (my_clock.hours_alm > 0) ? --(my_clock.hours_alm) : 23;
                                        	                my_clock.hours_12_alm = (my_clock.hours_12_alm > 1) ? --(my_clock.hours_12_alm) : 12;
                                	                } else { // if minutes
                        	                                my_clock.minutes_alm = (my_clock.minutes_alm > 0) ? --(my_clock.minutes_alm) : 59;
                	                                }
        	                                } else { // time
	                                                if (my_clocks.regime & 0b1000) { // if hours
                                                        	my_clock.hours = (my_clock.hours > 0) ? --(my_clock.hours) : 23;
                                                	        my_clock.hours_12 = (my_clock.hours_12 > 1) ? --(my_clock.hours_12) : 12;
                                        	        } else { // if minutes
                                	                        my_clock.minutes = (my_clock.minutes > 0) ? --(my_clock.minutes) : 59;
                        	                        }
                	                        }
        	                        }	
				}
				break;
			default:
				buttons_ms_timer = 0;
				TIM4->SR &= ~TIM_SR_UIF;
				// turn off timer
				// enable external interrupts
				return;
		}
	}
	TIM4->SR &= ~TIM_SR_UIF;
	buttons_ms_counter = (buttons_ms_counter < 255) ? ++buttons_ms_counter : 20;
}

int main(void) {

	GPIO_Config();

	Tim2Config();

	Tim3Config();

	while (1) {

        }

        return 0;
}
