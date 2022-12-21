//Nadide Beyza Dokur - 041801134
//EE 306 Microprocessors Final Project - TODAY YOU WILL HAVE...
//06.06.2022

.global     KEY_ISR

KEY_ISR:    
		PUSH {R7}                    
        LDR R0, =0xFF200050   	// base address of pushbutton KEY port
        LDR R8, =0xFF200020		// base address of seven-segment displays
        LDR R1, [R0, #0xC]  	// read edge capture register
        MOV R2, #0xF        
        STR R2, [R0, #0xC]  	// clear the interrupt
        LDR R4, =0xFF200000     // based address of LED display

CHECK_KEY0:                    
			// check for KEY0
			MOV R3, #0x1        
			ANDS R3, R3, R1      
			BEQ CHECK_KEY1       
			MOV R2, #0b1    
			//display of E
			MOV R5, #0x79		 
			MOVEQ R5, #0
			//display of V
			MOV R6, #0x3e 
			MOV R6, R6, LSL #8
			MOVEQ R6, #0
			//display of O
			MOV R9, #0x3f 
			MOV R9, R9, LSL #16
			MOVEQ R9, #0
			//display of L
			MOV R10, #0x38
			MOV R10, R10, LSL #24
			MOVEQ R10, #0
			//concatenate of the text
			ORR R7, R5, R6
			ORR R7, R7, R9
			ORR R7, R7, R10
			//send of the text to seven-segment display
			STR R7, [R8]
			//END_KEY_ISR 
			B END_KEY_ISR    
CHECK_KEY1:
			// check for KEY1
			MOV R3, #0x2
			ANDS R3, R3, R1 	
			BEQ CHECK_KEY2                    
        	MOV R2, #0b10
			//display of K
			MOV R5, #0x76
			MOVEQ R5, #0
			//display of C
			MOV R6, #0x39 
			MOV R6, R6, LSL #8
			MOVEQ R6, #0
			//display of U
			MOV R9, #0x3e 
			MOV R9, R9, LSL #16
			MOVEQ R9, #0
			//display of L
			MOV R10, #0x38
			MOV R10, R10, LSL #24
			MOVEQ R10, #0
			//concatenate of the text
			ORR R7, R5, R6
			ORR R7, R7, R9
			ORR R7, R7, R10
			//send of the text to seven-segment display
			STR R7, [R8]
			//END_KEY_ISR 
			B END_KEY_ISR
CHECK_KEY2:
			// check for KEY2
			MOV R3, #0x4
			ANDS R3, R3, R1 	
			BEQ CHECK_KEY3                    
			MOV R2, #0b100
			//display of N
			MOV R5, #0x37
			MOVEQ R5, #0
			//display of U
			MOV R6, #0x3e 
			MOV R6, R6, LSL #8
			MOVEQ R6, #0
			//display of F
			MOV R9, #0x71 
			MOV R9, R9, LSL #16
			MOVEQ R9, #0
			//concatenate of the text
			ORR R7, R5, R6
			ORR R7, R7, R9
			//send of the text to seven-segment display
			STR R7, [R8]
			//END_KEY_ISR
			B END_KEY_ISR
CHECK_KEY3:                    
			// check for KEY3
			MOV R3, #0x8
			ANDS R3, R3, R1 	
			BEQ CHECK_KEY3
			MOV R2, #0b1000
			//display of Y
			MOV R5, #0x66
			MOVEQ R5, #0
			//display of O
			MOV R6, #0x3f 
			MOV R6, R6, LSL #8
			MOVEQ R6, #0
			//display of J
			MOV R9, #0x0e 
			MOV R9, R9, LSL #16
			MOVEQ R9, #0
			//concatenate of the text
			ORR R7, R5, R6
			ORR R7, R7, R9
			//send of the text to seven-segment display
			STR R7, [R8]		
END_KEY_ISR:                    
        STR R2, [R4]        	// display KEY pressed on LED
        STR R7, [R8]			// display text on seven segment display pressed button
		POP {R7}
        BX LR              
.end        
	