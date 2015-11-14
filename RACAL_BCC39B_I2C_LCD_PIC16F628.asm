;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.4.5
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. May 2012
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16F628A, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
INDF equ 0X0000
TMR0 equ 0X0001
PCL equ 0X0002
STATUS equ 0X0003
FSR equ 0X0004
PORTA equ 0X0005
PORTB equ 0X0006
PCLATH equ 0X000A
INTCON equ 0X000B
PIR1 equ 0X000C
TMR1L equ 0X000E
TMR1LH equ 0X000F
TMR1H equ 0X000F
T1CON equ 0X0010
TMR2 equ 0X0011
T2CON equ 0X0012
CCPR1L equ 0X0015
CCPR1LH equ 0X0016
CCPR1H equ 0X0016
CCP1CON equ 0X0017
RCSTA equ 0X0018
TXREG equ 0X0019
RCREG equ 0X001A
CMCON equ 0X001F
OPTION_REG equ 0X0081
TRISA equ 0X0085
TRISB equ 0X0086
PIE1 equ 0X008C
PCON equ 0X008E
PR2 equ 0X0092
TXSTA equ 0X0098
SPBRG equ 0X0099
EEDATL equ 0X009A
EEDATA equ 0X009A
EEDAT equ 0X009A
EEADR equ 0X009B
EECON1 equ 0X009C
EECON2 equ 0X009D
VRCON equ 0X009F
IRP=7
RP1=6
RP0=5
NOT_TO=4
NOT_PD=3
Z=2
DC=1
C=0
GIE=7
PEIE=6
T0IE=5
INTE=4
RBIE=3
T0IF=2
INTF=1
RBIF=0
EEIF=7
CMIF=6
RCIF=5
PP_RCIF=5
TXIF=4
PP_TXIF=4
CCP1IF=2
TMR2IF=1
TMR1IF=0
T1CKPS1=5
T1CKPS0=4
T1OSCEN=3
NOT_T1SYNC=2
TMR1CS=1
TMR1ON=0
TOUTPS3=6
TOUTPS2=5
TOUTPS1=4
TOUTPS0=3
TMR2ON=2
PP_TMR2ON=2
T2CKPS1=1
PP_T2CKPS1=1
T2CKPS0=0
PP_T2CKPS0=0
CCP1X=5
CCP1Y=4
CCP1M3=3
CCP1M2=2
CCP1M1=1
CCP1M0=0
SPEN=7
RX9=6
SREN=5
CREN=4
PP_CREN=4
ADEN=3
FERR=2
OERR=1
PP_OERR=1
RX9D=0
C2OUT=7
C1OUT=6
C2INV=5
C1INV=4
CIS=3
CM2=2
CM1=1
CM0=0
NOT_RBPU=7
INTEDG=6
T0CS=5
T0SE=4
PSA=3
PS2=2
PS1=1
PS0=0
EEIE=7
CMIE=6
RCIE=5
TXIE=4
CCP1IE=2
TMR2IE=1
TMR1IE=0
OSCF=3
NOT_POR=1
NOT_BO=0
NOT_BOR=0
NOT_BOD=0
CSRC=7
TX9=6
TXEN=5
SYNC=4
BRGH=2
TRMT=1
TX9D=0
WRERR=3
PP_WRERR=3
WREN=2
PP_WREN=2
WR=1
PP_WR=1
RD=0
PP_RD=0
VREN=7
VROE=6
VRR=5
VR3=3
VR2=2
VR1=1
VR0=0
  __MAXRAM 0X01FF
  __BADRAM 0X07-0X09, 0X0D, 0X13-0X14, 0X1B-0X1E
  __BADRAM 0X87-0X89, 0X8D, 0X8F-0X91, 0X93-0X97, 0X9E
  __BADRAM 0X105, 0X107-0X109, 0X10C-0X11F, 0X150-0X16F
  __BADRAM 0X185, 0X187-0X189, 0X18C-0X1EF
BODEN_ON equ 0X3FFF
BODEN_OFF equ 0X3FBF
BOREN_ON equ 0X3FFF
BOREN_OFF equ 0X3FBF
CP_ON equ 0X1FFF
CP_OFF equ 0X3FFF
DATA_CP_ON equ 0X3EFF
DATA_CP_OFF equ 0X3FFF
PWRTE_OFF equ 0X3FFF
PWRTE_ON equ 0X3FF7
WDT_ON equ 0X3FFF
WDT_OFF equ 0X3FFB
LVP_ON equ 0X3FFF
LVP_OFF equ 0X3F7F
MCLRE_ON equ 0X3FFF
MCLRE_OFF equ 0X3FDF
RC_OSC_CLKOUT equ 0X3FFF
RC_OSC_NOCLKOUT equ 0X3FFE
ER_OSC_CLKOUT equ 0X3FFF
ER_OSC_NOCLKOUT equ 0X3FFE
INTOSC_OSC_CLKOUT equ 0X3FFD
INTOSC_OSC_NOCLKOUT equ 0X3FFC
INTRC_OSC_CLKOUT equ 0X3FFD
INTRC_OSC_NOCLKOUT equ 0X3FFC
EXTCLK_OSC equ 0X3FEF
HS_OSC equ 0X3FEE
XT_OSC equ 0X3FED
LP_OSC equ 0X3FEC
CPD_OFF equ 0X3FFF
CPD_ON equ 0X3EFF
FOSC_ECIO equ 0X3FEF
FOSC_EXTRCCLK equ 0X3FFF
FOSC_EXTRCIO equ 0X3FFE
FOSC_HS equ 0X3FEE
FOSC_INTOSCCLK equ 0X3FFD
FOSC_INTOSCIO equ 0X3FFC
FOSC_LP equ 0X3FEC
FOSC_XT equ 0X3FED
WDTE_OFF equ 0X3FFB
WDTE_ON equ 0X3FFF
#define __16F628A 1
#define XTAL 4
#define _CORE 14
#define _MAXRAM 224
#define _RAM_END 0X00E0
#define _MAXMEM 2048
#define _ADC 0
#define _ADC_RES 0
#define _EEPROM 128
#define _PAGES 1
#define _BANKS 3
#define RAM_BANKS 3
#define _USART 1
#define _USB 0
#define _FLASH 0
#define _CWRITE_BLOCK 0
#define BANK0_START 0X20
#define BANK0_END 0X7C
#define BANK1_START 0X00A0
#define BANK1_END 0X00EF
#define BANK2_START 0X0120
#define BANK2_END 0X014F
#define _SYSTEM_VARIABLE_COUNT 22
ram_bank = 0
CURRENT@PAGE = 0
DEST@PAGE = 0
#define LCD#TYPE 0
#define __INTERRUPTS_ENABLED 1
f@call macro pDest
        call pDest
        endm
f@jump macro pDest
        goto pDest
        endm
set@page macro pDest
        endm
s@b     macro pVarin
if((pVarin & 384) == 0)
if(ram_bank == 1)
        bcf 3,5
endif
if(ram_bank == 2)
        bcf 3,6
endif
if(ram_bank == 3)
        bcf 3,5
        bcf 3,6
endif
ram_bank = 0
endif
if((pVarin & 384) == 128)
if(ram_bank == 0)
        bsf 3,5
endif
if(ram_bank == 2)
        bsf 3,5
        bcf 3,6
endif
if(ram_bank == 3)
        bcf 3,6
