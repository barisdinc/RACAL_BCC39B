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
#define _SYSTEM_VARIABLE_COUNT 29
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
CSTR#CT = 34
GEN = 35
GEN4 = 36
GEN4H = 37
PBP#VAR0 = 38
PBP#VAR1 = 39
PBP#VAR2 = 40
PBP#VAR3 = 41
PBP#VAR4 = 42
PBP#VAR5 = 43
PBP#VAR6 = 44
PP0 = 45
PP0H = 46
PP1 = 47
PP1H = 48
PP2 = 49
PP2H = 50
PP3 = 51
PP3H = 52
PP4 = 53
PP5 = 54
PP6 = 55
PP6H = 56
PP7 = 57
PP7H = 58
PP8 = 59
PP8H = 60
FSRSAVE = 124
PSAVE = 125
SSAVE = 126
WSAVE = 127
Katar = 61
KatarH = 62
Position = 63
buffer = 64
PortDurum = 65
enuzun = 66
Degerler = 67
variable Degerler#0=67,Degerler#1=68,Degerler#2=69,Degerler#3=70
variable Degerler#4=71,Degerler#5=72,Degerler#6=73,Degerler#7=74
variable Degerler#8=75,Degerler#9=76,Degerler#10=77,Degerler#11=78
variable Degerler#12=79,Degerler#13=80,Degerler#14=81,Degerler#15=82
variable Degerler#16=83,Degerler#17=84,Degerler#18=85,Degerler#19=86
variable Degerler#20=87,Degerler#21=88,Degerler#22=89,Degerler#23=90
variable Degerler#24=91,Degerler#25=92,Degerler#26=93,Degerler#27=94
variable Degerler#28=95,Degerler#29=96,Degerler#30=97,Degerler#31=98
variable Degerler#32=99,Degerler#33=100,Degerler#34=101,Degerler#35=102
variable Degerler#36=103,Degerler#37=104,Degerler#38=105,Degerler#39=106
variable Degerler#40=107,Degerler#41=108,Degerler#42=109,Degerler#43=110
variable Degerler#44=111,Degerler#45=112,Degerler#46=113,Degerler#47=114
variable Degerler#48=115,Degerler#49=116,Degerler#50=117,Degerler#51=118
variable Degerler#52=119,Degerler#53=120,Degerler#54=121,Degerler#55=122
variable Degerler#56=123,Degerler#57=160,Degerler#58=161,Degerler#59=162
variable Degerler#60=163,Degerler#61=164,Degerler#62=165,Degerler#63=166
variable Degerler#64=167,Degerler#65=168,Degerler#66=169,Degerler#67=170
variable Degerler#68=171,Degerler#69=172,Degerler#70=173,Degerler#71=174
variable Degerler#72=175,Degerler#73=176,Degerler#74=177,Degerler#75=178
variable Degerler#76=179,Degerler#77=180,Degerler#78=181,Degerler#79=182
variable Degerler#80=183,Degerler#81=184,Degerler#82=185,Degerler#83=186
variable Degerler#84=187,Degerler#85=188,Degerler#86=189,Degerler#87=190
variable Degerler#88=191,Degerler#89=192
say = 193
Segments = 194
variable Segments#0=194,Segments#1=195,Segments#2=196,Segments#3=197
variable Segments#4=198,Segments#5=199,Segments#6=200
DecValue = 201
ResValue = 202
FrqDigits = 203
variable FrqDigits#0=203,FrqDigits#1=204,FrqDigits#2=205,FrqDigits#3=206
variable FrqDigits#4=207,FrqDigits#5=208,FrqDigits#6=209
Channel = 210
Cmd = 211
LcdData = 212
DATAm = 213
don = 214
_High__Context_Store = 215
variable _High__Context_Store#0=215,_High__Context_Store#1=216,_High__Context_Store#2=217,_High__Context_Store#3=218
variable _High__Context_Store#4=219,_High__Context_Store#5=220
#define __LCD_DTPORT PORTD
#define __LCD_RSPORT PORTD
#define __LCD_ENPORT PORTD
#define __SDA_PORT PORTC
#define __SCL_PORT PORTC
#define SDA PORTC,4
#define SCL PORTC,3
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
#define __XTAL 10
#define __LCD_INTERFACE 4
#define __LCD_DTPIN 4
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_LINES 4
#define __SDA_PIN 4
#define __SCL_PIN 3
#define __HBUS_BITRATE 400
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
FIND@ADDRESS
        bcf STATUS,7
        movwf 55
        clrf 56
        rlf 56,F
        movlw 0
        subwf 56,W
        movlw 124
        skpnz
        subwf 55,W
        skpc
        goto $ + 7
        btfsc 52,7
        goto $ + 5
        movlw 36
        addwf 55,F
        skpnc
        incf 56,F
        movlw 0
        subwf 56,W
        movlw 240
        skpnz
        subwf 55,W
        skpc
        goto $ + 6
        bsf STATUS,7
        movlw 32
        addwf 55,F
        skpnc
        incf 56,F
        movlw 1
        subwf 56,W
        movlw 112
        skpnz
        subwf 55,W
        skpc
        goto FA@EXT
        movlw 32
        addwf 55,F
FA@EXT
        movf 55,W
        movwf 4
        return
LCD@CLS
        movlw 128
        movwf 33
CLS
        movlw 254
        call _BYTE__SEND_
        movlw 1
        call _BYTE__SEND_
        movlw 117
        movwf 46
        movlw 48
        goto __DELAY_US_W_
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 54
        movlw 254
        call _BYTE__SEND_
        movf 54,W
        goto _BYTE__SEND_
PRINT
        movwf 52
        bcf PORTD,3
        bcf PORTD,2
        bsf STATUS,5
        bcf TRISD,3
        bcf TRISD,2
        movlw 15
        andwf TRISD,F
        bcf STATUS,5
        movf 52,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 46
        movlw 128
        call __DELAY_US_W_
        movlw 51
        movwf 51
        call PR@LP
        movlw 19
        movwf 46
        movlw 136
        call __DELAY_US_W_
        call PR@LP
        movlw 100
        call __DELAY_US_
        call PR@LP
        movlw 100
        call __DELAY_US_
        movlw 34
        movwf 51
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 52,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 51
        btfss 32,0
        goto PRIT@SKP
        bcf PORTD,2
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 46
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
        movf 51,W
        andlw 240
        iorwf PORTD,F
        bcf PORTD,3
        swapf 51,F
        btfsc 32,0
        goto PR@LP
        movlw 50
        call __DELAY_US_
PR@EX
        movf 52,W
        goto I@NT
_BYTE__SEND_
        btfsc 33,7
        goto PRINT
        return
C@STROUT
        movwf 36
C@STROUTW
        clrf 34
C@STROUTLP
        movf 36,W
        bsf STATUS,6
        movwf 269
        bcf STATUS,6
        movf 37,W
        bsf STATUS,6
        movwf 271
        call __CREAD_
        skpnz
        goto I@NT
        call _BYTE__SEND_
        incf 36,F
        skpnz
        incf 37,F
        incfsz 34,F
        goto C@STROUTLP
        goto I@NT
