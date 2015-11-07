' *************************************************
' *                                               *
' * RACAL 398 - I2C LCD MODIFICATION              *
' *                                               *
' * PORTB.0 DATA                                  *
' * PORTB.1 ENABLE                                *
' * PORTB.3 CLK                                   *
' *                                               *
' * PORTC.3 SCL FOR LCD                           *
' * PORTC.4 SDA FOR LCD                           *
' *                                               *
' *************************************************


Device = 16F877
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, BOREN_ON, LVP_OFF, CPD_OFF, WRT_OFF, DEBUG_OFF, CP_OFF

Xtal=10
All_Digital = True

Declare LCD_Interface = 4
Declare LCD_DTPin = PORTD.4
Declare LCD_RSPin = PORTD.2 'RS pin del LCD
Declare LCD_ENPin = PORTD.3 'EN pin del LCD
Declare LCD_Lines = 4 '2 lines LCD

Declare SDA_Pin PORTC.4
Declare SCL_Pin PORTC.3
Symbol SDA PORTC.4
Symbol SCL PORTC.3
Declare Slow_Bus 1
'Declare bus_scl On '
Declare Hbus_Bitrate 400 ' 


TRISD = 0
TRISB = 255
'TRISC = 0

Symbol RBIF = INTCON.0 ' RB Port Interrupt Flag
Symbol INTF = INTCON.1 ' RB0 External Interrupt Flag
Symbol T0IF = INTCON.2 ' TMR0 Overflow Interrupt Flag
Symbol RBIE = INTCON.3 ' RB Port Change Interrupt Enable
Symbol INTE = INTCON.4 ' RB0 External Interrupt Enable
Symbol T0IE = INTCON.5 ' TMR0 Overflow Interrupt Enable
Symbol PEIE = INTCON.6 ' Peripheral Interrupt Enable
Symbol GIE = INTCON.7  ' Global Interrupt Enable

Symbol INTEDG = OPTION_REG.6   ' Interrupt Edge Select
Symbol NOT_RBPU = OPTION_REG.7 ' PORTB Pull-up Enable

INTEDG = 1 'rising

Dim Katar As Word
Dim Position As Byte
Dim buffer As Byte
Dim PortDurum As Byte
Dim enuzun As Byte
enuzun=0
Dim Satir[16] As Byte

Dim Degerler[90] As Byte
Dim say As Byte
For say = 0 To 80 
    Degerler[say]=8
Next say

Katar = 0
Position = 0

On_Interrupt GoTo myinterrupt
GoTo Basla

'disable
myinterrupt:
    Context Save
    GIE = 0
     
    If INTF = 1 Then
        'PortDurum = PORTB
        If PORTB.1 = 1 Then
            'If PORTB.3 = 1 Then Degerler[Position] = 1 Else Degerler[Position] = 0
            Degerler[Position] = PORTB.3
            Position = Position + 1
        Else
            If Position > 40 Then Position = 0
            Katar = Katar + 1
        EndIf            
        INTF = 0
    EndIf
    

Cikis:
    GIE = 1
    Context Restore
    Return
'enable


 

Basla:
    Cls
    Print At 1,1,"    RACAL BCC39B"
    Print At 2,1," (C)2015 TA7W Baris"
    Print At 4,1,"  DISPLAY TESTING"
    DelayMS 1000
    Cls
    INTE = 1
    'RBIE = 1
    GIE = 1

    Dim Segments[7] As Byte
    Dim DecValue As Byte
    Dim ResValue As Byte
    ResValue=0
    Dim FrqDigits[7] As Byte
    Dim Channel As Byte
    Dim Cmd As Byte
    Dim LcdData As Byte
    Dim DATAm As Byte

