;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.4.5
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. May 2012
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16F877, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
INDF equ 0X0000
TMR0 equ 0X0001
PCL equ 0X0002
STATUS equ 0X0003
FSR equ 0X0004
PORTA equ 0X0005
PORTB equ 0X0006
PORTC equ 0X0007
PORTD equ 0X0008
PORTE equ 0X0009
PCLATH equ 0X000A
INTCON equ 0X000B
PIR1 equ 0X000C
PIR2 equ 0X000D
TMR1L equ 0X000E
TMR1LH equ 0X000F
TMR1H equ 0X000F
T1CON equ 0X0010
TMR2 equ 0X0011
T2CON equ 0X0012
SSPBUF equ 0X0013
SSPCON equ 0X0014
CCPR1L equ 0X0015
CCPR1LH equ 0X0016
CCPR1H equ 0X0016
CCP1CON equ 0X0017
RCSTA equ 0X0018
TXREG equ 0X0019
RCREG equ 0X001A
CCPR2L equ 0X001B
CCPR2LH equ 0X001C
CCPR2H equ 0X001C
CCP2CON equ 0X001D
ADRESLH equ 0X001E
ADRESH equ 0X001E
ADCON0 equ 0X001F
OPTION_REG equ 0X0081
TRISA equ 0X0085
TRISB equ 0X0086
TRISC equ 0X0087
TRISD equ 0X0088
TRISE equ 0X0089
PIE1 equ 0X008C
PIE2 equ 0X008D
PCON equ 0X008E
SSPCON2 equ 0X0091
PR2 equ 0X0092
SSPADD equ 0X0093
SSPSTAT equ 0X0094
TXSTA equ 0X0098
SPBRG equ 0X0099
ADRESL equ 0X009E
ADCON1 equ 0X009F
EEDATL equ 0X010C
EEDATA equ 0X010C
EEDAT equ 0X010C
EEADR equ 0X010D
EEDATLH equ 0X010E
EEDATH equ 0X010E
EEADRH equ 0X010F
EECON1 equ 0X018C
EECON2 equ 0X018D
_I2C_SCL_PORT=TRISC
_I2C_SCL_PIN=3
_I2C_SDA_PORT=TRISC
_I2C_SDA_PIN=4
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
PSPIF=7
ADIF=6
RCIF=5
PP_RCIF=5
TXIF=4
PP_TXIF=4
SSPIF=3
CCP1IF=2
TMR2IF=1
TMR1IF=0
EEIF=4
BCLIF=3
CCP2IF=0
T1CKPS1=5
T1CKPS0=4
T1OSCEN=3
NOT_T1SYNC=2
T1INSYNC=2
T1SYNC=2
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
WCOL=7
SSPOV=6
SSPEN=5
CKP=4
SSPM3=3
SSPM2=2
SSPM1=1
SSPM0=0
CCP1X=5
CCP1Y=4
CCP1M3=3
CCP1M2=2
CCP1M1=1
CCP1M0=0
SPEN=7
RX9=6
RC9=6
NOT_RC8=6
RC8_9=6
SREN=5
CREN=4
PP_CREN=4
ADDEN=3
FERR=2
OERR=1
PP_OERR=1
RX9D=0
RCD8=0
CCP2X=5
CCP2Y=4
CCP2M3=3
CCP2M2=2
CCP2M1=1
CCP2M0=0
ADCS1=7
ADCS0=6
CHS2=5
CHS1=4
CHS0=3
GO=2
NOT_DONE=2
GO_DONE=2
PP_GO_DONE=2
ADON=0
NOT_RBPU=7
INTEDG=6
T0CS=5
T0SE=4
PSA=3
PS2=2
PS1=1
PS0=0
IBF=7
OBF=6
IBOV=5
PSPMODE=4
TRISE2=2
TRISE1=1
TRISE0=0
PSPIE=7
ADIE=6
RCIE=5
TXIE=4
SSPIE=3
CCP1IE=2
TMR2IE=1
TMR1IE=0
EEIE=4
BCLIE=3
CCP2IE=0
NOT_POR=1
NOT_BO=0
NOT_BOR=0
GCEN=7
ACKSTAT=6
PP_ACKSTAT=6
ACKDT=5
PP_ACKDT=5
ACKEN=4
PP_ACKEN=4
RCEN=3
PP_RCEN=3
PEN=2
PP_PEN=2
RSEN=1
PP_RSEN=1
SEN=0
PP_SEN=0
SMP=7
CKE=6
I2C_DATA=5
NOT_A=5
NOT_ADDRESS=5
D_A=5
DATA_ADDRESS=5
I2C_STOP=4
I2C_START=3
I2C_READ=2
NOT_W=2
NOT_WRITE=2
R_W=2
PP_R_W=2
READ_WRITE=2
UA=1
BF=0
PP_BF=0
CSRC=7
TX9=6
NOT_TX8=6
TX8_9=6
TXEN=5
SYNC=4
BRGH=2
TRMT=1
TX9D=0
TXD8=0
ADFM=7
PCFG3=3
PCFG2=2
PCFG1=1
PCFG0=0
EEPGD=7
PP_EEPGD=7
WRERR=3
PP_WRERR=3
WREN=2
PP_WREN=2
WR=1
PP_WR=1
RD=0
PP_RD=0
  __MAXRAM 0X1FF
  __BADRAM 0X8F-0X90, 0X95-0X97, 0X9A-0X9D
  __BADRAM 0X105, 0X107-0X109
  __BADRAM 0X185, 0X187-0X189, 0X18E-0X18F