endif
ram_bank = 1
endif
if((pVarin & 384) == 256)
if(ram_bank == 0)
        bsf 3,6
endif
if(ram_bank == 1)
        bcf 3,5
        bsf 3,6
endif
if(ram_bank == 3)
        bcf 3,5
endif
ram_bank = 2
endif
if((pVarin & 384) == 384)
if(ram_bank == 0)
        bsf 3,5
        bsf 3,6
endif
if(ram_bank == 1)
        bsf 3,6
endif
if(ram_bank == 2)
        bsf 3,5
endif
ram_bank = 3
endif
        endm
r@b     macro
if((ram_bank & 1) != 0)
        bcf 3,5
endif
if((ram_bank & 2) != 0)
        bcf 3,6
endif
ram_bank = 0
        endm
jump macro pLabel
    goto pLabel
    endm
wreg_byte macro pByteOut
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
wreg_bit macro pVarOut,pBitout
    s@b pVarOut
    andlw 1
    btfsc STATUS,2
    bcf pVarOut,pBitout
    btfss STATUS,2
    bsf pVarOut,pBitout
    r@b
    endm
wreg_word macro pWordOut
    s@b pWordOut
    movwf pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    r@b
    endm
wreg_dword macro pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    s@b pDwordOut
    movwf pDwordOut
    r@b
    endm
byte_wreg macro pByteIn
    s@b pByteIn
    movf pByteIn,W
    r@b
    endm
num_SFR macro pNumIn,pSFROut
    s@b pSFROut
    movlw pNumIn
    movwf pSFROut
    endm
NUM16_SFR macro pNumIn,pSFROut
    s@b pSFROut
    movlw (pNumIn & 255)
    movwf pSFROut
    s@b pSFROut + 1
    movlw ((pNumIn >> 8) & 255)
    movwf pSFROut + 1
    r@b
    endm
num_wreg macro pNumIn
    movlw (pNumIn & 255)
    endm
num_byte macro pNumIn,pByteOut
    s@b pByteOut
if(pNumIn == 0)
    clrf pByteOut
else
    movlw (pNumIn & 255)
    movwf pByteOut
endif
    r@b
    endm
num_bit macro pNumIn,pVarOut,pBitout
    s@b pVarOut
if((pNumIn & 1) == 1)
    bsf pVarOut,pBitout
else
    bcf pVarOut,pBitout
endif
    r@b
    endm
num_word macro pNumIn,pWordOut
if((pNumIn & 255) == 0)
    s@b pWordOut
    clrf pWordOut
else
    s@b pWordOut
    movlw low (pNumIn)
    movwf pWordOut
endif
if(((pNumIn >> 8) & 255) == 0)
    s@b pWordOut+1
    clrf pWordOut+1
else
    s@b pWordOut+1
    movlw high (pNumIn)
    movwf pWordOut+1
endif
    r@b
    endm
num_dword macro pNumIn,pDwordOut
if ((pNumIn >> 24 & 255) == 0)
    s@b pDwordOut+3
    clrf pDwordOut+3
else
    s@b pDwordOut+3
    movlw ((pNumIn >> 24) & 255)
    movwf pDwordOut+3
endif
if( ((pNumIn >> 16) & 255) == 0)
    s@b pDwordOut+2
    clrf pDwordOut+2
else
    s@b pDwordOut+2
    movlw ((pNumIn >> 16) & 255)
    movwf pDwordOut+2
endif
if( ((pNumIn >> 8) & 255) == 0)
    s@b pDwordOut+1
    clrf pDwordOut+1
else
    s@b pDwordOut+1
    movlw high (pNumIn)
    movwf pDwordOut+1
endif
if((pNumIn & 255) == 0)
    s@b pDwordOut
    clrf pDwordOut
else
    s@b pDwordOut
    movlw low (pNumIn)
    movwf pDwordOut
endif
    r@b
    endm
bit_wreg macro pVarin,pBitIn
    s@b pVarin
    clrw
    btfsc pVarin,pBitIn
    movlw 1
    r@b
    endm
bit_byte macro pVarin,pBitIn,pByteOut
    s@b pVarin
    clrw
    btfsc pVarin,pBitIn
    movlw 1
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
bit_bit macro pVarin,pBitIn,pVarOut,pBitout
if((pVarin & 65408) == (pVarOut & 65408))
    s@b pVarOut
    btfsc pVarin,pBitIn
    bsf pVarOut,pBitout
    btfss pVarin,pBitIn
    bcf pVarOut,pBitout
else
    s@b pVarin
    clrdc
    btfsc pVarin,pBitIn
    setdc
    s@b pVarOut
    skpndc
    bsf pVarOut,pBitout
    skpdc
    bcf pVarOut,pBitout
endif
    endm
bit_word macro pVarin,pBitIn,pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    bit_byte pVarin,pBitIn,pWordOut
    endm
bit_dword macro pVarin,pBitIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    bit_byte pVarin,pBitIn,pDwordOut
    endm
word_wreg macro pWordIn
    byte_wreg pWordIn
    endm
word_byte macro pWordIn,pByteOut
    byte_byte pWordIn,pByteOut
    endm
word_bit macro pWordIn,pVarOut,pBitout
    byte_bit pWordIn, pVarOut, pBitout
    endm
word_word macro pWordIn,pWordOut
    s@b pWordIn+1
    movf pWordIn+1,W
    s@b pWordOut+1
    movwf pWordOut+1
    byte_byte pWordIn,pWordOut
    endm
word_dword macro pWordIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    byte_byte pWordIn+1,pDwordOut+1
    byte_byte pWordIn,pDwordOut
    endm
byte_byte macro pByteIn,pByteOut
    s@b pByteIn
    movf pByteIn,W
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
byte_word macro pByteIn,pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    byte_byte pByteIn,pWordOut
    endm
byte_dword macro pByteIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    byte_byte pByteIn,pDwordOut
    endm
    byte_bit macro pByteIn,pVarOut,pBitout
if((pByteIn & 65408) == (pVarOut & 65408))
    s@b pByteIn
    btfsc pByteIn,0
    bsf pVarOut,pBitout
    btfss pByteIn,0
    bcf pVarOut,pBitout
else
    s@b pByteIn
    rrf pByteIn,W
    s@b pVarOut
    skpnc
    bsf pVarOut,pBitout
    skpc
    bcf pVarOut,pBitout
endif
    r@b
    endm
dword_wreg macro pDwordIn
    byte_wreg pDwordIn
    endm
dword_byte macro pDwordIn,pByteOut
    byte_byte pDwordIn,pByteOut
    endm
dword_word macro pDwordIn,pWordOut
    s@b pDwordIn+1
    movf pDwordIn+1,W
    s@b pWordOut+1
    movwf pWordOut+1
    byte_byte pDwordIn,pWordOut
    endm
dword_dword macro pDwordIn,pDwordOut
    byte_byte pDwordIn+3,pDwordOut+3
    byte_byte pDwordIn+2,pDwordOut+2
    byte_byte pDwordIn+1,pDwordOut+1
    byte_byte pDwordIn,pDwordOut
    endm
dword_bit macro pDwordIn,pVarOut,pBitout
    byte_bit pDwordIn,pVarOut,pBitout
    endm
