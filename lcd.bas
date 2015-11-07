'CUBESAT icin LCD ekrana Debug yazma cihazi

Device = 16F877
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, BOREN_ON, LVP_OFF, CPD_OFF, WRT_OFF, DEBUG_OFF, CP_OFF

Xtal=10
All_Digital = True

Declare LCD_Interface = 4
Declare LCD_DTPin = PORTD.4
Declare LCD_RSPin = PORTD.2 'RS pin del LCD
Declare LCD_ENPin = PORTD.3 'EN pin del LCD
Declare LCD_Lines = 4 '2 lines LCD

TRISD = 0
TRISB = 255

Symbol RBIF = INTCON.0 ' RB Port Interrupt Flag
Symbol INTF = INTCON.1 ' RB0 External Interrupt Flag
Symbol T0IF = INTCON.2 ' TMR0 Overflow Interrupt Flag
Symbol RBIE = INTCON.3 ' RB Port Change Interrupt Enable
Symbol INTE = INTCON.4 ' RB0 External Interrupt Enable
Symbol T0IE = INTCON.5 ' TMR0 Overflow Interrupt Enable
Symbol PEIE = INTCON.6 ' Peripheral Interrupt Enable
Symbol GIE = INTCON.7  ' Global Interrupt Enable


Symbol TMR1IF   = PIR1.0 'timer 1 interrupt flag
    
Symbol TMR1_Val = 65400 ' Set the initial value of TMR1  
Symbol TMR1_mS = 1 ' Time period of TMR1  
Symbol Timer1 = TMR1L.Word ' A special way of addressing both TMR1L and TMR1H with one register 
Symbol TMR1_Enable = PIE1.0 ' TMR1 interrupt enable 
Symbol TMR1_Overflow = PIR1.0 ' TMR1 overflow flag 
Symbol TMR1_On = T1CON.0 ' Enables TMR1 to start incrementing 
 
TMR1_Enable = 0
INTCON.6 = 1 ' Peripheral Interrupts 
OPTION_REG = 0

T1CON.1 = 0 ' 1 = External clock from pin RC0/T1OSO/T1CKI (on the rising edge)  ' 0 = Internal clock (FOSC/4)  'TRISC.0 = 1 ' If External clock, then set clock as an input  '
T1CON.2 = 1 ' 1 = Do not synchronize external clock input  ' 0 = Synchronize external clock input  ' When T1CON.1 = 0;  ' this bit is ignored. Timer1 uses the internal clock when TMR1CS = 0.  
T1CON.4 = 0 ' 11 = 1:8 prescale value  
T1CON.5 = 0 ' 10 = 1:4 prescale value  ' 01 = 1:2 prescale value  ' 00 = 1:1 prescale value  
Timer1 = TMR1_Val
 
 
 
Dim zaman As Word 
Dim zaman2 As Word

Dim uS As Word
Dim mS As Word
Dim S As Word 


Dim EnKisa As Word
Dim EnUzun As Word
EnKisa = 0
EnUzun = 0

Dim timerKur As Dword
Dim mystr[32] As Byte


Dim CLKcnt As Word
CLKcnt = 0

Dim DataRead As Dword
DataRead = 0

Dim bloksay As Word
bloksay = 0

Dim buffer As Word
buffer = 0

Dim posIndex As Word
posIndex = 0

Dim startReading As Bit
startReading = 0

Dim portDurum As Byte



On_Interrupt GoTo myinterrupt
GoTo Basla

'disable
myinterrupt:
    Context Save
    GIE = 0
    
    If RBIF = 1 Then
        EnKisa = EnKisa + 1
        portDurum = PORTB    
        RBIF = 0
    EndIf
    
    
    If TMR1_Overflow = 1 And TMR1_Enable = 1 Then
        TMR1_Enable = 0
        Timer1 = TMR1_Val 'Timer1 + TMR1_Val
        TMR1_Enable = 1
        TMR1_Overflow = 0
        mS = mS + TMR1_mS
        timerKur = timerKur + 1
        If mS >= 1000 Then
            mS = mS - 1000
            S = S + 1
        EndIf
    EndIf     
    
'    If TMR1IF = 1 Then
'        zaman = zaman + 1
'        Toggle PORTA.1
'        If zaman = 40 Then 
'            zaman = 0 'dongu 60 saniye
'            zaman2 = 0 'latch icin
'        EndIf
'        TMR1L = 0
'        TMR1H = 0
'        TMR1IF = 0
'    EndIf 



Cikis:
    GIE = 1
    Context Restore
    Return
'enable



Basla:
    Cls
    'INTE = 1
    RBIE = 1
    'TMR1_Enable = 1 
    'TMR1_On = 1 
    GIE = 1
    INTCON = %10010000
    
Dongu:    
'    if ms = 0 then buffer = buffer + 1
'    if buffer = 5 then
        buffer = 0
        Cls
        Print At 1,1,"D:",Dec mystr[1],Dec mystr[2],Dec mystr[3],Dec mystr[4],Dec mystr[5],Dec mystr[6],Dec mystr[7]
        Print At 2,1,Dec CLKcnt
        Print At 3,1,Dec S 
        Print At 4,1,Dec EnUzun,"  ",Dec EnKisa
        DelayMS 10
'    endif
    GoTo Dongu
              



End