__CREAD_
        bsf STATUS,5
        bsf STATUS,6
        bsf 396,PP_EEPGD
        bsf 396,PP_RD
        nop
        nop
        bcf STATUS,5
        movf 268,W
        goto I@NT
__DELAY_MS_
        clrf 48
__DELAY_MS_W_
        movwf 47
DLY@P
        movlw 255
        addwf 47,F
        skpc
        addwf 48,F
        skpc
        goto I@NT
        movlw 3
        movwf 46
        movlw 228
        call __DELAY_US_W_
        goto DLY@P
__DELAY_US_
        clrf 46
__DELAY_US_W_
        addlw 246
        movwf 45
        comf 46,F
        skpc
        goto $ + 7
        movlw 254
        nop
        addwf 45,F
        skpnc
        goto $ - 3
        addwf 45,F
        nop
        incfsz 46,F
        goto $ - 8
        nop
        btfsc 45,0
        goto $ + 1
        btfsc 45,0
        goto $ + 1
        return
I@NT
        bcf STATUS,7
        bcf STATUS,5
        bcf STATUS,6
        return
PUT@ARRAY
        movwf 51
PUT@ARRAYW
        movf 36,W
        movwf 52
        addwf 37,W
        call FIND@ADDRESS
        movf 51,W
        movwf INDF
        goto I@NT
proton#main#start
        clrf STATUS
        clrf 32
F2_SOF equ $ ; LCD2.PRP
F2_EOF equ $ ; LCD2.PRP
F1_SOF equ $ ; LCD2.BAS
F1_000005 equ $ ; IN [LCD2.BAS] ALL_DIGITAL = TRUE
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000022 equ $ ; IN [LCD2.BAS] TRISD = 0
        clrf TRISD
F1_000023 equ $ ; IN [LCD2.BAS] TRISB = 255
        movlw 255
        movwf TRISB
F1_000038 equ $ ; IN [LCD2.BAS] INTEDG = 1
        bsf OPTION_REG,6
F1_000045 equ $ ; IN [LCD2.BAS] ENUZUN=0
        bcf STATUS,5
ram_bank = 0
        clrf enuzun
F1_000049 equ $ ; IN [LCD2.BAS] FOR SAY = 0 TO 80
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
        set@page NX@LB3
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto NX@LB3
F1_000050 equ $ ; IN [LCD2.BAS] DEGERLER[SAY] =8
        bsf STATUS,5
ram_bank = 1
        movf say,W
        bcf STATUS,5
ram_bank = 0
        movwf GEN4H
        movlw 67
        movwf GEN4
        movlw 8
        f@call PUT@ARRAY
CT@LB4
F1_000051 equ $ ; IN [LCD2.BAS] NEXT SAY
        movlw 1
        bsf STATUS,5
ram_bank = 1
        addwf say,F
        set@page FR@LB2
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,0
        goto FR@LB2
NX@LB3
F1_000053 equ $ ; IN [LCD2.BAS] KATAR = 0
        clrf KatarH
        clrf Katar
F1_000054 equ $ ; IN [LCD2.BAS] POSITION = 0
        clrf Position
F1_000057 equ $ ; IN [LCD2.BAS] GOTO BASLA
        f@jump Basla
myinterrupt
ram_bank = 0
F1_000061 equ $ ; IN [LCD2.BAS] CONTEXT SAVE
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
F1_000062 equ $ ; IN [LCD2.BAS] GIE = 0
        bcf INTCON,7
F1_000064 equ $ ; IN [LCD2.BAS] IF INTF = 1 THEN
        set@page BC@LL6
        btfss INTCON,1
        goto BC@LL6
F1_000066 equ $ ; IN [LCD2.BAS] IF PORTB.1 = 1 THEN
        set@page BC@LL8
        btfss PORTB,1
        goto BC@LL8
F1_000068 equ $ ; IN [LCD2.BAS] DEGERLER[POSITION] = PORTB.3
        movf Position,W
        movwf GEN4H
        movlw 67
        movwf GEN4
        movlw 0
        btfsc PORTB,3
        movlw 1
        f@call PUT@ARRAY
F1_000069 equ $ ; IN [LCD2.BAS] POSITION = POSITION + 1
        incf Position,F
        f@jump BC@LL9
BC@LL8
F1_000070 equ $ ; IN [LCD2.BAS] ELSE
F1_000071 equ $ ; IN [LCD2.BAS] IF POSITION > 40 THEN POSITION = 0
        movlw 41
        subwf Position,W
        set@page BC@LL11
        btfss STATUS,0
        goto BC@LL11
        clrf Position
BC@LL11
F1_000072 equ $ ; IN [LCD2.BAS] KATAR = KATAR + 1
        incf Katar,F
        btfsc STATUS,2
        incf KatarH,F
F1_000073 equ $ ; IN [LCD2.BAS] ENDIF
BC@LL9
F1_000074 equ $ ; IN [LCD2.BAS] INTF = 0
        bcf INTCON,1
F1_000075 equ $ ; IN [LCD2.BAS] ENDIF
BC@LL6
Cikis
F1_000079 equ $ ; IN [LCD2.BAS] GIE = 1
        bsf INTCON,7
F1_000080 equ $ ; IN [LCD2.BAS] CONTEXT RESTORE
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
        movf PSAVE,W
        movwf PCLATH
        movf FSRSAVE,W
        movwf FSR
        movf SSAVE,W
        movwf STATUS
        swapf WSAVE,F
        swapf WSAVE,W
        retfie
F1_000081 equ $ ; IN [LCD2.BAS] RETURN
        return
Basla
F1_000088 equ $ ; IN [LCD2.BAS] CLS
        f@call LCD@CLS
F1_000089 equ $ ; IN [LCD2.BAS] PRINT AT 1,1,"    RACAL BCC39B"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw ((STR@LB1 >> 8) & 255)
        movwf GEN4H
        movlw (STR@LB1 & 255)
        f@call C@STROUT
F1_000090 equ $ ; IN [LCD2.BAS] PRINT AT 2,1," (C)2015 TA7W BARIS"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw ((STR@LB2 >> 8) & 255)
        movwf GEN4H
        movlw (STR@LB2 & 255)
        f@call C@STROUT
F1_000091 equ $ ; IN [LCD2.BAS] PRINT AT 4,1,"  DISPLAY TESTING"
        movlw 128
        movwf BPFH
        movlw 212
        f@call LCD@CRS
        movlw ((STR@LB3 >> 8) & 255)
        movwf GEN4H
        movlw (STR@LB3 & 255)
        f@call C@STROUT