variable CURRENT@PAGE = 0
variable PDESTINATION@PAGE = 0
FIND@PAGE macro pLabelIn
local CURRENT_ADDR = $
local DEST_ADDR = pLabelIn
if((CURRENT_ADDR >= 0X1800) && (CURRENT_ADDR <= 0X2000))
    CURRENT@PAGE = 3
endif
if((CURRENT_ADDR >= 0X1000) && (CURRENT_ADDR <= 0X1800))
    CURRENT@PAGE = 2
endif
if((CURRENT_ADDR >= 0X0800) && (CURRENT_ADDR <= 0X1000))
    CURRENT@PAGE = 1
endif
if((CURRENT_ADDR >= 0) && (CURRENT_ADDR <= 0X0800))
    CURRENT@PAGE = 0
endif
if((DEST_ADDR >= 0X1800) && (DEST_ADDR <= 0X2000))
    PDESTINATION@PAGE = 3
endif
if((DEST_ADDR >= 0X1000) && (DEST_ADDR <= 0X1800))
    PDESTINATION@PAGE = 2
endif
if((DEST_ADDR >= 0X0800) && (DEST_ADDR <= 0X1000))
    PDESTINATION@PAGE = 1
endif
if((DEST_ADDR >= 0) && (DEST_ADDR <= 0X0800))
    PDESTINATION@PAGE = 0
endif
    endm
num_FSR macro pNumIn
    num_byte pNumIn, FSR
if (((pNumIn >> 8) & 255) == 1)
    bsf STATUS,7
else
    bcf STATUS,7
endif
    endm
label_word macro pLabelIn,pWordOut
    movlw (pLabelIn & 255)
    s@b pWordOut
    movwf pWordOut
    movlw ((pLabelIn >> 8) & 255)
    s@b pWordOut+1
    movwf pWordOut+1
    r@b
    endm
wreg_sword macro pWordOut
    s@b pWordOut
    movwf pWordOut
    movlw 0
    btfsc pWordOut,7
    movlw 255
    s@b pWordOut+1
    movwf pWordOut+1
    r@b
    endm
wreg_sdword macro pDwordOut
    s@b pDwordOut
    movwf pDwordOut
    movlw 0
    btfsc pDwordOut,7
    movlw 255
    s@b pDwordOut+1
    movwf pDwordOut+1
    s@b pDwordOut+2
    movwf pDwordOut+2
    s@b pDwordOut+3
    movwf pDwordOut+3
    r@b
    endm
byte_sword macro pByteIn,pWordOut
    s@b pByteIn
    movf pByteIn,W
    s@b pWordOut
    movwf pWordOut
    movlw 0
    btfsc pWordOut,7
    movlw 255
    s@b pWordOut+1
    movwf pWordOut+1
    r@b
    endm
byte_sdword macro pByteIn,pDwordOut
    s@b pByteIn
    movf pByteIn,W
    s@b pDwordOut
    movwf pDwordOut
    movlw 0
    btfsc pDwordOut,7
    movlw 255
    s@b pDwordOut+1
    movwf pDwordOut+1
    s@b pDwordOut+2
    movwf pDwordOut+2
    s@b pDwordOut+3
    movwf pDwordOut+3
    r@b
    endm
word_sdword macro pWordIn,pDwordOut
    s@b pWordIn
    movf pWordIn,W
    s@b pDwordOut
    movwf pDwordOut
    s@b pWordIn+1
    movf pWordIn+1,W
    s@b pDwordOut+1
    movwf pDwordOut+1
    movlw 0
    btfsc pDwordOut+1,7
    movlw 255
    s@b pDwordOut+2
    movwf pDwordOut+2
    s@b pDwordOut+3
    movwf pDwordOut+3
    r@b
    endm
GEN3H = 32
GEN4 = 33
GEN4H = 34
PBP#VAR0 = 35
PBP#VAR1 = 36
PBP#VAR2 = 37
PBP#VAR3 = 38
PBP#VAR4 = 39
PBP#VAR5 = 40
PBP#VAR6 = 41
PP0 = 42
PP0H = 43
PP1 = 44
PP1H = 45
PP3 = 46
PP3H = 47
PP6 = 48
PP6H = 49
PP7 = 50
PP7H = 51
PP8 = 52
PP8H = 53
FSRSAVE = 125
SSAVE = 126
WSAVE = 127
Katar = 54
KatarH = 55
Position = 56
buffer = 57
PortDurum = 58
enuzun = 59
Satir = 60
variable Satir#0=60,Satir#1=61,Satir#2=62,Satir#3=63
variable Satir#4=64,Satir#5=65,Satir#6=66,Satir#7=67
variable Satir#8=68,Satir#9=69,Satir#10=70,Satir#11=71
variable Satir#12=72,Satir#13=73,Satir#14=74,Satir#15=75
Degerler = 76
variable Degerler#0=76,Degerler#1=77,Degerler#2=78,Degerler#3=79
variable Degerler#4=80,Degerler#5=81,Degerler#6=82,Degerler#7=83
variable Degerler#8=84,Degerler#9=85,Degerler#10=86,Degerler#11=87
variable Degerler#12=88,Degerler#13=89,Degerler#14=90,Degerler#15=91
variable Degerler#16=92,Degerler#17=93,Degerler#18=94,Degerler#19=95
variable Degerler#20=96,Degerler#21=97,Degerler#22=98,Degerler#23=99
variable Degerler#24=100,Degerler#25=101,Degerler#26=102,Degerler#27=103
variable Degerler#28=104,Degerler#29=105,Degerler#30=106,Degerler#31=107
variable Degerler#32=108,Degerler#33=109,Degerler#34=110,Degerler#35=111
variable Degerler#36=112,Degerler#37=113,Degerler#38=114,Degerler#39=115
variable Degerler#40=116,Degerler#41=117,Degerler#42=118,Degerler#43=119
variable Degerler#44=120,Degerler#45=121,Degerler#46=122,Degerler#47=123
variable Degerler#48=124,Degerler#49=160,Degerler#50=161,Degerler#51=162
variable Degerler#52=163,Degerler#53=164,Degerler#54=165,Degerler#55=166
variable Degerler#56=167,Degerler#57=168,Degerler#58=169,Degerler#59=170
variable Degerler#60=171,Degerler#61=172,Degerler#62=173,Degerler#63=174
variable Degerler#64=175,Degerler#65=176,Degerler#66=177,Degerler#67=178
variable Degerler#68=179,Degerler#69=180,Degerler#70=181,Degerler#71=182
variable Degerler#72=183,Degerler#73=184,Degerler#74=185,Degerler#75=186
variable Degerler#76=187,Degerler#77=188,Degerler#78=189,Degerler#79=190
variable Degerler#80=191,Degerler#81=192,Degerler#82=193,Degerler#83=194
variable Degerler#84=195,Degerler#85=196,Degerler#86=197,Degerler#87=198
variable Degerler#88=199,Degerler#89=200
say = 201
Segments = 202
variable Segments#0=202,Segments#1=203,Segments#2=204,Segments#3=205
variable Segments#4=206,Segments#5=207,Segments#6=208
DecValue = 209
ResValue = 210
FrqDigits = 211
variable FrqDigits#0=211,FrqDigits#1=212,FrqDigits#2=213,FrqDigits#3=214
variable FrqDigits#4=215,FrqDigits#5=216,FrqDigits#6=217
Channel = 218
Cmd = 219
LcdData = 220
DATAm = 221
don = 222
_High__Context_Store = 223
variable _High__Context_Store#0=223,_High__Context_Store#1=224,_High__Context_Store#2=225,_High__Context_Store#3=226
variable _High__Context_Store#4=227,_High__Context_Store#5=228
#define SCL PORTA,3
#define SDA PORTA,4
#define RBIF INTCON,0
#define INTF INTCON,1
#define T0IF INTCON,2
#define RBIE INTCON,3
#define INTE INTCON,4
#define T0IE INTCON,5
#define PEIE INTCON,6
#define GIE INTCON,7
#define INTEDG OPTION_REG,6
#define NOT_RBPU OPTION_REG,7
#define __XTAL 4
proton#code#start
        org 0
        goto proton#main#start
        org 4
        movwf WSAVE
        movf STATUS,W
        clrf STATUS
        movwf SSAVE
        movf FSR,W
        movwf FSRSAVE
        goto myinterrupt
