Device 16F877 '16F84 '6f1825
Xtal 10 

All_Digital=true

LCD_RSPin = PORTD.2         
LCD_ENPin = PORTD.3         
LCD_DTPin = PORTD.4    
LCD_Interface = 4            '4-bit Interface
LCD_Lines = 2                 'in this case 2 lots of 2 lines
LCD_Type = 0  

Declare Float_Display_Type = Fast 
                        
TRISB=0000            'set ports for required input or output 
TRISD=0000
TRISE=0000  

    

Test:
    Print At 1,1, "Test line 1" 
    Print At 2,1, "Test line 2"
    DelayMS 1000
    Toggle PORTB.7
    GoTo Test
    

End



