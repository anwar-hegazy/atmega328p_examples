// Program for ATmega328 P to allow control of WS2812B LEDs
// Clock source is intended to be an external 16MHz ceramic oscillator

#include <avr/io.h>
#include <avr/interrupt.h>

#define F_CPU	16000000UL	// CPU frequency of 16MHz
#define COUNT_MAX	61	// To give us a transition every second

volatile uint8_t counter;

ISR(TIMER2_OVF_vect){
	counter++;
	if (counter == COUNT_MAX){
		counter = 0;
		PORTD ^= (1 << PORTD3);
	}
}

int main(){
	DDRD |= (1 << DDD3);	// Set D3 (OC2B) as output
	PORTD &= ~(1 << PORTD3);	// Set D3 (OC2B) low

	TCCR2B &= ~(1 << CS22) & ~(1 << CS21) & ~(1 << CS20);			// Stop the timer during setup
	TIFR2 |= (1 << TOV2);	// Clear the overflow interrupt flag
	TIMSK2 |= (1 << TOIE2);	// Enable interrupts on overflow of timer2
	ASSR &= ~(1 << AS2);	// Clock timer / counter 2 from the I/O clock
	TCCR2A &= ~(1 << COM2B1); TCCR2A &= ~(1 << COM2B0);			// OC2B disconnected
	TCCR2B &= ~(1 << WGM22); TCCR2A &= ~(1 << WGM21); TCCR2A &= ~(1 << WGM20);	// 'Normal' mode
	TCCR2B |= (1 << CS22) | (1 << CS21) | (1 << CS20);			// Prescale the clock by 1/1024, switching it on

	counter = 0;

	sei();	// enable interrupts

	while(1){}

	return 0;
}