FIND@ADDRESS
        bcf STATUS,7
        movwf 48
        clrf 49
        rlf 49,F
        movlw 0
        subwf 49,W
        movlw 125
        skpnz
        subwf 48,W
        skpc
        goto $ + 7
        btfsc 47,7
        goto $ + 5
        movlw 35
        addwf 48,F
        skpnc
        incf 49,F
        movlw 0
        subwf 49,W
        movlw 240
        skpnz
        subwf 48,W
        skpc
        goto FA@EXT
        bsf STATUS,7
        movlw 48
        addwf 48,F
FA@EXT
        movf 48,W
        movwf 4
        return
__DELAY_MS_
        clrf 45
__DELAY_MS_W_
        movwf 44
DLY@P
        movlw 255
        addwf 44,F
        skpc
        addwf 45,F
        skpc
        goto I@NT
        movlw 3
        movwf 43
        movlw 223
        call __DELAY_US_W_
        goto DLY@P
__DELAY_US_
        clrf 43
__DELAY_US_W_
        addlw 232
        movwf 42
        comf 43,F
        movlw 252
        skpc
        goto $ + 4
        addwf 42,F
        skpnc
        goto $ - 2
        addwf 42,F
        nop
        incfsz 43,F
        goto $ - 6
        btfsc 42,0
        goto $ + 1
        btfss 42,1
        goto $ + 3
        nop
        goto $ + 1
        return
I@NT
        bcf STATUS,7
        bcf STATUS,5
        bcf STATUS,6
        return
PUT@ARRAY
        movwf 46
PUT@ARRAYW
        movf 33,W
        movwf 47
        addwf 34,W
        call FIND@ADDRESS
        movf 46,W
        movwf INDF
        goto I@NT
proton#main#start
        clrf STATUS
F2_SOF equ $ ; RACAL_BCC39B_I2C_LCD_PIC16F628.PRP
F2_EOF equ $ ; RACAL_BCC39B_I2C_LCD_PIC16F628.PRP
F1_SOF equ $ ; RACAL_BCC39B_I2C_LCD_PIC16F628.BAS
F1_000020 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ALL_DIGITAL = TRUE
        movlw 7
        movwf CMCON
F1_000026 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] TRISB = 255
        movlw 255
        bsf STATUS,5
ram_bank = 1
        movwf TRISB
F1_000027 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] TRISA = 0
        clrf TRISA
F1_000041 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] INTEDG = 1
        bsf OPTION_REG,6
F1_000048 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ENUZUN=0
        bcf STATUS,5
ram_bank = 0
        clrf enuzun
F1_000053 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] FOR SAY = 0 TO 80
        bsf STATUS,5
ram_bank = 1
        clrf say
FR@LB2
        bcf STATUS,5
ram_bank = 0
        movlw 81
        bsf STATUS,5
ram_bank = 1
        subwf say,W
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto NX@LB3
F1_000054 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DEGERLER[SAY] =8
        bsf STATUS,5
ram_bank = 1
        movf say,W
        bcf STATUS,5
ram_bank = 0
        movwf GEN4H
        movlw 76
        movwf GEN4
        movlw 8
        call PUT@ARRAY
CT@LB4
F1_000055 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] NEXT SAY
        movlw 1
        bsf STATUS,5
ram_bank = 1
        addwf say,F
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,0
        goto FR@LB2
NX@LB3
F1_000057 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] KATAR = 0
        clrf KatarH
        clrf Katar
F1_000058 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] POSITION = 0
        clrf Position
F1_000061 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOTO BASLA
        goto Basla
myinterrupt
ram_bank = 0
F1_000065 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CONTEXT SAVE
ram_bank = 0
        movlw _High__Context_Store & 255
        movwf FSR
        bcf STATUS,7
        movf GEN4,W
        movwf INDF
        incf FSR,F
        movf GEN4H,W
        movwf INDF
        incf FSR,F
        movf PP3,W
        movwf INDF
        incf FSR,F
        movf PP3H,W
        movwf INDF
        incf FSR,F
        movf PP6,W
        movwf INDF
        incf FSR,F
        movf PP6H,W
        movwf INDF
F1_000066 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GIE = 0
        bcf INTCON,7
F1_000067 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF INTF = 1 THEN
        btfss INTCON,1
        goto BC@LL6
F1_000069 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF PORTB.1 = 1 THEN
        set@page BC@LL8
        btfss PORTB,1
        goto BC@LL8
F1_000070 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] PORTA.0 = 1
        bsf PORTA,0
F1_000072 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DEGERLER[POSITION] = PORTB.3
        movf Position,W
        movwf GEN4H
        movlw 76
        movwf GEN4
        movlw 0
        btfsc PORTB,3
        movlw 1
        call PUT@ARRAY
F1_000073 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] POSITION = POSITION + 1
        incf Position,F
        goto BC@LL9
BC@LL8
F1_000074 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ELSE
F1_000075 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF POSITION > 40 THEN POSITION = 0
        movlw 41
        subwf Position,W
        btfss STATUS,0
        goto BC@LL11
        clrf Position
BC@LL11
F1_000076 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] KATAR = KATAR + 1
        incf Katar,F
        btfsc STATUS,2
        incf KatarH,F
F1_000077 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ENDIF
BC@LL9
F1_000078 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] INTF = 0
        bcf INTCON,1
F1_000079 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ENDIF
BC@LL6
Cikis
F1_000083 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GIE = 1
        bsf INTCON,7
F1_000084 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CONTEXT RESTORE
        movlw _High__Context_Store & 255
        movwf FSR
        bcf STATUS,7
        movf INDF,W
        movwf GEN4
        incf FSR,F
        movf INDF,W
        movwf GEN4H
        incf FSR,F
        movf INDF,W
        movwf PP3
        incf FSR,F
        movf INDF,W
        movwf PP3H
        incf FSR,F
        movf INDF,W
        movwf PP6
        incf FSR,F
        movf INDF,W
        movwf PP6H
        movf FSRSAVE,W
        movwf FSR
        movf SSAVE,W
        movwf STATUS
        swapf WSAVE,F
        swapf WSAVE,W
        retfie
F1_000085 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] RETURN
        return
Basla
F1_000092 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] INTE = 1
        bsf INTCON,4
F1_000094 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GIE = 1
        bsf INTCON,7
F1_000099 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] RESVALUE=0
        bsf STATUS,5
ram_bank = 1
        clrf ResValue
LCDHazirla
        bcf STATUS,5