LCDHazirla:
    

            Cmd = $2A
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $71
            GoSub KomutGonder 
            DelayMS 10
            Cmd = $5C
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $28
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $08 '	// **** Set Sleep Mode On
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $2A '	// **** Set "RE"=1	00101010B
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $79 '// **** Set "SD"=1	01111001B
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $D5
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $70
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $78 '// **** Set "SD"=0
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $08 '	// **** Set 5-dot, 3 or 4 line(0x09), 1 or 2 line(0x08)
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $06 '	// **** Set Com31-->Com0  Seg0-->Seg99
            GoSub KomutGonder
            DelayMS 10 
            '// **** Set OLED Characterization *** //
            Cmd = $2A '  	// **** Set "RE"=1 
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $79 '  	// **** Set "SD"=1
            GoSub KomutGonder
            DelayMS 10 
            '// **** CGROM/CGRAM Management *** //
            Cmd = $72 '  	// **** Set ROM
            GoSub KomutGonder
            DelayMS 10
            'lcddata = $4
            'gosub datagonder
            'delayms 10

             
            Cmd = $0 '  	// **** Set ROM A and 8 CGRAM
            GoSub KomutGonder
            DelayMS 10
            Cmd = $DA ' 	// **** Set Seg Pins HW Config
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $10 '   
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $81 '  	// **** Set Contrast
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $FF ' 
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $DB '  	// **** Set VCOM deselect level
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $30 '  	// **** VCC x 0.83
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $DC '  	// **** Set gpio - turn EN for 15V generator on.
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $03 '
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $78 '  	// **** Exiting Set OLED Characterization
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $28 ' 
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $2A ' 
            'cmd = $05); 	// **** Set Entry Mode
            GoSub KomutGonder
            DelayMS 10
            Cmd = $06 ' 	// **** Set Entry Mode
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $08 '  
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $28 ' 	// **** Set "IS"=0 , "RE" =0 //28
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $01 ' 
            GoSub KomutGonder
            DelayMS 10 
            Cmd = $80 ' 	// **** Set DDRAM Address to 0x80 (line 1 start)
            GoSub KomutGonder 
            DelayMS 100
            Cmd = $0C '  	// **** Turn on Display
            GoSub KomutGonder
            