F1_000092 equ $ ; IN [LCD2.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call __DELAY_MS_W_
F1_000095 equ $ ; IN [LCD2.BAS] CLS
        f@call LCD@CLS
F1_000096 equ $ ; IN [LCD2.BAS] INTE = 1
        bsf INTCON,4
F1_000098 equ $ ; IN [LCD2.BAS] GIE = 1
        bsf INTCON,7
F1_000104 equ $ ; IN [LCD2.BAS] RESVALUE=0
        bsf STATUS,5
ram_bank = 1
        clrf ResValue
LCDHazirla
        bcf STATUS,5
ram_bank = 0
F1_000119 equ $ ; IN [LCD2.BAS] CMD = $2A
        movlw 42
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000120 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000121 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000122 equ $ ; IN [LCD2.BAS] CMD = $71
        movlw 113
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000123 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000124 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000125 equ $ ; IN [LCD2.BAS] CMD = $5C
        movlw 92
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000126 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000127 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000128 equ $ ; IN [LCD2.BAS] CMD = $28
        movlw 40
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000129 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000130 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000131 equ $ ; IN [LCD2.BAS] CMD = $08
        movlw 8
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000132 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000133 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000134 equ $ ; IN [LCD2.BAS] CMD = $2A
        movlw 42
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000135 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000136 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000137 equ $ ; IN [LCD2.BAS] CMD = $79
        movlw 121
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000138 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000139 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000140 equ $ ; IN [LCD2.BAS] CMD = $D5
        movlw 213
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000141 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000142 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000143 equ $ ; IN [LCD2.BAS] CMD = $70
        movlw 112
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000144 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000145 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000146 equ $ ; IN [LCD2.BAS] CMD = $78
        movlw 120
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000147 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000148 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000149 equ $ ; IN [LCD2.BAS] CMD = $08
        movlw 8
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000150 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000151 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000152 equ $ ; IN [LCD2.BAS] CMD = $06
        movlw 6
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000153 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000154 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000156 equ $ ; IN [LCD2.BAS] CMD = $2A
        movlw 42
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000157 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000158 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000159 equ $ ; IN [LCD2.BAS] CMD = $79
        movlw 121
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000160 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000161 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000163 equ $ ; IN [LCD2.BAS] CMD = $72
        movlw 114
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000164 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000165 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000166 equ $ ; IN [LCD2.BAS] CMD = $00
        bsf STATUS,5
ram_bank = 1
        clrf Cmd
F1_000167 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000168 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000169 equ $ ; IN [LCD2.BAS] CMD = $DA
        movlw 218
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000170 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000171 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000172 equ $ ; IN [LCD2.BAS] CMD = $10
        movlw 16
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000173 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000174 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000175 equ $ ; IN [LCD2.BAS] CMD = $81
        movlw 129
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000176 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000177 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000178 equ $ ; IN [LCD2.BAS] CMD = $FF
        movlw 255
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000179 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000180 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000181 equ $ ; IN [LCD2.BAS] CMD = $DB
        movlw 219
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000182 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000183 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000184 equ $ ; IN [LCD2.BAS] CMD = $30
        movlw 48
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000185 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000186 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000187 equ $ ; IN [LCD2.BAS] CMD = $DC
        movlw 220
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000188 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000189 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000190 equ $ ; IN [LCD2.BAS] CMD = $03
        movlw 3
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000191 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000192 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000193 equ $ ; IN [LCD2.BAS] CMD = $78
        movlw 120
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000194 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000195 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000196 equ $ ; IN [LCD2.BAS] CMD = $28
        movlw 40
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000197 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000198 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000199 equ $ ; IN [LCD2.BAS] CMD = $2A
        movlw 42
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000201 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000202 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000203 equ $ ; IN [LCD2.BAS] CMD = $06
        movlw 6
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000204 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000205 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000206 equ $ ; IN [LCD2.BAS] CMD = $08
        movlw 8
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000207 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000208 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000209 equ $ ; IN [LCD2.BAS] CMD = $28
        movlw 40
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000210 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000211 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000212 equ $ ; IN [LCD2.BAS] CMD = $01
        movlw 1
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000213 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000214 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000215 equ $ ; IN [LCD2.BAS] CMD = $80
        movlw 128
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000216 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000217 equ $ ; IN [LCD2.BAS] DELAYMS 100
        movlw 100
        f@call __DELAY_MS_
F1_000218 equ $ ; IN [LCD2.BAS] CMD = $0C
        movlw 12
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000219 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000221 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000222 equ $ ; IN [LCD2.BAS] LCDDATA = "A"
        movlw 65
        bsf STATUS,5
ram_bank = 1
        movwf LcdData
F1_000223 equ $ ; IN [LCD2.BAS] GOSUB DATAGONDER
        bcf STATUS,5
ram_bank = 0
        f@call DataGonder
F1_000224 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000225 equ $ ; IN [LCD2.BAS] LCDDATA = "A"
        movlw 65
        bsf STATUS,5
ram_bank = 1
        movwf LcdData
F1_000226 equ $ ; IN [LCD2.BAS] GOSUB DATAGONDER
        bcf STATUS,5
ram_bank = 0
        f@call DataGonder
F1_000227 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000228 equ $ ; IN [LCD2.BAS] LCDDATA = "A"
        movlw 65
        bsf STATUS,5
ram_bank = 1
        movwf LcdData
F1_000229 equ $ ; IN [LCD2.BAS] GOSUB DATAGONDER
        bcf STATUS,5
ram_bank = 0
        f@call DataGonder
F1_000230 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000231 equ $ ; IN [LCD2.BAS] LCDDATA = "A"
        movlw 65
        bsf STATUS,5
ram_bank = 1
        movwf LcdData
F1_000232 equ $ ; IN [LCD2.BAS] GOSUB DATAGONDER
        bcf STATUS,5
ram_bank = 0
        f@call DataGonder
F1_000233 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000234 equ $ ; IN [LCD2.BAS] LCDDATA = "A"
        movlw 65
        bsf STATUS,5
ram_bank = 1
        movwf LcdData
F1_000235 equ $ ; IN [LCD2.BAS] GOSUB DATAGONDER
        bcf STATUS,5
ram_bank = 0
        f@call DataGonder
F1_000236 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000237 equ $ ; IN [LCD2.BAS] LCDDATA = "A"
        movlw 65
        bsf STATUS,5
ram_bank = 1
        movwf LcdData
F1_000238 equ $ ; IN [LCD2.BAS] GOSUB DATAGONDER
        bcf STATUS,5
ram_bank = 0
        f@call DataGonder
F1_000239 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000240 equ $ ; IN [LCD2.BAS] LCDDATA = "A"
        movlw 65
        bsf STATUS,5
ram_bank = 1
        movwf LcdData
F1_000241 equ $ ; IN [LCD2.BAS] GOSUB DATAGONDER
        bcf STATUS,5
ram_bank = 0
        f@call DataGonder
F1_000242 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000243 equ $ ; IN [LCD2.BAS] LCDDATA = "A"
        movlw 65
        bsf STATUS,5
ram_bank = 1
        movwf LcdData
F1_000244 equ $ ; IN [LCD2.BAS] GOSUB DATAGONDER
        bcf STATUS,5
ram_bank = 0
        f@call DataGonder
F1_000245 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000246 equ $ ; IN [LCD2.BAS] LCDDATA = "A"
        movlw 65
        bsf STATUS,5
ram_bank = 1
        movwf LcdData
F1_000247 equ $ ; IN [LCD2.BAS] GOSUB DATAGONDER
        bcf STATUS,5
ram_bank = 0
        f@call DataGonder
F1_000249 equ $ ; IN [LCD2.BAS] CMD = $C0
        movlw 192
        bsf STATUS,5
ram_bank = 1
        movwf Cmd
F1_000250 equ $ ; IN [LCD2.BAS] GOSUB KOMUTGONDER
        bcf STATUS,5
ram_bank = 0
        f@call KomutGonder
F1_000252 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000253 equ $ ; IN [LCD2.BAS] LCDDATA = "A"
        movlw 65
        bsf STATUS,5
ram_bank = 1
        movwf LcdData
F1_000254 equ $ ; IN [LCD2.BAS] GOSUB DATAGONDER
        bcf STATUS,5
ram_bank = 0
        f@call DataGonder
F1_000257 equ $ ; IN [LCD2.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
Dongu
F1_000263 equ $ ; IN [LCD2.BAS] SEGMENTS[0] = DEGERLER[35]
        movf Degerler#35,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#0
F1_000264 equ $ ; IN [LCD2.BAS] SEGMENTS[1] = DEGERLER[31]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#31,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#1
F1_000265 equ $ ; IN [LCD2.BAS] SEGMENTS[2] = DEGERLER[1]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#1,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#2
F1_000266 equ $ ; IN [LCD2.BAS] SEGMENTS[3] = DEGERLER[3]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#3,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#3
F1_000267 equ $ ; IN [LCD2.BAS] SEGMENTS[4] = DEGERLER[36]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#36,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#4
F1_000268 equ $ ; IN [LCD2.BAS] SEGMENTS[5] = DEGERLER[2]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#2,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#5
F1_000269 equ $ ; IN [LCD2.BAS] SEGMENTS[6] = DEGERLER[65]
        movf Degerler#65,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#6
F1_000270 equ $ ; IN [LCD2.BAS] GOSUB CALCVALUE
        bcf STATUS,5
ram_bank = 0
        f@call CalcValue
F1_000271 equ $ ; IN [LCD2.BAS] FRQDIGITS[1] = RESVALUE
        bsf STATUS,5
ram_bank = 1
        movf ResValue,W
        movwf FrqDigits#1
F1_000275 equ $ ; IN [LCD2.BAS] SEGMENTS[0] = DEGERLER[4]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#4,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#0
F1_000276 equ $ ; IN [LCD2.BAS] SEGMENTS[1] = DEGERLER[38]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#38,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#1
F1_000277 equ $ ; IN [LCD2.BAS] SEGMENTS[2] = DEGERLER[21]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#21,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#2
F1_000278 equ $ ; IN [LCD2.BAS] SEGMENTS[3] = DEGERLER[55]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#55,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#3
F1_000279 equ $ ; IN [LCD2.BAS] SEGMENTS[4] = DEGERLER[56]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#56,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#4
F1_000280 equ $ ; IN [LCD2.BAS] SEGMENTS[5] = DEGERLER[37]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#37,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#5
F1_000281 equ $ ; IN [LCD2.BAS] SEGMENTS[6] = DEGERLER[22]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#22,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#6
F1_000282 equ $ ; IN [LCD2.BAS] GOSUB CALCVALUE
        bcf STATUS,5
ram_bank = 0
        f@call CalcValue
F1_000283 equ $ ; IN [LCD2.BAS] FRQDIGITS[2] = RESVALUE
        bsf STATUS,5
ram_bank = 1
        movf ResValue,W
        movwf FrqDigits#2
F1_000287 equ $ ; IN [LCD2.BAS] SEGMENTS[0] = DEGERLER[5]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#5,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#0
F1_000288 equ $ ; IN [LCD2.BAS] SEGMENTS[1] = DEGERLER[28]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#28,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#1
F1_000289 equ $ ; IN [LCD2.BAS] SEGMENTS[2] = DEGERLER[29]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#29,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#2
F1_000290 equ $ ; IN [LCD2.BAS] SEGMENTS[3] = DEGERLER[63]
        movf Degerler#63,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#3
F1_000291 equ $ ; IN [LCD2.BAS] SEGMENTS[4] = DEGERLER[64]
        movf Degerler#64,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#4
F1_000292 equ $ ; IN [LCD2.BAS] SEGMENTS[5] = DEGERLER[30]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#30,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#5
F1_000293 equ $ ; IN [LCD2.BAS] SEGMENTS[6] = DEGERLER[62]
        movf Degerler#62,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#6
F1_000294 equ $ ; IN [LCD2.BAS] GOSUB CALCVALUE
        bcf STATUS,5
ram_bank = 0
        f@call CalcValue
F1_000295 equ $ ; IN [LCD2.BAS] FRQDIGITS[3] = RESVALUE
        bsf STATUS,5
ram_bank = 1
        movf ResValue,W
        movwf FrqDigits#3
F1_000299 equ $ ; IN [LCD2.BAS] SEGMENTS[0] = DEGERLER[6]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#6,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#0
F1_000300 equ $ ; IN [LCD2.BAS] SEGMENTS[1] = DEGERLER[40]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#40,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#1
F1_000301 equ $ ; IN [LCD2.BAS] SEGMENTS[2] = DEGERLER[26]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#26,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#2
F1_000302 equ $ ; IN [LCD2.BAS] SEGMENTS[3] = DEGERLER[60]
        movf Degerler#60,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#3
F1_000303 equ $ ; IN [LCD2.BAS] SEGMENTS[4] = DEGERLER[61]
        movf Degerler#61,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#4
F1_000304 equ $ ; IN [LCD2.BAS] SEGMENTS[5] = DEGERLER[39]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#39,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#5
F1_000305 equ $ ; IN [LCD2.BAS] SEGMENTS[6] = DEGERLER[27]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#27,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#6
F1_000306 equ $ ; IN [LCD2.BAS] GOSUB CALCVALUE
        bcf STATUS,5
ram_bank = 0
        f@call CalcValue
F1_000307 equ $ ; IN [LCD2.BAS] FRQDIGITS[4] = RESVALUE
        bsf STATUS,5
ram_bank = 1
        movf ResValue,W
        movwf FrqDigits#4
F1_000310 equ $ ; IN [LCD2.BAS] SEGMENTS[0] = DEGERLER[7]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#7,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#0
F1_000311 equ $ ; IN [LCD2.BAS] SEGMENTS[1] = DEGERLER[23]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#23,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#1
F1_000312 equ $ ; IN [LCD2.BAS] SEGMENTS[2] = DEGERLER[24]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#24,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#2
F1_000313 equ $ ; IN [LCD2.BAS] SEGMENTS[3] = DEGERLER[58]
        movf Degerler#58,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#3
F1_000314 equ $ ; IN [LCD2.BAS] SEGMENTS[4] = DEGERLER[59]
        movf Degerler#59,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#4
F1_000315 equ $ ; IN [LCD2.BAS] SEGMENTS[5] = DEGERLER[25]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#25,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#5
F1_000316 equ $ ; IN [LCD2.BAS] SEGMENTS[6] = DEGERLER[57]
        movf Degerler#57,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#6
F1_000317 equ $ ; IN [LCD2.BAS] GOSUB CALCVALUE
        bcf STATUS,5
ram_bank = 0
        f@call CalcValue
F1_000318 equ $ ; IN [LCD2.BAS] FRQDIGITS[5] = RESVALUE
        bsf STATUS,5
ram_bank = 1
        movf ResValue,W
        movwf FrqDigits#5
F1_000321 equ $ ; IN [LCD2.BAS] SEGMENTS[0] = DEGERLER[8]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#8,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#0
F1_000322 equ $ ; IN [LCD2.BAS] SEGMENTS[1] = DEGERLER[42]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#42,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#1
F1_000323 equ $ ; IN [LCD2.BAS] SEGMENTS[2] = DEGERLER[19]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#19,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#2
F1_000324 equ $ ; IN [LCD2.BAS] SEGMENTS[3] = DEGERLER[53]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#53,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#3
F1_000325 equ $ ; IN [LCD2.BAS] SEGMENTS[4] = DEGERLER[54]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#54,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#4
F1_000326 equ $ ; IN [LCD2.BAS] SEGMENTS[5] = DEGERLER[41]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#41,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#5
F1_000327 equ $ ; IN [LCD2.BAS] SEGMENTS[6] = DEGERLER[20]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#20,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#6
F1_000328 equ $ ; IN [LCD2.BAS] GOSUB CALCVALUE
        bcf STATUS,5
ram_bank = 0
        f@call CalcValue
F1_000329 equ $ ; IN [LCD2.BAS] FRQDIGITS[6] = RESVALUE
        bsf STATUS,5
ram_bank = 1
        movf ResValue,W
        movwf FrqDigits#6
F1_000332 equ $ ; IN [LCD2.BAS] SEGMENTS[0] = DEGERLER[15]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#15,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#0
F1_000333 equ $ ; IN [LCD2.BAS] SEGMENTS[1] = DEGERLER[49]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#49,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#1
F1_000334 equ $ ; IN [LCD2.BAS] SEGMENTS[2] = DEGERLER[50]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#50,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#2
F1_000335 equ $ ; IN [LCD2.BAS] SEGMENTS[3] = DEGERLER[43]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#43,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#3
F1_000336 equ $ ; IN [LCD2.BAS] SEGMENTS[4] = DEGERLER[48]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#48,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#4
F1_000337 equ $ ; IN [LCD2.BAS] SEGMENTS[5] = DEGERLER[14]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#14,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#5
F1_000338 equ $ ; IN [LCD2.BAS] SEGMENTS[6] = DEGERLER[16]
        bcf STATUS,5
ram_bank = 0
        movf Degerler#16,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf Segments#6
F1_000339 equ $ ; IN [LCD2.BAS] GOSUB CALCVALUE
        bcf STATUS,5
ram_bank = 0
        f@call CalcValue
F1_000340 equ $ ; IN [LCD2.BAS] CHANNEL = RESVALUE
        bsf STATUS,5
ram_bank = 1
        movf ResValue,W
        movwf Channel
F1_000344 equ $ ; IN [LCD2.BAS] PRINT AT 1,1,"FREKANS : ",FRQDIGITS[1],FRQDIGITS[2],".",FRQDIGITS[3],FRQDIGITS[4], FRQDIGITS[5], FRQDIGITS[6]
        movlw 128
        bcf STATUS,5
ram_bank = 0
        movwf BPFH
        f@call LCD@CRS
        movlw ((STR@LB4 >> 8) & 255)
        movwf GEN4H
        movlw (STR@LB4 & 255)
        f@call C@STROUT
        bsf STATUS,5
ram_bank = 1
        movf FrqDigits#1,W
        bcf STATUS,5
ram_bank = 0
        f@call PRINT
        bsf STATUS,5
ram_bank = 1
        movf FrqDigits#2,W
        bcf STATUS,5
ram_bank = 0
        f@call PRINT
        movlw 46
        f@call PRINT
        bsf STATUS,5
ram_bank = 1
        movf FrqDigits#3,W
        bcf STATUS,5
ram_bank = 0
        f@call PRINT
        bsf STATUS,5
ram_bank = 1
        movf FrqDigits#4,W
        bcf STATUS,5
ram_bank = 0
        f@call PRINT
        bsf STATUS,5
ram_bank = 1
        movf FrqDigits#5,W
        bcf STATUS,5
ram_bank = 0
        f@call PRINT
        bsf STATUS,5
ram_bank = 1
        movf FrqDigits#6,W
        bcf STATUS,5
ram_bank = 0
        f@call PRINT
F1_000345 equ $ ; IN [LCD2.BAS] IF DEGERLER[11] = 1 THEN
        movf Degerler#11,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL13
        btfss STATUS,2
        goto BC@LL13
F1_000346 equ $ ; IN [LCD2.BAS] PRINT AT 1,18,"<>"
        movlw 128
        movwf BPFH
        movlw 145
        f@call LCD@CRS
        movlw 60
        f@call PRINT
        movlw 62
        f@call PRINT
        f@jump BC@LL14
BC@LL13
F1_000347 equ $ ; IN [LCD2.BAS] ELSE
F1_000348 equ $ ; IN [LCD2.BAS] PRINT AT 1,18,"   "
        movlw 128
        movwf BPFH
        movlw 145
        f@call LCD@CRS
        movlw 32
        f@call PRINT
        f@call PRINT
        f@call PRINT
F1_000349 equ $ ; IN [LCD2.BAS] ENDIF
BC@LL14
F1_000350 equ $ ; IN [LCD2.BAS] IF DEGERLER[10] = 1 THEN
        movf Degerler#10,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL16
        btfss STATUS,2
        goto BC@LL16
F1_000351 equ $ ; IN [LCD2.BAS] PRINT AT 2,1,"PWR : HIGH"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw ((STR@LB5 >> 8) & 255)
        movwf GEN4H
        movlw (STR@LB5 & 255)
        f@call C@STROUT
        f@jump BC@LL17
BC@LL16
F1_000352 equ $ ; IN [LCD2.BAS] ELSE
F1_000353 equ $ ; IN [LCD2.BAS] PRINT AT 2,1,"PWR : LOW "
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw ((STR@LB6 >> 8) & 255)
        movwf GEN4H
        movlw (STR@LB6 & 255)
        f@call C@STROUT
F1_000354 equ $ ; IN [LCD2.BAS] ENDIF
BC@LL17
F1_000355 equ $ ; IN [LCD2.BAS] IF DEGERLER[12] = 1 THEN
        movf Degerler#12,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL19
        btfss STATUS,2
        goto BC@LL19
F1_000356 equ $ ; IN [LCD2.BAS] PRINT AT 3,1,"MOD : USB "
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw ((STR@LB7 >> 8) & 255)
        movwf GEN4H
        movlw (STR@LB7 & 255)
        f@call C@STROUT
        f@jump BC@LL20
BC@LL19
F1_000357 equ $ ; IN [LCD2.BAS] ELSE
F1_000358 equ $ ; IN [LCD2.BAS] PRINT AT 3,1,"MOD : LSB "
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw ((STR@LB8 >> 8) & 255)
        movwf GEN4H
        movlw (STR@LB8 & 255)
        f@call C@STROUT
F1_000359 equ $ ; IN [LCD2.BAS] ENDIF
BC@LL20
F1_000360 equ $ ; IN [LCD2.BAS] IF DEGERLER[45] = 1 THEN
        movf Degerler#45,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL22
        btfss STATUS,2
        goto BC@LL22
F1_000361 equ $ ; IN [LCD2.BAS] PRINT AT 3,11,"(CW) "
        movlw 128
        movwf BPFH
        movlw 158
        f@call LCD@CRS
        movlw 40
        f@call PRINT
        movlw 67
        f@call PRINT
        movlw 87
        f@call PRINT
        movlw 41
        f@call PRINT
        movlw 32
        f@call PRINT
        f@jump BC@LL23
BC@LL22
F1_000362 equ $ ; IN [LCD2.BAS] ELSE
F1_000363 equ $ ; IN [LCD2.BAS] PRINT AT 3,11,"     "
        movlw 128
        movwf BPFH
        movlw 158
        f@call LCD@CRS
        movlw 32
        f@call PRINT
        f@call PRINT
        f@call PRINT
        f@call PRINT
        f@call PRINT
F1_000364 equ $ ; IN [LCD2.BAS] ENDIF
BC@LL23
F1_000365 equ $ ; IN [LCD2.BAS] PRINT AT 4,1,"KANAL : ",CHANNEL
        movlw 128
        movwf BPFH
        movlw 212
        f@call LCD@CRS
        movlw ((STR@LB9 >> 8) & 255)
        movwf GEN4H
        movlw (STR@LB9 & 255)
        f@call C@STROUT
        bsf STATUS,5
ram_bank = 1
        movf Channel,W
        bcf STATUS,5
ram_bank = 0
        f@call PRINT
F1_000366 equ $ ; IN [LCD2.BAS] IF DEGERLER[13] = 1 THEN
        movf Degerler#13,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL25
        btfss STATUS,2
        goto BC@LL25
F1_000367 equ $ ; IN [LCD2.BAS] PRINT AT 4,11, "TX"
        movlw 128
        movwf BPFH
        movlw 222
        f@call LCD@CRS
        movlw 84
        f@call PRINT
        movlw 88
        f@call PRINT
        f@jump BC@LL26
BC@LL25
F1_000368 equ $ ; IN [LCD2.BAS] ELSE
F1_000369 equ $ ; IN [LCD2.BAS] PRINT AT 4,11, "  "
        movlw 128
        movwf BPFH
        movlw 222
        f@call LCD@CRS
        movlw 32
        f@call PRINT
        f@call PRINT
F1_000370 equ $ ; IN [LCD2.BAS] ENDIF
BC@LL26
F1_000371 equ $ ; IN [LCD2.BAS] IF DEGERLER[47] = 1 THEN
        movf Degerler#47,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL28
        btfss STATUS,2
        goto BC@LL28
F1_000372 equ $ ; IN [LCD2.BAS] PRINT AT 4,14, "RX"
        movlw 128
        movwf BPFH
        movlw 225
        f@call LCD@CRS
        movlw 82
        f@call PRINT
        movlw 88
        f@call PRINT
        f@jump BC@LL29
BC@LL28
F1_000373 equ $ ; IN [LCD2.BAS] ELSE
F1_000374 equ $ ; IN [LCD2.BAS] PRINT AT 4,14, "  "
        movlw 128
        movwf BPFH
        movlw 225
        f@call LCD@CRS
        movlw 32
        f@call PRINT
        f@call PRINT
F1_000375 equ $ ; IN [LCD2.BAS] ENDIF
BC@LL29
F1_000376 equ $ ; IN [LCD2.BAS] IF DEGERLER[52] = 1 THEN
        movf Degerler#52,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL31
        btfss STATUS,2
        goto BC@LL31
F1_000377 equ $ ; IN [LCD2.BAS] PRINT AT 3,16, "X"
        movlw 128
        movwf BPFH
        movlw 163
        f@call LCD@CRS
        movlw 88
        f@call PRINT
        f@jump BC@LL32
BC@LL31
F1_000378 equ $ ; IN [LCD2.BAS] ELSE
F1_000379 equ $ ; IN [LCD2.BAS] PRINT AT 3,16, " "
        movlw 128
        movwf BPFH
        movlw 163
        f@call LCD@CRS
        movlw 32
        f@call PRINT
F1_000380 equ $ ; IN [LCD2.BAS] ENDIF
BC@LL32
F1_000381 equ $ ; IN [LCD2.BAS] IF DEGERLER[51] = 1 THEN
        movf Degerler#51,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL34
        btfss STATUS,2
        goto BC@LL34
F1_000382 equ $ ; IN [LCD2.BAS] PRINT AT 3,17, "X"
        movlw 128
        movwf BPFH
        movlw 164
        f@call LCD@CRS
        movlw 88
        f@call PRINT
        f@jump BC@LL35
BC@LL34
F1_000383 equ $ ; IN [LCD2.BAS] ELSE
F1_000384 equ $ ; IN [LCD2.BAS] PRINT AT 3,17, " "
        movlw 128
        movwf BPFH
        movlw 164
        f@call LCD@CRS
        movlw 32
        f@call PRINT
F1_000385 equ $ ; IN [LCD2.BAS] ENDIF
BC@LL35
F1_000386 equ $ ; IN [LCD2.BAS] IF DEGERLER[17] = 1 THEN
        movf Degerler#17,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL37
        btfss STATUS,2
        goto BC@LL37
F1_000387 equ $ ; IN [LCD2.BAS] PRINT AT 3,18, "X"
        movlw 128
        movwf BPFH
        movlw 165
        f@call LCD@CRS
        movlw 88
        f@call PRINT
        f@jump BC@LL38
BC@LL37
F1_000388 equ $ ; IN [LCD2.BAS] ELSE
F1_000389 equ $ ; IN [LCD2.BAS] PRINT AT 3,18, " "
        movlw 128
        movwf BPFH
        movlw 165
        f@call LCD@CRS
        movlw 32
        f@call PRINT
F1_000390 equ $ ; IN [LCD2.BAS] ENDIF
BC@LL38
F1_000391 equ $ ; IN [LCD2.BAS] IF DEGERLER[18] = 1 THEN
        movf Degerler#18,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL40
        btfss STATUS,2
        goto BC@LL40
F1_000392 equ $ ; IN [LCD2.BAS] PRINT AT 3,19, "X"
        movlw 128
        movwf BPFH
        movlw 166
        f@call LCD@CRS
        movlw 88
        f@call PRINT
        f@jump BC@LL41
BC@LL40
F1_000393 equ $ ; IN [LCD2.BAS] ELSE
F1_000394 equ $ ; IN [LCD2.BAS] PRINT AT 3,19, " "
        movlw 128
        movwf BPFH
        movlw 166
        f@call LCD@CRS
        movlw 32
        f@call PRINT
F1_000395 equ $ ; IN [LCD2.BAS] ENDIF
BC@LL41
F1_000416 equ $ ; IN [LCD2.BAS] GOTO DONGU
        f@jump Dongu
CalcValue
F1_000421 equ $ ; IN [LCD2.BAS] DECVALUE = SEGMENTS[0]+SEGMENTS[1]*2+SEGMENTS[2]*4+SEGMENTS[3]*8+SEGMENTS[4]*16+SEGMENTS[5]*32+SEGMENTS[6]*64
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
        decf PP0,F
        set@page M@LB2
        btfss STATUS,2
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
        decf PP0,F
        set@page M@LB3
        btfss STATUS,2
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
        decf PP0,F
        set@page M@LB4
        btfss STATUS,2
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
        decf PP0,F
        set@page M@LB5
        btfss STATUS,2
        goto M@LB5
        movf PP7,W
        addwf PP8,W
        bsf STATUS,5
ram_bank = 1
        movwf DecValue
F1_000422 equ $ ; IN [LCD2.BAS] RESVALUE = "-"
        movlw 45
        movwf ResValue
F1_000423 equ $ ; IN [LCD2.BAS] IF DECVALUE = 0   THEN RESVALUE = " "
        movf DecValue,F
        set@page BC@LL43
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL43
        movlw 32
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL43
        bcf STATUS,5
ram_bank = 0
F1_000424 equ $ ; IN [LCD2.BAS] IF DECVALUE = 63  THEN RESVALUE = "0"
        movlw 63
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        set@page BC@LL45
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL45
        movlw 48
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL45
        bcf STATUS,5
ram_bank = 0
F1_000425 equ $ ; IN [LCD2.BAS] IF DECVALUE = 6   THEN RESVALUE = "1"
        movlw 6
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        set@page BC@LL47
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL47
        movlw 49
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL47
        bcf STATUS,5
ram_bank = 0
F1_000426 equ $ ; IN [LCD2.BAS] IF DECVALUE = 91  THEN RESVALUE = "2"
        movlw 91
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        set@page BC@LL49
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL49
        movlw 50
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL49
        bcf STATUS,5
ram_bank = 0
F1_000427 equ $ ; IN [LCD2.BAS] IF DECVALUE = 79  THEN RESVALUE = "3"
        movlw 79
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        set@page BC@LL51
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL51
        movlw 51
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL51
        bcf STATUS,5
ram_bank = 0
F1_000428 equ $ ; IN [LCD2.BAS] IF DECVALUE = 102 THEN RESVALUE = "4"
        movlw 102
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        set@page BC@LL53
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL53
        movlw 52
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL53
        bcf STATUS,5
ram_bank = 0
F1_000429 equ $ ; IN [LCD2.BAS] IF DECVALUE = 109 THEN RESVALUE = "5"
        movlw 109
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        set@page BC@LL55
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL55
        movlw 53
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL55
        bcf STATUS,5
ram_bank = 0
F1_000430 equ $ ; IN [LCD2.BAS] IF DECVALUE = 125 THEN RESVALUE = "6"
        movlw 125
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        set@page BC@LL57
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL57
        movlw 54
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL57
        bcf STATUS,5
ram_bank = 0
F1_000431 equ $ ; IN [LCD2.BAS] IF DECVALUE = 7   THEN RESVALUE = "7"
        movlw 7
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        set@page BC@LL59
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL59
        movlw 55
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL59
        bcf STATUS,5
ram_bank = 0
F1_000432 equ $ ; IN [LCD2.BAS] IF DECVALUE = 127 THEN RESVALUE = "8"
        movlw 127
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        set@page BC@LL61
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL61
        movlw 56
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL61
        bcf STATUS,5
ram_bank = 0
F1_000433 equ $ ; IN [LCD2.BAS] IF DECVALUE = 111 THEN RESVALUE = "9"
        movlw 111
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        set@page BC@LL63
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL63
        movlw 57
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL63
        bcf STATUS,5
ram_bank = 0
F1_000434 equ $ ; IN [LCD2.BAS] IF DECVALUE = 120 THEN RESVALUE = "U"
        movlw 120
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        set@page BC@LL65
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL65
        movlw 85
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL65
        bcf STATUS,5
ram_bank = 0
F1_000435 equ $ ; IN [LCD2.BAS] IF DECVALUE = 28  THEN RESVALUE = "U"
        movlw 28
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        set@page BC@LL67
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL67
        movlw 85
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL67
        bcf STATUS,5
ram_bank = 0
F1_000436 equ $ ; IN [LCD2.BAS] IF DECVALUE = 84  THEN RESVALUE = "N"
        movlw 84
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        set@page BC@LL69
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL69
        movlw 110
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL69
        bcf STATUS,5
ram_bank = 0
F1_000437 equ $ ; IN [LCD2.BAS] IF DECVALUE = 88  THEN RESVALUE = "E"
        movlw 88
        bsf STATUS,5
ram_bank = 1
        subwf DecValue,W
        set@page BC@LL71
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL71
        movlw 101
        bsf STATUS,5
ram_bank = 1
        movwf ResValue
BC@LL71
        bcf STATUS,5
ram_bank = 0
F1_000453 equ $ ; IN [LCD2.BAS] RETURN
        return
KomutGonder
F1_000457 equ $ ; IN [LCD2.BAS] LOW SDA
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,4
        bcf STATUS,5
ram_bank = 0
        bcf PORTC,4
F1_000458 equ $ ; IN [LCD2.BAS] DELAYUS 10
        movlw 8
        movwf PP0
        set@page ID@LB72
ID@LB72
        decfsz PP0,F
        goto ID@LB72
F1_000459 equ $ ; IN [LCD2.BAS] LOW SCL
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,3
        bcf STATUS,5
ram_bank = 0
        bcf PORTC,3
F1_000460 equ $ ; IN [LCD2.BAS] DELAYUS 10
        movlw 8
        movwf PP0
        set@page ID@LB73
ID@LB73
        decfsz PP0,F
        goto ID@LB73
F1_000462 equ $ ; IN [LCD2.BAS] DATAM = $78
        movlw 120
        bsf STATUS,5
ram_bank = 1
        movwf DATAm
F1_000463 equ $ ; IN [LCD2.BAS] GOSUB GONDER
        bcf STATUS,5
ram_bank = 0
        f@call Gonder
F1_000464 equ $ ; IN [LCD2.BAS] DATAM = $80
        movlw 128
        bsf STATUS,5
ram_bank = 1
        movwf DATAm
F1_000465 equ $ ; IN [LCD2.BAS] GOSUB GONDER
        bcf STATUS,5
ram_bank = 0
        f@call Gonder
F1_000466 equ $ ; IN [LCD2.BAS] DATAM = CMD
        bsf STATUS,5
ram_bank = 1
        movf Cmd,W
        movwf DATAm
F1_000467 equ $ ; IN [LCD2.BAS] GOSUB GONDER
        bcf STATUS,5
ram_bank = 0
        f@call Gonder
F1_000470 equ $ ; IN [LCD2.BAS] HIGH SCL
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,3
        bcf STATUS,5
ram_bank = 0
        bsf PORTC,3
F1_000471 equ $ ; IN [LCD2.BAS] DELAYUS 1
        nop
        nop
F1_000472 equ $ ; IN [LCD2.BAS] HIGH SDA
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,4
        bcf STATUS,5
ram_bank = 0
        bsf PORTC,4
F1_000477 equ $ ; IN [LCD2.BAS] RETURN
        return
DataGonder
F1_000481 equ $ ; IN [LCD2.BAS] LOW SDA
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,4
        bcf STATUS,5
ram_bank = 0
        bcf PORTC,4
F1_000482 equ $ ; IN [LCD2.BAS] DELAYUS 10
        movlw 8
        movwf PP0
        set@page ID@LB74
ID@LB74
        decfsz PP0,F
        goto ID@LB74
F1_000483 equ $ ; IN [LCD2.BAS] LOW SCL
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,3
        bcf STATUS,5
ram_bank = 0
        bcf PORTC,3
F1_000484 equ $ ; IN [LCD2.BAS] DELAYUS 10
        movlw 8
        movwf PP0
        set@page ID@LB75
ID@LB75
        decfsz PP0,F
        goto ID@LB75
F1_000486 equ $ ; IN [LCD2.BAS] DATAM = $78
        movlw 120
        bsf STATUS,5
ram_bank = 1
        movwf DATAm
F1_000487 equ $ ; IN [LCD2.BAS] GOSUB GONDER
        bcf STATUS,5
ram_bank = 0
        f@call Gonder
F1_000488 equ $ ; IN [LCD2.BAS] DATAM = $40
        movlw 64
        bsf STATUS,5
ram_bank = 1
        movwf DATAm
F1_000489 equ $ ; IN [LCD2.BAS] GOSUB GONDER
        bcf STATUS,5
ram_bank = 0
        f@call Gonder
F1_000490 equ $ ; IN [LCD2.BAS] DATAM = LCDDATA
        bsf STATUS,5
ram_bank = 1
        movf LcdData,W
        movwf DATAm
F1_000491 equ $ ; IN [LCD2.BAS] GOSUB GONDER
        bcf STATUS,5
ram_bank = 0
        f@call Gonder
F1_000494 equ $ ; IN [LCD2.BAS] HIGH SCL
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,3
        bcf STATUS,5
ram_bank = 0
        bsf PORTC,3
F1_000495 equ $ ; IN [LCD2.BAS] DELAYUS 1
        nop
        nop
F1_000496 equ $ ; IN [LCD2.BAS] HIGH SDA
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,4
        bcf STATUS,5
ram_bank = 0
        bsf PORTC,4
F1_000498 equ $ ; IN [LCD2.BAS] RETURN
        return
Gonder
F1_000504 equ $ ; IN [LCD2.BAS] FOR DON = 1 TO 8
        movlw 1
        bsf STATUS,5
ram_bank = 1
        movwf don
FR@LB76
        bcf STATUS,5
ram_bank = 0
        movlw 9
        bsf STATUS,5
ram_bank = 1
        subwf don,W
        set@page NX@LB77
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto NX@LB77
F1_000505 equ $ ; IN [LCD2.BAS] IF DATAM.7 = 0 THEN
        set@page BC@LL80
        bsf STATUS,5
ram_bank = 1
        rlf DATAm,W
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto BC@LL80
F1_000506 equ $ ; IN [LCD2.BAS] LOW SDA
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,4
        bcf STATUS,5
ram_bank = 0
        bcf PORTC,4
        f@jump BC@LL81
BC@LL80
F1_000507 equ $ ; IN [LCD2.BAS] ELSE
F1_000508 equ $ ; IN [LCD2.BAS] HIGH SDA
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,4
        bcf STATUS,5
ram_bank = 0
        bsf PORTC,4
F1_000509 equ $ ; IN [LCD2.BAS] ENDIF
BC@LL81
F1_000510 equ $ ; IN [LCD2.BAS] DATAM = DATAM << 1
        bcf STATUS,0
        bsf STATUS,5
ram_bank = 1
        rlf DATAm,F
F1_000511 equ $ ; IN [LCD2.BAS] DELAYUS 1
        nop
        nop
F1_000512 equ $ ; IN [LCD2.BAS] HIGH SCL
        bcf TRISC,3
        bcf STATUS,5
ram_bank = 0
        bsf PORTC,3
F1_000513 equ $ ; IN [LCD2.BAS] DELAYUS 9
        movlw 7
        movwf PP0
        set@page ID@LB82
ID@LB82
        decfsz PP0,F
        goto ID@LB82
F1_000514 equ $ ; IN [LCD2.BAS] LOW SCL
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,3
        bcf STATUS,5
ram_bank = 0
        bcf PORTC,3
CT@LB78
F1_000515 equ $ ; IN [LCD2.BAS] NEXT DON
        movlw 1
        bsf STATUS,5
ram_bank = 1
        addwf don,F
        set@page FR@LB76
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,0
        goto FR@LB76
NX@LB77
F1_000518 equ $ ; IN [LCD2.BAS] DELAYUS 1
        nop
        nop
F1_000519 equ $ ; IN [LCD2.BAS] HIGH SCL
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,3
        bcf STATUS,5
ram_bank = 0
        bsf PORTC,3
F1_000520 equ $ ; IN [LCD2.BAS] DELAYUS 9
        movlw 7
        movwf PP0
        set@page ID@LB83
ID@LB83
        decfsz PP0,F
        goto ID@LB83
F1_000521 equ $ ; IN [LCD2.BAS] LOW SCL
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,3
        bcf STATUS,5
ram_bank = 0
        bcf PORTC,3
F1_000522 equ $ ; IN [LCD2.BAS] RETURN
        return
F1_000524 equ $ ; IN [LCD2.BAS] END
PB@LB84
        f@jump PB@LB84
F1_EOF equ $ ; LCD2.BAS
PB@LB85
        f@jump PB@LB85
STR@LB1
        de 32,32,32,32,82,65,67,65,76,32,66,67,67,51,57,66,0
STR@LB2
        de 32,40,67,41,50,48,49,53,32,84,65,55,87,32,66,97,114,105,115,0
STR@LB3
        de 32,32,68,73,83,80,76,65,89,32,84,69,83,84,73,78,71,0
STR@LB4
        de 70,114,101,107,97,110,115,32,58,32,0
STR@LB5
        de 80,87,82,32,58,32,72,73,71,72,0
STR@LB6
        de 80,87,82,32,58,32,76,79,87,32,0
STR@LB7
        de 77,79,68,32,58,32,85,83,66,32,0
STR@LB8
        de 77,79,68,32,58,32,76,83,66,32,0
STR@LB9
        de 75,97,110,97,108,32,58,32,0
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&BOREN_ON&LVP_OFF&CPD_OFF&WRT_OFF&DEBUG_OFF&CP_OFF
        end