ram_bank = 0
F1_000107 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $2A
        movlw 42
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000108 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000109 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000110 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $71
        movlw 113
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000111 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000112 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000113 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $5C
        movlw 92
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000114 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000115 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000116 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $28
        movlw 40
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000117 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000118 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000119 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $08
        movlw 8
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000120 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000121 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000122 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $2A
        movlw 42
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000123 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000124 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000125 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $79
        movlw 121
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000126 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000127 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000128 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $D5
        movlw 213
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000129 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000130 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000131 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $70
        movlw 112
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000132 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000133 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000134 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $78
        movlw 120
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000135 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000136 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000137 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $08
        movlw 8
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000138 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000139 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000140 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $06
        movlw 6
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000141 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000142 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000144 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $2A
        movlw 42
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000145 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000146 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000147 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $79
        movlw 121
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000148 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000149 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000151 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $72
        movlw 114
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000152 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000153 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000154 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $0
        bsf STATUS,5
ram_bank = 1
        clrf Cmd
F1_000155 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000156 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000157 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $DA
        movlw 218
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000158 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000159 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000160 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $10
        movlw 16
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000161 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000162 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000163 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $81
        movlw 129
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000164 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000165 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000166 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $FF
        movlw 255
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000167 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000168 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000169 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $DB
        movlw 219
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000170 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000171 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000172 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $30
        movlw 48
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000173 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000174 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000175 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $DC
        movlw 220
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000176 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000177 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000178 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $03
        movlw 3
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000179 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000180 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000181 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $78
        movlw 120
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000182 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000183 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000184 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $28
        movlw 40
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000185 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000186 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000187 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $2A
        movlw 42
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000189 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000190 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000191 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $06
        movlw 6
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000192 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000193 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000194 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $08
        movlw 8
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000195 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000196 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000197 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $28
        movlw 40
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000198 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000199 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000200 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $01
        movlw 1
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000201 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000202 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000203 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $80
        movlw 128
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000204 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000205 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 10
        movlw 10
        call __DELAY_MS_
F1_000206 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $0C
        movlw 12
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000207 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000210 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 100
        movlw 100
        call __DELAY_MS_
F1_000211 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $80
        movlw 128
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000212 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000213 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR = " RACAL BCC39B   "
        movlw 32
        movwf Satir#0
        movlw 82
        movwf Satir#1
        movlw 65
        movwf Satir#2
        movlw 67
        movwf Satir#3
        movlw 65
        movwf Satir#4
        movlw 76
        movwf Satir#5
        movlw 32
        movwf Satir#6
        movlw 66
        movwf Satir#7
        movlw 67
        movwf Satir#8
        movwf Satir#9
        movlw 51
        movwf Satir#10
        movlw 57
        movwf Satir#11
        movlw 66
        movwf Satir#12
        movlw 32
        movwf Satir#13
        movwf Satir#14
        movwf Satir#15
F1_000214 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB SATIRGONDER
        call SatirGonder
F1_000215 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $C0
        movlw 192
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000216 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000217 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR = " TA7W BARIS-2015"
        movlw 32
        movwf Satir#0
        movlw 84
        movwf Satir#1
        movlw 65
        movwf Satir#2
        movlw 55
        movwf Satir#3
        movlw 87
        movwf Satir#4
        movlw 32
        movwf Satir#5
        movlw 66
        movwf Satir#6
        movlw 97
        movwf Satir#7
        movlw 114
        movwf Satir#8
        movlw 105
        movwf Satir#9
        movlw 115
        movwf Satir#10
        movlw 45
        movwf Satir#11
        movlw 50
        movwf Satir#12
        movlw 48
        movwf Satir#13
        movlw 49
        movwf Satir#14
        movlw 53
        movwf Satir#15
F1_000218 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB SATIRGONDER
        call SatirGonder
F1_000219 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        call __DELAY_MS_W_
Dongu
F1_000225 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] TOGGLE PORTA.2
        movlw 4
        xorwf PORTA,F
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,2
F1_000227 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[0] = DEGERLER[35]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#35,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#0
F1_000228 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[1] = DEGERLER[31]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#31,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#1
F1_000229 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[2] = DEGERLER[1]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#1,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#2
F1_000230 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[3] = DEGERLER[3]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#3,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#3
F1_000231 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[4] = DEGERLER[36]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#36,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#4
F1_000232 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[5] = DEGERLER[2]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#2,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#5
F1_000233 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[6] = DEGERLER[65]
        movf Degerler#65,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#6
F1_000234 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB CALCVALUE
        bcf STATUS,5
ram_bank = 0
        call CalcValue
F1_000235 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] FRQDIGITS[1] = RESVALUE
        bsf STATUS,5
ram_bank = 1
        movf ResValue,W
        movwf FrqDigits#1
F1_000239 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[0] = DEGERLER[4]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#4,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#0
F1_000240 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[1] = DEGERLER[38]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#38,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#1
F1_000241 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[2] = DEGERLER[21]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#21,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#2
F1_000242 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[3] = DEGERLER[55]
        movf Degerler#55,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#3
F1_000243 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[4] = DEGERLER[56]
        movf Degerler#56,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#4
F1_000244 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[5] = DEGERLER[37]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#37,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#5
F1_000245 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[6] = DEGERLER[22]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#22,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#6
F1_000246 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB CALCVALUE
        bcf STATUS,5
ram_bank = 0
        call CalcValue
F1_000247 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] FRQDIGITS[2] = RESVALUE
        bsf STATUS,5
ram_bank = 1
        movf ResValue,W
        movwf FrqDigits#2
F1_000251 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[0] = DEGERLER[5]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#5,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#0
F1_000252 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[1] = DEGERLER[28]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#28,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#1
F1_000253 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[2] = DEGERLER[29]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#29,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#2
F1_000254 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[3] = DEGERLER[63]
        movf Degerler#63,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#3
F1_000255 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[4] = DEGERLER[64]
        movf Degerler#64,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#4
F1_000256 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[5] = DEGERLER[30]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#30,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#5
F1_000257 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[6] = DEGERLER[62]
        movf Degerler#62,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#6
F1_000258 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB CALCVALUE
        bcf STATUS,5
ram_bank = 0
        call CalcValue
F1_000259 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] FRQDIGITS[3] = RESVALUE
        bsf STATUS,5
ram_bank = 1
        movf ResValue,W
        movwf FrqDigits#3
F1_000263 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[0] = DEGERLER[6]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#6,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#0
F1_000264 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[1] = DEGERLER[40]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#40,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#1
F1_000265 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[2] = DEGERLER[26]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#26,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#2
F1_000266 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[3] = DEGERLER[60]
        movf Degerler#60,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#3
F1_000267 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[4] = DEGERLER[61]
        movf Degerler#61,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#4
F1_000268 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[5] = DEGERLER[39]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#39,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#5
F1_000269 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[6] = DEGERLER[27]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#27,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#6
F1_000270 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB CALCVALUE
        bcf STATUS,5
ram_bank = 0
        call CalcValue
F1_000271 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] FRQDIGITS[4] = RESVALUE
        bsf STATUS,5
ram_bank = 1
        movf ResValue,W
        movwf FrqDigits#4
F1_000274 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[0] = DEGERLER[7]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#7,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#0
F1_000275 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[1] = DEGERLER[23]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#23,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#1
F1_000276 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[2] = DEGERLER[24]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#24,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#2
F1_000277 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[3] = DEGERLER[58]
        movf Degerler#58,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#3