Dongu:    
            'DIGIT 1      1 2 3  31 35 65
            Segments[0] = Degerler[35] 
            Segments[1] = Degerler[31]  'OK
            Segments[2] = Degerler[1]   'OK
            Segments[3] = Degerler[3] 
            Segments[4] = Degerler[36] 
            Segments[5] = Degerler[2]  'OK
            Segments[6] = Degerler[65] 'OK
            GoSub CalcValue
            FrqDigits[1] = ResValue


            'DIGIT 2
            Segments[0] = Degerler[4]      
            Segments[1] = Degerler[38] 
            Segments[2] = Degerler[21] 
            Segments[3] = Degerler[55] 
            Segments[4] = Degerler[56] 
            Segments[5] = Degerler[37] 
            Segments[6] = Degerler[22]
            GoSub CalcValue
            FrqDigits[2] = ResValue


            'DIGIT 3
            Segments[0] = Degerler[5] 
            Segments[1] = Degerler[28] 
            Segments[2] = Degerler[29] 
            Segments[3] = Degerler[63] 
            Segments[4] = Degerler[64] 
            Segments[5] = Degerler[30] 
            Segments[6] = Degerler[62]
            GoSub CalcValue
            FrqDigits[3] = ResValue


            'DIGIT 4
            Segments[0] = Degerler[6] 
            Segments[1] = Degerler[40] 
            Segments[2] = Degerler[26] 
            Segments[3] = Degerler[60] 
            Segments[4] = Degerler[61] 
            Segments[5] = Degerler[39] 
            Segments[6] = Degerler[27]
            GoSub CalcValue
            FrqDigits[4] = ResValue

            'DIGIT 5
            Segments[0] = Degerler[7] 
            Segments[1] = Degerler[23] 
            Segments[2] = Degerler[24] 
            Segments[3] = Degerler[58] 
            Segments[4] = Degerler[59] 
            Segments[5] = Degerler[25] 
            Segments[6] = Degerler[57]
            GoSub CalcValue
            FrqDigits[5] = ResValue

            'DIGIT 6
            Segments[0] = Degerler[8] 
            Segments[1] = Degerler[42] 
            Segments[2] = Degerler[19] 
            Segments[3] = Degerler[53] 
            Segments[4] = Degerler[54] 
            Segments[5] = Degerler[41] 
            Segments[6] = Degerler[20]
            GoSub CalcValue
            FrqDigits[6] = ResValue

            'CHANNEL DIGIT 
            Segments[0] = Degerler[15] 
            Segments[1] = Degerler[49] 
            Segments[2] = Degerler[50] 
            Segments[3] = Degerler[43] 
            Segments[4] = Degerler[48] 
            Segments[5] = Degerler[14] 
            Segments[6] = Degerler[16]
            GoSub CalcValue
            Channel = ResValue



           Print At 1,1,"Frekans : ",FrqDigits[1],FrqDigits[2],".",FrqDigits[3],FrqDigits[4], FrqDigits[5], FrqDigits[6]
           If Degerler[11] = 1 Then 
                Print At 1,18,"<>"
           Else
               Print At 1,18,"   "
           EndIf
           If Degerler[10] = 1 Then 
                Print At 2,1,"PWR : HIGH" 
           Else 
                Print At 2,1,"PWR : LOW "  
           EndIf
           If Degerler[12] = 1 Then
                Print At 3,1,"MOD : USB "
           Else
                Print At 3,1,"MOD : LSB "
          EndIf
           If Degerler[45] = 1 Then
                Print At 3,11,"(CW) "
           Else
                Print At 3,11,"     "
           EndIf
           Print At 4,1,"Kanal : ",Channel
            If Degerler[13] = 1 Then 
                Print At 4,11, "TX" 
            Else
                Print At 4,11, "  "
            EndIf 
            If Degerler[47] = 1 Then 
                Print At 4,14, "RX"
            Else
                Print At 4,14, "  "
            EndIf
            If Degerler[52] = 1 Then 
                Print At 3,16, "X"
            Else
                Print At 3,16, " "
            EndIf            
            If Degerler[51] = 1 Then 
                Print At 3,17, "X"
            Else
                Print At 3,17, " "
            EndIf
            If Degerler[17] = 1 Then 
                Print At 3,18, "X"
            Else
                Print At 3,18, " "
            EndIf
            If Degerler[18] = 1 Then 
                Print At 3,19, "X"
            Else
                Print At 3,19, " "
            EndIf

            Cmd = $80 ' //80-8F ilk satir 	// **** next line
            GoSub KomutGonder


            If Degerler[52] = 1 Then 
                Print At 3,16, "X"
            Else
                Print At 3,16, " "
            EndIf            
            If Degerler[51] = 1 Then 
                Print At 3,17, "X"
            Else
                Print At 3,17, " "
            EndIf
            If Degerler[17] = 1 Then 
                Print At 3,18, "X"
            Else
                Print At 3,18, " "
            EndIf
            If Degerler[18] = 1 Then 
                Print At 3,19, "X"
            Else
                Print At 3,19, " "
            EndIf

            Satir[0] = Channel
            Satir[1] = " "
            Satir[2] = " "
            Satir[3] = " "
            If Degerler[47] = 1 Then 
                Satir[4] = "T"
                Satir[5] = "X"
            Else
                Satir[4] = " "
                Satir[5] = " "
            EndIf
            Satir[6] = " "
            If Degerler[10] = 1 Then 
                Satir[7] = "H"
            Else 
                Satir[7] = "L"
            EndIf
            Satir[8] = " "            
            Satir[9] = FrqDigits[1]
            Satir[10]= FrqDigits[2]
            Satir[11]= "."
            Satir[12]= FrqDigits[3]
            Satir[13]= FrqDigits[4]
            Satir[14]= FrqDigits[5]
            Satir[15]= FrqDigits[6]
          
            GoSub SatirGonder            
            DelayMS 10 
            Cmd = $C0 ' //80-8F ilk satir 	// **** next line
            GoSub KomutGonder
            Satir[0] = " "
            Satir[1] = " "
            Satir[2] = " "
            Satir[3] = " "
            If Degerler[13] = 1 Then 
                Satir[4] = "R"
                Satir[5] = "X"
            Else
                Satir[4] = " "
                Satir[5] = " "
            EndIf 
            Satir[6] = " "
            Satir[7] = " "
            Satir[8] = " "            
            If Degerler[11] = 1 Then 
                Satir[9] = "<"
                Satir[10]= ">"
            Else
                Satir[9] = " "
                Satir[10]= " "
            EndIf
            Satir[11]= " "
            If Degerler[45] = 1 Then
                Satir[12]= "n"
            Else
                Satir[12]= " "
            EndIf

            If Degerler[12] = 1 Then
                Satir[13]= "U"
                Satir[14]= "S"
                Satir[15]= "B"
            Else
                Satir[13]= "L"
                Satir[14]= "S"
                Satir[15]= "B"
            EndIf
                
            
            GoSub SatirGonder            
            DelayMS 10 



    GoTo Dongu
              


