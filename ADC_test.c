// Program for ATmega328P to perform analogue to digital conversion of
// a voltage on pin 23 and light or not light an LED accordingly.
// Clock source may be 16MHz ceramic, but could be lower.
// Possible voltage input in a voltage divider made from two light-
// dependent resistors.

#include <avr/io.h>
#include <avr/interrupt.h>

#define F_CPU	16000000UL	// CPU freq of 16MHz

int main(){
	ADMUX = 0x60;	// Select the ADC0 pin (aka. pin 23)

	ADCSRA |= (1 << ADEN);	// Switch on the ADC module with left-adjustment
	ADCSRA |= (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0);	// Set the prescaler to 1/128, giving a frequency of 125 kHz
	ADCSRA &= ~(1 << ADATE);	// Disable auto-trigger sources (so we're in Single Conversion mode)
	ADCSRA &= ~(1 << ADIE);	// Disable interrupts
	// FIXME - The register ADCSRB has a bit called ACME that seems to be undocumented - what does this do?

	// Setup pin 5 (PD3) as output, set low
	DDRD |= (1 << DDD3); PORTD &= ~(1 << PORTD3);

	while(1){
		ADCSRA |= (1 << ADIF);	// Clear the interrupt flag
		ADCSRA |= (1 << ADSC);	// Start an ADC conversion
		while(!(ADCSRA & 1 << ADIF)){ }	// Wait until the interrupt flag is set
		if (ADCH > 0x80) PORTD |= (1 << PORTD3);
		else             PORTD &= ~(1 << PORTD3);
	}

	return 0;
}