F1_000278 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[4] = DEGERLER[59]
        movf Degerler#59,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#4
F1_000279 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[5] = DEGERLER[25]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#25,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#5
F1_000280 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[6] = DEGERLER[57]
        movf Degerler#57,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#6
F1_000281 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB CALCVALUE
        bcf STATUS,5
ram_bank = 0
        call CalcValue
F1_000282 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] FRQDIGITS[5] = RESVALUE
        bsf STATUS,5
ram_bank = 1
        movf ResValue,W
        movwf FrqDigits#5
F1_000285 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[0] = DEGERLER[8]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#8,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#0
F1_000286 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[1] = DEGERLER[42]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#42,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#1
F1_000287 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[2] = DEGERLER[19]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#19,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#2
F1_000288 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[3] = DEGERLER[53]
        movf Degerler#53,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#3
F1_000289 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[4] = DEGERLER[54]
        movf Degerler#54,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#4
F1_000290 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[5] = DEGERLER[41]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#41,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#5
F1_000291 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[6] = DEGERLER[20]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#20,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#6
F1_000292 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB CALCVALUE
        bcf STATUS,5
ram_bank = 0
        call CalcValue
F1_000293 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] FRQDIGITS[6] = RESVALUE
        bsf STATUS,5
ram_bank = 1
        movf ResValue,W
        movwf FrqDigits#6
F1_000296 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[0] = DEGERLER[15]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#15,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#0
F1_000297 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[1] = DEGERLER[49]
        movf Degerler#49,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#1
F1_000298 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[2] = DEGERLER[50]
        movf Degerler#50,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#2
F1_000299 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[3] = DEGERLER[43]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#43,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#3
F1_000300 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[4] = DEGERLER[48]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#48,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#4
F1_000301 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[5] = DEGERLER[14]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#14,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#5
F1_000302 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SEGMENTS[6] = DEGERLER[16]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#16,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#6
F1_000303 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB CALCVALUE
        bcf STATUS,5
ram_bank = 0
        call CalcValue
F1_000304 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CHANNEL = RESVALUE
        bsf STATUS,5
ram_bank = 1
        movf ResValue,W
        movwf Channel
F1_000306 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $80
        movlw 128
        movwf Cmd
F1_000307 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000309 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF CHANNEL != " " THEN
        movlw 32
        bsf STATUS,5
ram_bank = 1
        subwf Channel,W
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,2
        goto BC@LL13
F1_000310 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[0] = "C"
        movlw 67
        movwf Satir#0
F1_000311 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[1] = "H"
        movlw 72
        movwf Satir#1
F1_000312 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[2] = CHANNEL
        bsf STATUS,5
ram_bank = 1
        movf Channel,W
        bcf STATUS,5
ram_bank = 0
        movwf Satir#2
        goto BC@LL14
BC@LL13
F1_000313 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ELSE
F1_000314 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[0] = " "
        movlw 32
        movwf Satir#0
F1_000315 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[1] = " "
        movwf Satir#1
F1_000316 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[2] = " "
        movwf Satir#2
F1_000317 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ENDIF
BC@LL14
F1_000318 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[3] = " "
        movlw 32
        movwf Satir#3
F1_000319 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DEGERLER[47] = 1 THEN
        movf Degerler#47,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        btfss STATUS,2
        goto BC@LL16
F1_000320 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[4] = "T"
        movlw 84
        movwf Satir#4
F1_000321 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[5] = "X"
        movlw 88
        movwf Satir#5
        goto BC@LL17
BC@LL16
F1_000322 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ELSE
F1_000323 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[4] = " "
        movlw 32
        movwf Satir#4
F1_000324 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[5] = " "
        movwf Satir#5
F1_000325 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ENDIF
BC@LL17
F1_000326 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[6] = " "
        movlw 32
        movwf Satir#6
F1_000327 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DEGERLER[10] = 1 THEN
        movf Degerler#10,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        btfss STATUS,2
        goto BC@LL19
F1_000328 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[7] = "H"
        movlw 72
        movwf Satir#7
        goto BC@LL20
BC@LL19
F1_000329 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ELSE
F1_000330 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[7] = "L"
        movlw 76
        movwf Satir#7
F1_000331 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ENDIF
BC@LL20
F1_000332 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[8] = " "
        movlw 32
        movwf Satir#8
F1_000333 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[9] = FRQDIGITS[1]
        bsf STATUS,5
ram_bank = 1
        movf FrqDigits#1,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        movwf Satir#9
F1_000334 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[10] = FRQDIGITS[2]
        bsf STATUS,5
ram_bank = 1
        movf FrqDigits#2,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        movwf Satir#10
F1_000335 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[11] = "."
        movlw 46
        movwf Satir#11
F1_000336 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[12] = FRQDIGITS[3]
        bsf STATUS,5
ram_bank = 1
        movf FrqDigits#3,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        movwf Satir#12
F1_000337 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[13] = FRQDIGITS[4]
        bsf STATUS,5
ram_bank = 1
        movf FrqDigits#4,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        movwf Satir#13
F1_000338 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[14] = FRQDIGITS[5]
        bsf STATUS,5
ram_bank = 1
        movf FrqDigits#5,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        movwf Satir#14
F1_000339 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[15] = FRQDIGITS[6]
        bsf STATUS,5
ram_bank = 1
        movf FrqDigits#6,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        movwf Satir#15
F1_000340 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB SATIRGONDER
        call SatirGonder
F1_000341 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000343 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] CMD = $C0
        movlw 192
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000344 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        call KomutGonder
F1_000345 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DEGERLER[52] = 1 THEN
        bsf STATUS,5
ram_bank = 1
        movf Degerler#52,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        btfss STATUS,2
        goto BC@LL22
F1_000346 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[0] = ">"
        movlw 62
        movwf Satir#0
        goto BC@LL23
BC@LL22
F1_000347 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ELSE
F1_000348 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[0] = " "
        movlw 32
        movwf Satir#0
F1_000349 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ENDIF
BC@LL23
F1_000350 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DEGERLER[51] = 1 THEN
        bsf STATUS,5
ram_bank = 1
        movf Degerler#51,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        btfss STATUS,2
        goto BC@LL25
F1_000351 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[1] = ">"
        movlw 62
        movwf Satir#1
        goto BC@LL26
BC@LL25
F1_000352 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ELSE
F1_000353 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[1] = " "
        movlw 32
        movwf Satir#1
F1_000354 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ENDIF
BC@LL26
F1_000355 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DEGERLER[17] = 1 THEN
        movf Degerler#17,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        btfss STATUS,2
        goto BC@LL28
F1_000356 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[2] = ">"
        movlw 62
        movwf Satir#2
        goto BC@LL29
BC@LL28
F1_000357 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ELSE
F1_000358 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[2] = " "
        movlw 32
        movwf Satir#2
F1_000359 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ENDIF
BC@LL29
F1_000360 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DEGERLER[18] = 1 THEN
        movf Degerler#18,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        btfss STATUS,2
        goto BC@LL31
F1_000361 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[3] = ">"
        movlw 62
        movwf Satir#3
        goto BC@LL32
BC@LL31
F1_000362 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ELSE
F1_000363 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[3] = " "
        movlw 32
        movwf Satir#3