CalcValue:               
        DecValue = Segments[0]+Segments[1]*2+Segments[2]*4+Segments[3]*8+Segments[4]*16+Segments[5]*32+Segments[6]*64
        ResValue = "-"
        If DecValue = 0   Then ResValue = " "
        If DecValue = 63  Then ResValue = "0"
        If DecValue = 6   Then ResValue = "1"
        If DecValue = 91  Then ResValue = "2"
        If DecValue = 79  Then ResValue = "3"
        If DecValue = 102 Then ResValue = "4"
        If DecValue = 109 Then ResValue = "5"
        If DecValue = 125 Then ResValue = "6"
        If DecValue = 7   Then ResValue = "7"
        If DecValue = 127 Then ResValue = "8"
        If DecValue = 111 Then ResValue = "9"
        If DecValue = 120 Then ResValue = "U"
        If DecValue = 28  Then ResValue = "U"
        If DecValue = 84  Then ResValue = "n"
        If DecValue = 88  Then ResValue = "e"
        '"P"
        '"n"
        '"t.SEt ?"
        '"N"
        '"bItE"
        '"<> t Pr UPA"
        '"H-Set I? "
        '"Er tne ? "
        '"    Vol? "
        '"     Ptt "
        'PASS
        'FAIL
        'F  UE
        'No Atu
        '
        Return

        
KomutGonder:
    Low SDA
    DelayUS 10
    Low SCL
    DelayUS 10
    
    DATAm = $78
    GoSub Gonder
    DATAm = $80
    GoSub Gonder
    DATAm = Cmd
    GoSub Gonder

    'cikis
    High SCL
    DelayUS 1
    High SDA

    'hBStart
    'hBusOut %01111000,$80,[Cmd]
    'hBStop 
    Return


DataGonder:
    Low SDA
    DelayUS 10
    Low SCL
    DelayUS 10
    
    DATAm = $78
    GoSub Gonder
    DATAm = $40
    GoSub Gonder
    DATAm = LcdData
    GoSub Gonder

    'cikis
    High SCL
    DelayUS 1
    High SDA

    Return



Gonder:
    Dim don As Byte
    For don = 1 To 8
      If DATAm.7 = 0 Then
         Low SDA
      Else
         High SDA
      EndIf
      DATAm = DATAm << 1
      DelayUS 1
      High SCL
      DelayUS 9
      Low SCL    
    Next don

'    Low SDA
    DelayUS 1
    High SCL
    DelayUS 9
    Low SCL   
    Return


SatirGonder:
'    Cmd = $80 ' //80-8F ilk satir 	// **** next line
'    GoSub KomutGonder
    For say = 0 To 15
       LcdData = Satir[say]
       GoSub DataGonder
       DelayUS 10
    Next say

    Return
End