CP_ALL equ 0X0FCF
CP_HALF equ 0X1FDF
CP_UPPER_256 equ 0X2FEF
CP_OFF equ 0X3FFF
DEBUG_ON equ 0X37FF
DEBUG_OFF equ 0X3FFF
WRTE_ON equ 0X3FFF
WRT_ENABLE_ON equ 0X3FFF
WRTE_OFF equ 0X3DFF
WRT_ENABLE_OFF equ 0X3DFF
CPD_ON equ 0X3EFF
CPD_OFF equ 0X3FFF
LVP_ON equ 0X3FFF
LVP_OFF equ 0X3F7F
BODEN_ON equ 0X3FFF
BODEN_OFF equ 0X3FBF
PWRTE_OFF equ 0X3FFF
PWRTE_ON equ 0X3FF7
WDT_ON equ 0X3FFF
WDT_OFF equ 0X3FFB
LP_OSC equ 0X3FFC
XT_OSC equ 0X3FFD
HS_OSC equ 0X3FFE
RC_OSC equ 0X3FFF
BOREN_OFF equ 0X3FBF
BOREN_ON equ 0X3FFF
FOSC_EXTRC equ 0X3FFF
FOSC_HS equ 0X3FFE
FOSC_LP equ 0X3FFC
FOSC_XT equ 0X3FFD
WDTE_OFF equ 0X3FFB
WDTE_ON equ 0X3FFF
WRT_OFF equ 0X3DFF
WRT_ON equ 0X3FFF
#define __16F877 1
#define XTAL 10
#define _CORE 14
#define _MAXRAM 368
#define _RAM_END 0X0170
#define _MAXMEM 8192
#define _ADC 8
#define _ADC_RES 10
#define _EEPROM 256
#define _PAGES 4
#define _BANKS 3
#define RAM_BANKS 4
#define _USART 1
#define _USB 0
#define _FLASH 1
#define _CWRITE_BLOCK 1
#define BANK0_START 0X20
#define BANK0_END 0X7B
#define BANK1_START 0X00A0
#define BANK1_END 0X00EF
#define BANK2_START 0X0110
#define BANK2_END 0X016F
#define BANK3_START 0X0190
#define BANK3_END 0X01EF
#define _SYSTEM_VARIABLE_COUNT 16
ram_bank = 0
CURRENT@PAGE = 0
DEST@PAGE = 0
#define LCD#DTPORT PORTD
#define LCD#DTPIN 4
#define LCD#RSPORT PORTD
#define LCD#RSPIN 2
#define LCD#ENPORT PORTD
#define LCD#ENPIN 3
#define LCD#INTERFACE 4
#define LCD#LINES 4
#define LCD#TYPE 0
#define __INTERRUPTS_ENABLED 1
f@call macro pDest
if(pDest < 1)
if((pDest & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((pDest & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
else
if(pDest > $)
if((pDest & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((pDest & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
else
if((pDest & 6144) == 0)
        clrf 10
else
if((pDest & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((pDest & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
endif
endif
endif
        call pDest
        endm
f@jump macro pDest
if(pDest < 1)
if((pDest & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((pDest & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
else
if(pDest > $)
if((pDest & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((pDest & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
else
if((pDest & 6144) == 0)
        clrf 10
else
if((pDest & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((pDest & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
endif
endif
endif
        goto pDest
        endm
set@page macro pDest
if((pDest & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((pDest & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
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
BPF = 32
BPFH = 33
GEN = 34
GEN4 = 35
GEN4H = 36
PP0 = 37
PP0H = 38
PP1 = 39
PP1H = 40
PP2 = 41
PP2H = 42
PP3 = 43
PP3H = 44
PP4 = 45
PP5 = 46
SP#P9 = 47
FSRSAVE = 124
PSAVE = 125
SSAVE = 126
WSAVE = 127
zaman = 48
zamanH = 49
zaman2 = 50
zaman2H = 51
uS = 52
uSH = 53
mS = 54
mSH = 55
_S = 56
_SH = 57
EnKisa = 58
EnKisaH = 59
EnUzun = 60
EnUzunH = 61
timerKur = 62
timerKurH = 63
timerKurHH = 64
timerKurHHH = 65
mystr = 66
variable mystr#0=66,mystr#1=67,mystr#2=68,mystr#3=69
variable mystr#4=70,mystr#5=71,mystr#6=72,mystr#7=73
variable mystr#8=74,mystr#9=75,mystr#10=76,mystr#11=77
variable mystr#12=78,mystr#13=79,mystr#14=80,mystr#15=81
variable mystr#16=82,mystr#17=83,mystr#18=84,mystr#19=85
variable mystr#20=86,mystr#21=87,mystr#22=88,mystr#23=89
variable mystr#24=90,mystr#25=91,mystr#26=92,mystr#27=93
variable mystr#28=94,mystr#29=95,mystr#30=96,mystr#31=97
CLKcnt = 98
CLKcntH = 99
DataRead = 100
DataReadH = 101
DataReadHH = 102
DataReadHHH = 103
bloksay = 104
bloksayH = 105
buffer = 106
bufferH = 107
posIndex = 108
posIndexH = 109
_B#VR1 = 110
portDurum = 111
_High__Context_Store = 112
variable _High__Context_Store#0=112
#define __LCD_DTPORT PORTD
#define __LCD_RSPORT PORTD
#define __LCD_ENPORT PORTD
#define RBIF INTCON,0
#define INTF INTCON,1
#define T0IF INTCON,2
#define RBIE INTCON,3
#define INTE INTCON,4
#define T0IE INTCON,5
#define PEIE INTCON,6
#define GIE INTCON,7
#define TMR1IF PIR1,0
#define Timer1 TMR1L
#define Timer1H TMR1LH
#define TMR1_Enable PIE1,0
#define TMR1_Overflow PIR1,0
#define TMR1_On T1CON,0
#define startReading _B#VR1,0
#define __XTAL 10
#define __LCD_INTERFACE 4
#define __LCD_DTPIN 4
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_LINES 4
#define TMR1_Val 65400
#define TMR1_ValH 255
#define TMR1_mS 1
proton#code#start
        org 0
        nop
        movlw (proton#main#start >> 8) & 255
        movwf PCLATH
        goto proton#main#start
        org 4
        movwf WSAVE
        movf STATUS,W
        clrf STATUS
        movwf SSAVE
        movf FSR,W
        movwf FSRSAVE
        movf PCLATH,W
        movwf PSAVE
        movlw (myinterrupt >> 8) & 255
        movwf PCLATH
        goto myinterrupt
LCD@CLS
        movlw 128
        movwf 33
CLS
        movlw 254
        call _BYTE__SEND_
        movlw 1
        call _BYTE__SEND_
        movlw 117
        movwf 38
        movlw 48
        goto __DELAY_US_W_
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 46
        movlw 254
        call _BYTE__SEND_
        movf 46,W
        goto _BYTE__SEND_
OUT@DECB
        clrf 36
OUT@DECC
        movwf 41
        clrf 42
OUT@DEC
        bcf 32,3
        movf 36,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 35
        movlw 39
        movwf 40
        movlw 16
        call D@DIG
        movlw 3
        movwf 40
        movlw 232
        call D@DIG
        clrf 40
        movlw 100
        call D@DIG
        clrf 40
        movlw 10
        call D@DIG
        movf 41,W
        goto SEND@IT
D@DIG
        movwf 39
        movf 42,W
        movwf 38
        movf 41,W
        movwf 37
        call __DIVIDE_U1616_
        movf 37,W
SEND@IT
        movwf 37
        decf 35,F
        skpnz
        bcf 32,3
        movf 36,W
        skpnz
        goto $ + 4
        subwf 35,W
        skpnc
        goto EX@SEND@IT
        movf 37,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto _BYTE__SEND_
EX@SEND@IT
        return
PRINT
        movwf 44
        bcf PORTD,3
        bcf PORTD,2
        bsf STATUS,5
        bcf TRISD,3
        bcf TRISD,2
        movlw 15
        andwf TRISD,F
        bcf STATUS,5
        movf 44,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 38
        movlw 128
        call __DELAY_US_W_
        movlw 51
        movwf 43
        call PR@LP
        movlw 19
        movwf 38
        movlw 136
        call __DELAY_US_W_
        call PR@LP
        movlw 100
        call __DELAY_US_
        call PR@LP
        movlw 100
        call __DELAY_US_
        movlw 34
        movwf 43
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 44,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 43
        btfss 32,0
        goto PRIT@SKP
        bcf PORTD,2
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 38
        movlw 208
        call __DELAY_US_W_
        bsf 3,0
        return
PRIT@SKP
        bsf 32,0
        sublw 254
        skpnz
        goto PR@EX
        bsf PORTD,2
PRT@S
        btfss 32,0
PR@LP
        bcf 32,0
        bsf PORTD,3
        movlw 15
        andwf PORTD,F
        movf 43,W
        andlw 240
        iorwf PORTD,F
        bcf PORTD,3
        swapf 43,F
        btfsc 32,0
        goto PR@LP
        movlw 50
        call __DELAY_US_
PR@EX
        movf 44,W
        goto I@NT
_BYTE__SEND_
        btfsc 33,7
        goto PRINT
        return
__DELAY_MS_
        clrf 40
__DELAY_MS_W_
        movwf 39
DLY@P
        movlw 255
        addwf 39,F
        skpc
        addwf 40,F
        skpc
        goto I@NT
        movlw 3
        movwf 38
        movlw 228
        call __DELAY_US_W_
        goto DLY@P
__DELAY_US_
        clrf 38
__DELAY_US_W_
        addlw 246
        movwf 37
        comf 38,F
        skpc
        goto $ + 7
        movlw 254
        nop
        addwf 37,F
        skpnc
        goto $ - 3
        addwf 37,F
        nop
        incfsz 38,F
        goto $ - 8
        nop
        btfsc 37,0
        goto $ + 1
        btfsc 37,0
        goto $ + 1
        return
__DIVIDE_U1616_
        clrf 42
        clrf 41
__DIVIDE_INT_U1616_
        movlw 16
        movwf 43
        rlf 38,W
        rlf 41,F
        rlf 42,F
        movf 39,W
        subwf 41,F
        movf 40,W
        skpc
        incfsz 40,W
        subwf 42,F
        skpnc
        goto $ + 8
        movf 39,W
        addwf 41,F
        movf 40,W
        skpnc
        incfsz 40,W
        addwf 42,F
        bcf 3,0
        rlf 37,F
        rlf 38,F
        decfsz 43,F
        goto $ - 21
        movf 37,W
        return
I@NT
        bcf STATUS,7
        bcf STATUS,5
        bcf STATUS,6
        return
proton#main#start
        clrf STATUS
        clrf 32
F2_SOF equ $ ; LCD.PRP
F2_EOF equ $ ; LCD.PRP
F1_SOF equ $ ; LCD.BAS
F1_000007 equ $ ; IN [LCD.BAS] ALL_DIGITAL = TRUE
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000015 equ $ ; IN [LCD.BAS] TRISD = 0
        clrf TRISD
F1_000016 equ $ ; IN [LCD.BAS] TRISB = 255
        movlw 255
        movwf TRISB
F1_000037 equ $ ; IN [LCD.BAS] TMR1_ENABLE = 0
        bcf PIE1,0
F1_000038 equ $ ; IN [LCD.BAS] INTCON.6 = 1
        bsf INTCON,6
F1_000039 equ $ ; IN [LCD.BAS] OPTION_REG = 0
        clrf OPTION_REG
F1_000041 equ $ ; IN [LCD.BAS] T1CON.1 = 0
        bcf STATUS,5
ram_bank = 0
        bcf T1CON,1
F1_000042 equ $ ; IN [LCD.BAS] T1CON.2 = 1
        bsf T1CON,2
F1_000043 equ $ ; IN [LCD.BAS] T1CON.4 = 0
        bcf T1CON,4
F1_000044 equ $ ; IN [LCD.BAS] T1CON.5 = 0
        bcf T1CON,5
F1_000045 equ $ ; IN [LCD.BAS] TIMER1 = TMR1_VAL
        movwf TMR1LH
        movlw 120
        movwf TMR1L
F1_000059 equ $ ; IN [LCD.BAS] ENKISA = 0
        clrf EnKisaH
        clrf EnKisa
F1_000060 equ $ ; IN [LCD.BAS] ENUZUN = 0
        clrf EnUzunH
        clrf EnUzun
F1_000067 equ $ ; IN [LCD.BAS] CLKCNT = 0
        clrf CLKcntH
        clrf CLKcnt
F1_000070 equ $ ; IN [LCD.BAS] DATAREAD = 0
        clrf DataReadHHH
        clrf DataReadHH
        clrf DataReadH
        clrf DataRead
F1_000073 equ $ ; IN [LCD.BAS] BLOKSAY = 0
        clrf bloksayH
        clrf bloksay
F1_000076 equ $ ; IN [LCD.BAS] BUFFER = 0
        clrf bufferH
        clrf buffer
F1_000079 equ $ ; IN [LCD.BAS] POSINDEX = 0
        clrf posIndexH
        clrf posIndex
F1_000082 equ $ ; IN [LCD.BAS] STARTREADING = 0
        bcf _B#VR1,0
F1_000089 equ $ ; IN [LCD.BAS] GOTO BASLA
        f@jump Basla
myinterrupt
ram_bank = 0
F1_000093 equ $ ; IN [LCD.BAS] CONTEXT SAVE
ram_bank = 0
        movf SP#P9,W
        movwf _High__Context_Store#0
F1_000094 equ $ ; IN [LCD.BAS] GIE = 0
        bcf INTCON,7
F1_000096 equ $ ; IN [LCD.BAS] IF RBIF = 1 THEN
        set@page BC@LL3
        btfss INTCON,0
        goto BC@LL3
F1_000097 equ $ ; IN [LCD.BAS] ENKISA = ENKISA + 1
        incf EnKisa,F
        btfsc STATUS,2
        incf EnKisaH,F
F1_000098 equ $ ; IN [LCD.BAS] PORTDURUM = PORTB
        movf PORTB,W
        movwf portDurum
F1_000099 equ $ ; IN [LCD.BAS] RBIF = 0
        bcf INTCON,0
F1_000100 equ $ ; IN [LCD.BAS] ENDIF
BC@LL3
F1_000103 equ $ ; IN [LCD.BAS] IF TMR1_OVERFLOW = 1 AND TMR1_ENABLE = 1 THEN
        movlw 0
        btfsc PIR1,0
        movlw 1
        movwf SP#P9
        movlw 0
        bsf STATUS,5
ram_bank = 1
        btfsc PIE1,0
        movlw 1
        bcf STATUS,5
ram_bank = 0
        andwf SP#P9,F
        set@page BC@LL5
        btfsc STATUS,2
        goto BC@LL5
F1_000104 equ $ ; IN [LCD.BAS] TMR1_ENABLE = 0
        bsf STATUS,5
ram_bank = 1
        bcf PIE1,0
F1_000105 equ $ ; IN [LCD.BAS] TIMER1 = TMR1_VAL
        movlw 255
        bcf STATUS,5
ram_bank = 0
        movwf TMR1LH
        movlw 120
        movwf TMR1L
F1_000106 equ $ ; IN [LCD.BAS] TMR1_ENABLE = 1
        bsf STATUS,5
ram_bank = 1
        bsf PIE1,0
F1_000107 equ $ ; IN [LCD.BAS] TMR1_OVERFLOW = 0
        bcf STATUS,5
ram_bank = 0
        bcf PIR1,0
F1_000108 equ $ ; IN [LCD.BAS] MS = MS + TMR1_MS
        incf mS,F
        btfsc STATUS,2
        incf mSH,F
F1_000109 equ $ ; IN [LCD.BAS] TIMERKUR = TIMERKUR + 1
        movlw 1
        addwf timerKur,F
        btfsc STATUS,0
        addwf timerKurH,F
        btfsc STATUS,0
        addwf timerKurHH,F
        movlw 1
        btfsc STATUS,0
        addwf timerKurHHH,F
F1_000110 equ $ ; IN [LCD.BAS] IF MS >= 1000 THEN
        movlw 3
        subwf mSH,W
        set@page BC@LL7
        btfss STATUS,0
        goto BC@LL7
        set@page CP@LB2
        btfss STATUS,2
        goto CP@LB2
        movlw 232
        subwf mS,W
        set@page BC@LL7
        btfss STATUS,0
        goto BC@LL7
CP@LB2
ram_bank = 255
F1_000111 equ $ ; IN [LCD.BAS] MS = MS - 1000
        movlw 232
ram_bank = 0
        subwf mS,F
        movlw 3
        btfss STATUS,0
        addlw 1
        subwf mSH,F
F1_000112 equ $ ; IN [LCD.BAS] S = S + 1
        incf _S,F
        btfsc STATUS,2
        incf _SH,F
F1_000113 equ $ ; IN [LCD.BAS] ENDIF
BC@LL7
F1_000114 equ $ ; IN [LCD.BAS] ENDIF
BC@LL5
Cikis
F1_000131 equ $ ; IN [LCD.BAS] GIE = 1
        bsf INTCON,7
F1_000132 equ $ ; IN [LCD.BAS] CONTEXT RESTORE
        movf _High__Context_Store#0,W
        movwf SP#P9
        movf PSAVE,W
        movwf PCLATH
        movf FSRSAVE,W
        movwf FSR
        movf SSAVE,W
        movwf STATUS
        swapf WSAVE,F
        swapf WSAVE,W
        retfie
F1_000133 equ $ ; IN [LCD.BAS] RETURN
        return
Basla
F1_000139 equ $ ; IN [LCD.BAS] CLS
        f@call LCD@CLS
F1_000141 equ $ ; IN [LCD.BAS] RBIE = 1
        bsf INTCON,3
F1_000144 equ $ ; IN [LCD.BAS] GIE = 1
        bsf INTCON,7
F1_000145 equ $ ; IN [LCD.BAS] INTCON = %10010000
        movlw 144
        movwf INTCON
Dongu
F1_000150 equ $ ; IN [LCD.BAS] BUFFER = 0
        clrf bufferH
        clrf buffer
F1_000151 equ $ ; IN [LCD.BAS] CLS
        f@call LCD@CLS
F1_000152 equ $ ; IN [LCD.BAS] PRINT AT 1,1,"D:",DEC MYSTR[1],DEC MYSTR[2],DEC MYSTR[3],DEC MYSTR[4],DEC MYSTR[5],DEC MYSTR[6],DEC MYSTR[7]
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 68
        f@call PRINT
        movlw 58
        f@call PRINT
        movf mystr#1,W
        f@call OUT@DECB
        movf mystr#2,W
        f@call OUT@DECB
        movf mystr#3,W
        f@call OUT@DECB
        movf mystr#4,W
        f@call OUT@DECB
        movf mystr#5,W
        f@call OUT@DECB
        movf mystr#6,W
        f@call OUT@DECB
        movf mystr#7,W
        f@call OUT@DECB
F1_000153 equ $ ; IN [LCD.BAS] PRINT AT 2,1,DEC CLKCNT
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        clrf GEN4H
        movf CLKcntH,W
        movwf PP2H
        movf CLKcnt,W
        movwf PP2
        f@call OUT@DEC
F1_000154 equ $ ; IN [LCD.BAS] PRINT AT 3,1,DEC S
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        clrf GEN4H
        movf _SH,W
        movwf PP2H
        movf _S,W
        movwf PP2
        f@call OUT@DEC
F1_000155 equ $ ; IN [LCD.BAS] PRINT AT 4,1,DEC ENUZUN,"  ",DEC ENKISA
        movlw 128
        movwf BPFH
        movlw 212
        f@call LCD@CRS
        clrf GEN4H
        movf EnUzunH,W
        movwf PP2H
        movf EnUzun,W
        movwf PP2
        f@call OUT@DEC
        movlw 32
        f@call PRINT
        f@call PRINT
        clrf GEN4H
        movf EnKisaH,W
        movwf PP2H
        movf EnKisa,W
        movwf PP2
        f@call OUT@DEC
F1_000156 equ $ ; IN [LCD.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000158 equ $ ; IN [LCD.BAS] GOTO DONGU
        f@jump Dongu
F1_000163 equ $ ; IN [LCD.BAS] END
PB@LB8
        f@jump PB@LB8
F1_EOF equ $ ; LCD.BAS
PB@LB9
        f@jump PB@LB9
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&BOREN_ON&LVP_OFF&CPD_OFF&WRT_OFF&DEBUG_OFF&CP_OFF
        end