F1_000364 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ENDIF
BC@LL32
F1_000366 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[1] = " "
        movlw 32
        movwf Satir#1
F1_000367 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[2] = " "
        movwf Satir#2
F1_000368 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[3] = " "
        movwf Satir#3
F1_000369 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DEGERLER[13] = 1 THEN
        movf Degerler#13,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        btfss STATUS,2
        goto BC@LL34
F1_000370 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[4] = "R"
        movlw 82
        movwf Satir#4
F1_000371 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[5] = "X"
        movlw 88
        movwf Satir#5
        goto BC@LL35
BC@LL34
F1_000372 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ELSE
F1_000373 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[4] = " "
        movlw 32
        movwf Satir#4
F1_000374 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[5] = " "
        movwf Satir#5
F1_000375 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ENDIF
BC@LL35
F1_000376 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[6] = " "
        movlw 32
        movwf Satir#6
F1_000377 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[7] = " "
        movwf Satir#7
F1_000378 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[8] = " "
        movwf Satir#8
F1_000379 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DEGERLER[11] = 1 THEN
        movf Degerler#11,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        btfss STATUS,2
        goto BC@LL37
F1_000380 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[9] = "<"
        movlw 60
        movwf Satir#9
F1_000381 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[10] = ">"
        movlw 62
        movwf Satir#10
        goto BC@LL38
BC@LL37
F1_000382 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ELSE
F1_000383 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[9] = " "
        movlw 32
        movwf Satir#9
F1_000384 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[10] = " "
        movwf Satir#10
F1_000385 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ENDIF
BC@LL38
F1_000386 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[11] = " "
        movlw 32
        movwf Satir#11
F1_000387 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DEGERLER[45] = 1 THEN
        movf Degerler#45,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        btfss STATUS,2
        goto BC@LL40
F1_000388 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[12] = "N"
        movlw 110
        movwf Satir#12
        goto BC@LL41
BC@LL40
F1_000389 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ELSE
F1_000390 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[12] = " "
        movlw 32
        movwf Satir#12
F1_000391 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ENDIF
BC@LL41
F1_000393 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DEGERLER[12] = 1 THEN
        movf Degerler#12,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        btfss STATUS,2
        goto BC@LL43
F1_000394 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[13] = "U"
        movlw 85
        movwf Satir#13
F1_000395 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[14] = "S"
        movlw 83
        movwf Satir#14
F1_000396 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[15] = "B"
        movlw 66
        movwf Satir#15
        goto BC@LL44
BC@LL43
F1_000397 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ELSE
F1_000398 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[13] = "L"
        movlw 76
        movwf Satir#13
F1_000399 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[14] = "S"
        movlw 83
        movwf Satir#14
F1_000400 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] SATIR[15] = "B"
        movlw 66
        movwf Satir#15
F1_000401 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ENDIF
BC@LL44
F1_000402 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB SATIRGONDER
        call SatirGonder
F1_000403 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYMS 1
        movlw 1
        call __DELAY_MS_
F1_000405 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOTO DONGU
        goto Dongu
CalcValue
F1_000411 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DECVALUE = SEGMENTS[0]+SEGMENTS[1]*2+SEGMENTS[2]*4+SEGMENTS[3]*8+SEGMENTS[4]*16+SEGMENTS[5]*32+SEGMENTS[6]*64
        bsf STATUS,5
ram_bank = 1
        movf Segments#0,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        clrf PP7H
        movf PBP#VAR0,W
        movwf PP7
        bsf STATUS,5
ram_bank = 1
        movf Segments#1,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR1
        clrf PP8H
        movf PBP#VAR1,W
        movwf PP8
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        bsf STATUS,5
ram_bank = 1
        movf Segments#2,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR2
        clrf PP8H
        movf PBP#VAR2,W
        movwf PP8
        rlf PP8,F
        rlf PP8H,F
        rlf PP8,F
        rlf PP8H,F
        movlw 252
        andwf PP8,F
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        bsf STATUS,5
ram_bank = 1
        movf Segments#3,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR3
        clrf PP8H
        movf PBP#VAR3,W
        movwf PP8
        movlw 3
        movwf PP0
M@LB2
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decfsz PP0,F
        goto M@LB2
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        bsf STATUS,5
ram_bank = 1
        movf Segments#4,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR4
        clrf PP8H
        movf PBP#VAR4,W
        movwf PP8
        movlw 4
        movwf PP0
M@LB3
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decfsz PP0,F
        goto M@LB3
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        bsf STATUS,5
ram_bank = 1
        movf Segments#5,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR5
        clrf PP8H
        movf PBP#VAR5,W
        movwf PP8
        movlw 5
        movwf PP0
M@LB4
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decfsz PP0,F
        goto M@LB4
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        bsf STATUS,5
ram_bank = 1
        movf Segments#6,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR6
        clrf PP8H
        movf PBP#VAR6,W
        movwf PP8
        movlw 6
        movwf PP0
M@LB5
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decfsz PP0,F
        goto M@LB5
        movf PP7,W
        addwf PP8,W
        bsf STATUS,5
ram_bank = 1
        movwf DecValue
F1_000412 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] RESVALUE = "-"
        movlw 45
        movwf ResValue
F1_000413 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DECVALUE = 0   THEN RESVALUE = " "
        movf DecValue,F
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL46
        movlw 32
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL46
        bcf STATUS,5
ram_bank = 0
F1_000414 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DECVALUE = 63  THEN RESVALUE = "0"
        movlw 63
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL48
        movlw 48
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL48
        bcf STATUS,5
ram_bank = 0
F1_000415 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DECVALUE = 6   THEN RESVALUE = "1"
        movlw 6
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL50
        movlw 49
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL50
        bcf STATUS,5
ram_bank = 0
F1_000416 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DECVALUE = 91  THEN RESVALUE = "2"
        movlw 91
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL52
        movlw 50
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL52
        bcf STATUS,5
ram_bank = 0
F1_000417 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DECVALUE = 79  THEN RESVALUE = "3"
        movlw 79
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL54
        movlw 51
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL54
        bcf STATUS,5
ram_bank = 0
F1_000418 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DECVALUE = 102 THEN RESVALUE = "4"
        movlw 102
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL56
        movlw 52
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL56
        bcf STATUS,5
ram_bank = 0
F1_000419 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DECVALUE = 109 THEN RESVALUE = "5"
        movlw 109
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL58
        movlw 53
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL58
        bcf STATUS,5
ram_bank = 0
F1_000420 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DECVALUE = 125 THEN RESVALUE = "6"
        movlw 125
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL60
        movlw 54
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL60
        bcf STATUS,5
ram_bank = 0
F1_000421 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DECVALUE = 7   THEN RESVALUE = "7"
        movlw 7
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL62
        movlw 55
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL62
        bcf STATUS,5
ram_bank = 0
F1_000422 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DECVALUE = 127 THEN RESVALUE = "8"
        movlw 127
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL64
        movlw 56
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL64
        bcf STATUS,5
ram_bank = 0
F1_000423 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DECVALUE = 111 THEN RESVALUE = "9"
        movlw 111
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL66
        movlw 57
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL66
        bcf STATUS,5
ram_bank = 0
F1_000424 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DECVALUE = 120 THEN RESVALUE = "T"
        movlw 120
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL68
        movlw 116
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL68
        bcf STATUS,5
ram_bank = 0
F1_000425 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DECVALUE = 28  THEN RESVALUE = "U"
        movlw 28
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL70
        movlw 85
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL70
        bcf STATUS,5
ram_bank = 0
F1_000426 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DECVALUE = 84  THEN RESVALUE = "N"
        movlw 84
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL72
        movlw 110
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL72
        bcf STATUS,5
ram_bank = 0
F1_000427 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DECVALUE = 88  THEN RESVALUE = "E"
        movlw 88
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL74
        movlw 101
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL74
        bcf STATUS,5
ram_bank = 0
F1_000443 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] RETURN
        return
KomutGonder
F1_000448 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] LOW SDA
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,4
        bcf STATUS,5
ram_bank = 0
        bcf PORTA,4
F1_000449 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYUS 10
        movlw 3
        movwf PP0
        decfsz PP0,F
        goto $ - 1
        nop
F1_000450 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] LOW SCL
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,3
        bcf STATUS,5
ram_bank = 0
        bcf PORTA,3
F1_000451 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYUS 10
        movlw 3
        movwf PP0
        decfsz PP0,F
        goto $ - 1
        nop
F1_000452 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DATAM = $78
        movlw 120
        bsf STATUS,5
ram_bank = 1
        movwf DATAm
F1_000453 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB GONDER
        bcf STATUS,5
ram_bank = 0
        call Gonder
F1_000454 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DATAM = $80
        movlw 128
        bsf STATUS,5
ram_bank = 1
        movwf DATAm
F1_000455 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB GONDER
        bcf STATUS,5
ram_bank = 0
        call Gonder
F1_000456 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DATAM = CMD
        bsf STATUS,5
ram_bank = 1
        movf Cmd,W
        movwf DATAm
F1_000457 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB GONDER
        bcf STATUS,5
ram_bank = 0
        call Gonder
F1_000459 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] HIGH SCL
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,3
        bcf STATUS,5
ram_bank = 0
        bsf PORTA,3
F1_000460 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYUS 1
        nop
F1_000461 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] HIGH SDA
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,4
        bcf STATUS,5
ram_bank = 0
        bsf PORTA,4
F1_000463 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] RETURN
        return
DataGonder
F1_000467 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] LOW SDA
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,4
        bcf STATUS,5
ram_bank = 0
        bcf PORTA,4
F1_000468 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYUS 10
        movlw 3
        movwf PP0
        decfsz PP0,F
        goto $ - 1
        nop
F1_000469 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] LOW SCL
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,3
        bcf STATUS,5
ram_bank = 0
        bcf PORTA,3
F1_000470 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYUS 10
        movlw 3
        movwf PP0
        decfsz PP0,F
        goto $ - 1
        nop
F1_000472 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DATAM = $78
        movlw 120
        bsf STATUS,5
ram_bank = 1
        movwf DATAm
F1_000473 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB GONDER
        bcf STATUS,5
ram_bank = 0
        call Gonder
F1_000474 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DATAM = $40
        movlw 64
        bsf STATUS,5
ram_bank = 1
        movwf DATAm
F1_000475 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB GONDER
        bcf STATUS,5
ram_bank = 0
        call Gonder
F1_000476 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DATAM = LCDDATA
        bsf STATUS,5
ram_bank = 1
        movf LcdData,W
        movwf DATAm
F1_000477 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB GONDER
        bcf STATUS,5
ram_bank = 0
        call Gonder
F1_000480 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] HIGH SCL
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,3
        bcf STATUS,5
ram_bank = 0
        bsf PORTA,3
F1_000481 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYUS 1
        nop
F1_000482 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] HIGH SDA
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,4
        bcf STATUS,5
ram_bank = 0
        bsf PORTA,4
F1_000484 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] RETURN
        return
Gonder
F1_000491 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] FOR DON = 1 TO 8
        movlw 1
        bsf STATUS,5
ram_bank = 1
        movwf don
FR@LB75
        bcf STATUS,5
ram_bank = 0
        movlw 9
        bsf STATUS,5
ram_bank = 1
        subwf don,W
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto NX@LB76
F1_000492 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] IF DATAM.7 = 0 THEN
        set@page BC@LL79
        bsf STATUS,5
ram_bank = 1
        rlf DATAm,W
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto BC@LL79
F1_000493 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] LOW SDA
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,4
        bcf STATUS,5
ram_bank = 0
        bcf PORTA,4
        goto BC@LL80
BC@LL79
F1_000494 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ELSE
F1_000495 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] HIGH SDA
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,4
        bcf STATUS,5
ram_bank = 0
        bsf PORTA,4
F1_000496 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] ENDIF
BC@LL80
F1_000497 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DATAM = DATAM << 1
        bcf STATUS,0
        bsf STATUS,5
ram_bank = 1
        rlf DATAm,F
F1_000498 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYUS 1
        nop
F1_000499 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] HIGH SCL
        bcf TRISA,3
        bcf STATUS,5
ram_bank = 0
        bsf PORTA,3
F1_000500 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYUS 9
        movlw 2
        movwf PP0
        decfsz PP0,F
        goto $ - 1
        goto $ + 1
F1_000501 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] LOW SCL
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,3
        bcf STATUS,5
ram_bank = 0
        bcf PORTA,3
CT@LB77
F1_000502 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] NEXT DON
        movlw 1
        bsf STATUS,5
ram_bank = 1
        addwf don,F
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,0
        goto FR@LB75
NX@LB76
F1_000505 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYUS 1
        nop
F1_000506 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] HIGH SCL
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,3
        bcf STATUS,5
ram_bank = 0
        bsf PORTA,3
F1_000507 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYUS 9
        movlw 2
        movwf PP0
        decfsz PP0,F
        goto $ - 1
        goto $ + 1
F1_000508 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] LOW SCL
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,3
        bcf STATUS,5
ram_bank = 0
        bcf PORTA,3
F1_000509 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] RETURN
        return
SatirGonder
F1_000516 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] FOR SAY = 0 TO 15
        bsf STATUS,5
ram_bank = 1
        clrf say
FR@LB81
        bcf STATUS,5
ram_bank = 0
        movlw 16
        bsf STATUS,5
ram_bank = 1
        subwf say,W
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto NX@LB82
F1_000517 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] LCDDATA = SATIR[SAY]
        bsf STATUS,5
ram_bank = 1
        movf say,W
        addlw Satir
        movwf FSR
        movf INDF,W
        movwf LcdData
F1_000518 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] GOSUB DATAGONDER
        bcf STATUS,5
ram_bank = 0
        call DataGonder
F1_000519 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] DELAYUS 10
        movlw 3
        movwf PP0
        decfsz PP0,F
        goto $ - 1
        nop
CT@LB83
F1_000520 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] NEXT SAY
        movlw 1
        bsf STATUS,5
ram_bank = 1
        addwf say,F
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,0
        goto FR@LB81
NX@LB82
F1_000522 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] RETURN
        return
F1_000523 equ $ ; IN [RACAL_BCC39B_I2C_LCD_PIC16F628.BAS] END
PB@LB84
        goto PB@LB84
F1_EOF equ $ ; RACAL_BCC39B_I2C_LCD_PIC16F628.BAS
PB@LB85
        goto PB@LB85
__EOF
__config INTRC_OSC_NOCLKOUT&WDT_OFF&PWRTE_ON&BODEN_OFF&LVP_OFF&CP_OFF&MCLRE_OFF&DATA_CP_OFF
        end
