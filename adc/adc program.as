opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_display
	FNCALL	_main,_count
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftmul
	FNCALL	_main,___ftdiv
	FNCALL	_main,___fttol
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_count,___awdiv
	FNCALL	_count,___awmod
	FNCALL	_count,_display
	FNCALL	_display,_pulse
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNROOT	_main
	global	_DV
	global	_a
	global	_b
	global	_c
	global	_d
	global	_high
	global	_low
	global	_ADCON0
psect	text242,local,class=CODE,delta=2
global __ptext242
__ptext242:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_GO
_GO	set	249
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"adc program.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_DV:
       ds      2

_a:
       ds      2

_b:
       ds      2

_c:
       ds      2

_d:
       ds      2

_high:
       ds      2

_low:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
	clrf	((__pbssBANK0)+12)&07Fh
	clrf	((__pbssBANK0)+13)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_pulse
?_pulse:	; 0 bytes @ 0x0
	global	??_pulse
??_pulse:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	?_display
?_display:	; 0 bytes @ 0x1
	global	display@a
display@a:	; 2 bytes @ 0x1
	ds	1
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	display@b
display@b:	; 2 bytes @ 0x3
	ds	1
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	??_display
??_display:	; 0 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	1
	global	?_count
?_count:	; 0 bytes @ 0x9
	global	count@i
count@i:	; 2 bytes @ 0x9
	ds	2
	global	??_count
??_count:	; 0 bytes @ 0xB
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xB
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___fttol
??___fttol:	; 0 bytes @ 0x0
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x4
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x5
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x9
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xA
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xA
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xD
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x10
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x14
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x15
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x18
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x19
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x1A
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x1A
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x1D
	ds	3
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x20
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x24
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x25
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x28
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x29
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x2A
	ds	2
	global	main@z
main@z:	; 3 bytes @ 0x2C
	ds	3
	global	main@a
main@a:	; 2 bytes @ 0x2F
	ds	2
	global	main@c
main@c:	; 2 bytes @ 0x31
	ds	2
	global	main@b
main@b:	; 2 bytes @ 0x33
	ds	2
	global	main@d
main@d:	; 2 bytes @ 0x35
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 14, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     55      69
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awtoft
;;   _count->___awdiv
;;   _display->_pulse
;;   ___awtoft->___ftpack
;;   ___ftmul->___awtoft
;;   ___ftdiv->___awtoft
;;   ___fttol->___ftpack
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___ftdiv
;;   ___ftmul->___fttol
;;   ___ftdiv->___ftmul
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                13    13      0    3126
;;                                             42 BANK0     13    13      0
;;                            _display
;;                              _count
;;                           ___awtoft
;;                            ___ftmul
;;                            ___ftdiv
;;                            ___fttol
;;                            ___awdiv
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _count                                                2     0      2     728
;;                                              9 COMMON     2     0      2
;;                            ___awdiv
;;                            ___awmod
;;                            _display
;; ---------------------------------------------------------------------------------
;; (2) _display                                              4     0      4      44
;;                                              1 COMMON     4     0      4
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) ___awtoft                                             6     3      3     300
;;                                              8 COMMON     6     3      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___ftmul                                             16    10      6     535
;;                                             10 BANK0     16    10      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftdiv                                             16    10      6     489
;;                                             26 BANK0     16    10      6
;;                           ___ftpack
;;                            ___ftmul (ARG)
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _pulse                                                1     1      0       0
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (1) ___fttol                                             14    10      4     252
;;                                              8 COMMON     4     0      4
;;                                              0 BANK0     10    10      0
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _display
;;     _pulse
;;   _count
;;     ___awdiv
;;     ___awmod
;;     _display
;;       _pulse
;;   ___awtoft
;;     ___ftpack
;;   ___ftmul
;;     ___ftpack
;;     ___awtoft (ARG)
;;       ___ftpack
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;   ___ftdiv
;;     ___ftpack
;;     ___ftmul (ARG)
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___awtoft (ARG)
;;       ___ftpack
;;   ___fttol
;;     ___ftpack (ARG)
;;   ___awdiv
;;   ___awmod
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      53       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     37      45       5       86.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      56      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 34 in file "D:\New folder\adc program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  z               3   44[BANK0 ] float 
;;  d               2   53[BANK0 ] int 
;;  b               2   51[BANK0 ] int 
;;  c               2   49[BANK0 ] int 
;;  a               2   47[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      11       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_display
;;		_count
;;		___awtoft
;;		___ftmul
;;		___ftdiv
;;		___fttol
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\New folder\adc program.c"
	line	34
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	35
	
l2911:	
;adc program.c: 35: TRISA=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	36
	
l2913:	
;adc program.c: 36: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	37
	
l2915:	
;adc program.c: 37: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	38
	
l2917:	
;adc program.c: 38: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	39
	
l2919:	
;adc program.c: 39: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	40
	
l2921:	
;adc program.c: 40: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	41
	
l2923:	
;adc program.c: 41: ANSEL=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	42
;adc program.c: 42: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	goto	l2925
	line	43
;adc program.c: 43: while(1)
	
l1050:	
	line	45
	
l2925:	
;adc program.c: 44: {
;adc program.c: 45: ADCON0=0X81;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	46
	
l2927:	
;adc program.c: 46: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	47
	
l2929:	
;adc program.c: 47: GO=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	48
	
l2931:	
;adc program.c: 48: display(0x38,0);
	movlw	low(038h)
	movwf	(?_display)
	movlw	high(038h)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	49
	
l2933:	
;adc program.c: 49: display(0x0e,0);
	movlw	low(0Eh)
	movwf	(?_display)
	movlw	high(0Eh)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	50
;adc program.c: 50: while(GO);
	goto	l1051
	
l1052:	
	
l1051:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(249/8),(249)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l1051
u3170:
	goto	l2935
	
l1053:	
	line	51
	
l2935:	
;adc program.c: 51: high=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(_high)
	movf	1+(??_main+0)+0,w
	movwf	(_high+1)
	line	52
;adc program.c: 52: low=ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(_low)
	movf	1+(??_main+0)+0,w
	movwf	(_low+1)
	line	53
	
l2937:	
;adc program.c: 53: if(high==0)
	movf	((_high+1)),w
	iorwf	((_high)),w
	skipz
	goto	u3181
	goto	u3180
u3181:
	goto	l2941
u3180:
	line	55
	
l2939:	
;adc program.c: 54: {
;adc program.c: 55: DV=low;
	movf	(_low+1),w
	clrf	(_DV+1)
	addwf	(_DV+1)
	movf	(_low),w
	clrf	(_DV)
	addwf	(_DV)

	goto	l2941
	line	56
	
l1054:	
	line	57
	
l2941:	
;adc program.c: 56: }
;adc program.c: 57: if(high==1)
	movlw	01h
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u3191
	goto	u3190
u3191:
	goto	l2947
u3190:
	line	59
	
l2943:	
;adc program.c: 58: {
;adc program.c: 59: DV=low+256;
	movf	(_low),w
	addlw	low(0100h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0100h)
	movwf	1+(_DV)
	line	60
	
l2945:	
;adc program.c: 60: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	goto	l2947
	line	61
	
l1055:	
	line	62
	
l2947:	
;adc program.c: 61: }
;adc program.c: 62: if(high==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u3201
	goto	u3200
u3201:
	goto	l2953
u3200:
	line	64
	
l2949:	
;adc program.c: 63: {
;adc program.c: 64: DV=low+512;
	movf	(_low),w
	addlw	low(0200h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0200h)
	movwf	1+(_DV)
	line	65
	
l2951:	
;adc program.c: 65: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	goto	l2953
	line	66
	
l1056:	
	line	67
	
l2953:	
;adc program.c: 66: }
;adc program.c: 67: if( high==3)
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u3211
	goto	u3210
u3211:
	goto	l2959
u3210:
	line	69
	
l2955:	
;adc program.c: 68: {
;adc program.c: 69: DV=low+768;
	movf	(_low),w
	addlw	low(0300h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0300h)
	movwf	1+(_DV)
	line	70
	
l2957:	
;adc program.c: 70: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	goto	l2959
	line	71
	
l1057:	
	line	73
	
l2959:	
;adc program.c: 71: }
;adc program.c: 72: int a,b,c,d;
;adc program.c: 73: display(0xc0,0);
	movlw	low(0C0h)
	movwf	(?_display)
	movlw	high(0C0h)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	75
	
l2961:	
;adc program.c: 74: float z;
;adc program.c: 75: z=(DV*5.0)/1023.0;
	movlw	0xc0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movlw	0x7f
	movwf	(?___ftdiv+1)
	movlw	0x44
	movwf	(?___ftdiv+2)
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xa0
	movwf	(?___ftmul+1)
	movlw	0x40
	movwf	(?___ftmul+2)
	movf	(_DV+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(_DV),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(main@z)
	movf	(1+(?___ftdiv)),w
	movwf	(main@z+1)
	movf	(2+(?___ftdiv)),w
	movwf	(main@z+2)
	line	76
	
l2963:	
;adc program.c: 76: d=z*100;
	movf	(main@z),w
	movwf	0+(?___ftmul)+03h
	movf	(main@z+1),w
	movwf	1+(?___ftmul)+03h
	movf	(main@z+2),w
	movwf	2+(?___ftmul)+03h
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xc8
	movwf	(?___ftmul+1)
	movlw	0x42
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@d+1)
	addwf	(main@d+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(main@d)
	addwf	(main@d)

	line	77
	
l2965:	
;adc program.c: 77: a=d/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(main@d+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@d),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@a+1)
	addwf	(main@a+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@a)
	addwf	(main@a)

	line	78
	
l2967:	
;adc program.c: 78: b=(d%100)/10;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(main@d+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@d),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@b+1)
	addwf	(main@b+1)
	movf	(0+(?___awmod)),w
	clrf	(main@b)
	addwf	(main@b)

	
l2969:	
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@b+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@b),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@b+1)
	addwf	(main@b+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@b)
	addwf	(main@b)

	line	79
	
l2971:	
;adc program.c: 79: c=d%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@d+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@d),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@c+1)
	addwf	(main@c+1)
	movf	(0+(?___awmod)),w
	clrf	(main@c)
	addwf	(main@c)

	line	80
	
l2973:	
;adc program.c: 80: display(0x30+a,1);
	movf	(main@a),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(main@a+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	81
	
l2975:	
;adc program.c: 81: display(0x2e,1);
	movlw	low(02Eh)
	movwf	(?_display)
	movlw	high(02Eh)
	movwf	((?_display))+1
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	82
	
l2977:	
;adc program.c: 82: display(0x30+b,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@b),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(main@b+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	83
	
l2979:	
;adc program.c: 83: display(0x30+c,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@c),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(main@c+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	84
	
l2981:	
;adc program.c: 84: display(0x20,1);
	movlw	low(020h)
	movwf	(?_display)
	movlw	high(020h)
	movwf	((?_display))+1
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	85
	
l2983:	
;adc program.c: 85: display(0x56,1);
	movlw	low(056h)
	movwf	(?_display)
	movlw	high(056h)
	movwf	((?_display))+1
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	goto	l2925
	line	86
	
l1058:	
	line	43
	goto	l2925
	
l1059:	
	line	87
	
l1060:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_count
psect	text243,local,class=CODE,delta=2
global __ptext243
__ptext243:

;; *************** function _count *****************
;; Defined at:
;;		line 19 in file "D:\New folder\adc program.c"
;; Parameters:    Size  Location     Type
;;  i               2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_display
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text243
	file	"D:\New folder\adc program.c"
	line	19
	global	__size_of_count
	__size_of_count	equ	__end_of_count-_count
	
_count:	
	opt	stack 5
; Regs used in _count: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l2909:	
;adc program.c: 20: a=i/1000;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(count@i+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(count@i),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a)
	addwf	(_a)

	line	21
;adc program.c: 21: b=((i%1000)/100);
	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	movf	(count@i+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(count@i),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b+1)
	addwf	(_b+1)
	movf	(0+(?___awmod)),w
	clrf	(_b)
	addwf	(_b)

	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_b+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_b),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b+1)
	addwf	(_b+1)
	movf	(0+(?___awdiv)),w
	clrf	(_b)
	addwf	(_b)

	line	22
;adc program.c: 22: c=((i%100)/10);
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(count@i+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(count@i),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c+1)
	addwf	(_c+1)
	movf	(0+(?___awmod)),w
	clrf	(_c)
	addwf	(_c)

	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_c+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_c),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c+1)
	addwf	(_c+1)
	movf	(0+(?___awdiv)),w
	clrf	(_c)
	addwf	(_c)

	line	23
;adc program.c: 23: d=i%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(count@i+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(count@i),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_d+1)
	addwf	(_d+1)
	movf	(0+(?___awmod)),w
	clrf	(_d)
	addwf	(_d)

	line	24
;adc program.c: 24: display(0x80,0);
	movlw	low(080h)
	movwf	(?_display)
	movlw	high(080h)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	25
;adc program.c: 25: display(0x30+a,01);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(_a+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	26
;adc program.c: 26: display(0x30+b,01);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_b),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(_b+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	27
;adc program.c: 27: display(0x30+c,01);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(_c+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	28
;adc program.c: 28: display(0x30+d,01);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_d),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(_d+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	30
	
l1047:	
	return
	opt stack 0
GLOBAL	__end_of_count
	__end_of_count:
;; =============== function _count ends ============

	signat	_count,4216
	global	_display
psect	text244,local,class=CODE,delta=2
global __ptext244
__ptext244:

;; *************** function _display *****************
;; Defined at:
;;		line 13 in file "D:\New folder\adc program.c"
;; Parameters:    Size  Location     Type
;;  a               2    1[COMMON] int 
;;  b               2    3[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_count
;;		_main
;; This function uses a non-reentrant model
;;
psect	text244
	file	"D:\New folder\adc program.c"
	line	13
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l2903:	
;adc program.c: 14: RE0=b;RE1=0;
	btfsc	(display@b),0
	goto	u3151
	goto	u3150
	
u3151:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u3164
u3150:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u3164:
	bcf	(73/8),(73)&7
	line	15
	
l2905:	
;adc program.c: 15: PORTD=a;
	movf	(display@a),w
	movwf	(8)	;volatile
	line	16
	
l2907:	
;adc program.c: 16: pulse();
	fcall	_pulse
	line	17
	
l1044:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,8312
	global	___awtoft
psect	text245,local,class=CODE,delta=2
global __ptext245
__ptext245:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text245
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 6
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l2895:	
	clrf	(___awtoft@sign)
	line	37
	btfss	(___awtoft@c+1),7
	goto	u3141
	goto	u3140
u3141:
	goto	l2899
u3140:
	line	38
	
l2897:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l2899
	line	40
	
l1205:	
	line	41
	
l2899:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l1206
	
l2901:	
	line	42
	
l1206:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text246,local,class=CODE,delta=2
global __ptext246
__ptext246:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   10[BANK0 ] float 
;;  f2              3   13[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   21[BANK0 ] unsigned um
;;  sign            1   25[BANK0 ] unsigned char 
;;  cntr            1   24[BANK0 ] unsigned char 
;;  exp             1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text246
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 6
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l2845:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u3001
	goto	u3000
u3001:
	goto	l2851
u3000:
	line	57
	
l2847:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1168
	
l2849:	
	goto	l1168
	
l1167:	
	line	58
	
l2851:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u3011
	goto	u3010
u3011:
	goto	l2857
u3010:
	line	59
	
l2853:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1168
	
l2855:	
	goto	l1168
	
l1169:	
	line	60
	
l2857:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3025:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3020:
	addlw	-1
	skipz
	goto	u3025
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3035:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3030:
	addlw	-1
	skipz
	goto	u3035
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l2859:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l2861:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l2863:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l2865:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l2867:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2869
	line	70
	
l1170:	
	line	71
	
l2869:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l2873
u3040:
	line	72
	
l2871:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3051
	addwf	(___ftmul@f3_as_product+1),f
u3051:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3052
	addwf	(___ftmul@f3_as_product+2),f
u3052:

	goto	l2873
	
l1171:	
	line	73
	
l2873:	
	movlw	01h
u3065:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3065

	line	74
	
l2875:	
	movlw	01h
u3075:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3075
	line	75
	
l2877:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l2869
u3080:
	goto	l2879
	
l1172:	
	line	76
	
l2879:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2881
	line	77
	
l1173:	
	line	78
	
l2881:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l2885
u3090:
	line	79
	
l2883:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3101
	addwf	(___ftmul@f3_as_product+1),f
u3101:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3102
	addwf	(___ftmul@f3_as_product+2),f
u3102:

	goto	l2885
	
l1174:	
	line	80
	
l2885:	
	movlw	01h
u3115:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3115

	line	81
	
l2887:	
	movlw	01h
u3125:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3125

	line	82
	
l2889:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l2881
u3130:
	goto	l2891
	
l1175:	
	line	83
	
l2891:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l1168
	
l2893:	
	line	84
	
l1168:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text247,local,class=CODE,delta=2
global __ptext247
__ptext247:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   26[BANK0 ] float 
;;  f1              3   29[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   37[BANK0 ] float 
;;  sign            1   41[BANK0 ] unsigned char 
;;  exp             1   40[BANK0 ] unsigned char 
;;  cntr            1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   26[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text247
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 6
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l2803:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u2921
	goto	u2920
u2921:
	goto	l2809
u2920:
	line	56
	
l2805:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1158
	
l2807:	
	goto	l1158
	
l1157:	
	line	57
	
l2809:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u2931
	goto	u2930
u2931:
	goto	l2815
u2930:
	line	58
	
l2811:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1158
	
l2813:	
	goto	l1158
	
l1159:	
	line	59
	
l2815:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l2817:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l2819:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2945:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2940:
	addlw	-1
	skipz
	goto	u2945
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l2821:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2955:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2950:
	addlw	-1
	skipz
	goto	u2955
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l2823:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l2825:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l2827:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l2829
	line	69
	
l1160:	
	line	70
	
l2829:	
	movlw	01h
u2965:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u2965
	line	71
	
l2831:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u2975
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u2975
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u2975:
	skipc
	goto	u2971
	goto	u2970
u2971:
	goto	l2837
u2970:
	line	72
	
l2833:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l2835:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l2837
	line	74
	
l1161:	
	line	75
	
l2837:	
	movlw	01h
u2985:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u2985
	line	76
	
l2839:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u2991
	goto	u2990
u2991:
	goto	l2829
u2990:
	goto	l2841
	
l1162:	
	line	77
	
l2841:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l1158
	
l2843:	
	line	78
	
l1158:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	_pulse
psect	text248,local,class=CODE,delta=2
global __ptext248
__ptext248:

;; *************** function _pulse *****************
;; Defined at:
;;		line 6 in file "D:\New folder\adc program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display
;; This function uses a non-reentrant model
;;
psect	text248
	file	"D:\New folder\adc program.c"
	line	6
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 5
; Regs used in _pulse: [wreg]
	line	7
	
l2797:	
;adc program.c: 7: RE2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7
	line	8
	
l2799:	
;adc program.c: 8: _delay((unsigned long)((400)*(4000000/4000000.0)));
	opt asmopt_off
movlw	133
movwf	(??_pulse+0)+0,f
u3227:
decfsz	(??_pulse+0)+0,f
	goto	u3227
opt asmopt_on

	line	9
	
l2801:	
;adc program.c: 9: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	10
;adc program.c: 10: _delay((unsigned long)((400)*(4000000/4000000.0)));
	opt asmopt_off
movlw	133
movwf	(??_pulse+0)+0,f
u3237:
decfsz	(??_pulse+0)+0,f
	goto	u3237
opt asmopt_on

	line	11
	
l1041:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	___awmod
psect	text249,local,class=CODE,delta=2
global __ptext249
__ptext249:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_count
;;		_main
;; This function uses a non-reentrant model
;;
psect	text249
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2717:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2771
	goto	u2770
u2771:
	goto	l2721
u2770:
	line	10
	
l2719:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2721
	line	12
	
l1277:	
	line	13
	
l2721:	
	btfss	(___awmod@divisor+1),7
	goto	u2781
	goto	u2780
u2781:
	goto	l2725
u2780:
	line	14
	
l2723:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2725
	
l1278:	
	line	15
	
l2725:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2791
	goto	u2790
u2791:
	goto	l2743
u2790:
	line	16
	
l2727:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2733
	
l1281:	
	line	18
	
l2729:	
	movlw	01h
	
u2805:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2805
	line	19
	
l2731:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2733
	line	20
	
l1280:	
	line	17
	
l2733:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l2729
u2810:
	goto	l2735
	
l1282:	
	goto	l2735
	line	21
	
l1283:	
	line	22
	
l2735:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2825
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2825:
	skipc
	goto	u2821
	goto	u2820
u2821:
	goto	l2739
u2820:
	line	23
	
l2737:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2739
	
l1284:	
	line	24
	
l2739:	
	movlw	01h
	
u2835:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2835
	line	25
	
l2741:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2841
	goto	u2840
u2841:
	goto	l2735
u2840:
	goto	l2743
	
l1285:	
	goto	l2743
	line	26
	
l1279:	
	line	27
	
l2743:	
	movf	(___awmod@sign),w
	skipz
	goto	u2850
	goto	l2747
u2850:
	line	28
	
l2745:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2747
	
l1286:	
	line	29
	
l2747:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1287
	
l2749:	
	line	30
	
l1287:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text250,local,class=CODE,delta=2
global __ptext250
__ptext250:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_count
;;		_main
;; This function uses a non-reentrant model
;;
psect	text250
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2677:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2671
	goto	u2670
u2671:
	goto	l2681
u2670:
	line	11
	
l2679:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2681
	line	13
	
l1209:	
	line	14
	
l2681:	
	btfss	(___awdiv@dividend+1),7
	goto	u2681
	goto	u2680
u2681:
	goto	l2687
u2680:
	line	15
	
l2683:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2685:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2687
	line	17
	
l1210:	
	line	18
	
l2687:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2689:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2691
	goto	u2690
u2691:
	goto	l2709
u2690:
	line	20
	
l2691:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2697
	
l1213:	
	line	22
	
l2693:	
	movlw	01h
	
u2705:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2705
	line	23
	
l2695:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2697
	line	24
	
l1212:	
	line	21
	
l2697:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l2693
u2710:
	goto	l2699
	
l1214:	
	goto	l2699
	line	25
	
l1215:	
	line	26
	
l2699:	
	movlw	01h
	
u2725:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2725
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2735
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2735:
	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l2705
u2730:
	line	28
	
l2701:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2703:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2705
	line	30
	
l1216:	
	line	31
	
l2705:	
	movlw	01h
	
u2745:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2745
	line	32
	
l2707:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l2699
u2750:
	goto	l2709
	
l1217:	
	goto	l2709
	line	33
	
l1211:	
	line	34
	
l2709:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2760
	goto	l2713
u2760:
	line	35
	
l2711:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2713
	
l1218:	
	line	36
	
l2713:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1219
	
l2715:	
	line	37
	
l1219:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text251,local,class=CODE,delta=2
global __ptext251
__ptext251:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    5[BANK0 ] unsigned long 
;;  exp1            1    9[BANK0 ] unsigned char 
;;  sign1           1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         4      10       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text251
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 7
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2621:	
	movf	(___fttol@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2561
	goto	u2560
u2561:
	goto	l2627
u2560:
	line	50
	
l2623:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1179
	
l2625:	
	goto	l1179
	
l1178:	
	line	51
	
l2627:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2575:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2570:
	addlw	-1
	skipz
	goto	u2575
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2629:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2631:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2633:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2635:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2637:	
	btfss	(___fttol@exp1),7
	goto	u2581
	goto	u2580
u2581:
	goto	l2647
u2580:
	line	57
	
l2639:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2591
	goto	u2590
u2591:
	goto	l2645
u2590:
	line	58
	
l2641:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1179
	
l2643:	
	goto	l1179
	
l1181:	
	goto	l2645
	line	59
	
l1182:	
	line	60
	
l2645:	
	movlw	01h
u2605:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2605

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l2645
u2610:
	goto	l2657
	
l1183:	
	line	62
	goto	l2657
	
l1180:	
	line	63
	
l2647:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2621
	goto	u2620
u2621:
	goto	l2655
u2620:
	line	64
	
l2649:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1179
	
l2651:	
	goto	l1179
	
l1185:	
	line	65
	goto	l2655
	
l1187:	
	line	66
	
l2653:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2635:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2635
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l2655
	line	68
	
l1186:	
	line	65
	
l2655:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2641
	goto	u2640
u2641:
	goto	l2653
u2640:
	goto	l2657
	
l1188:	
	goto	l2657
	line	69
	
l1184:	
	line	70
	
l2657:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2650
	goto	l2661
u2650:
	line	71
	
l2659:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l2661
	
l1189:	
	line	72
	
l2661:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l1179
	
l2663:	
	line	73
	
l1179:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text252,local,class=CODE,delta=2
global __ptext252
__ptext252:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___ftmul
;;		___awtoft
;;		___ftadd
;;		___lbtoft
;;		___abtoft
;;		___lwtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text252
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 6
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l2585:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2450
	goto	l2589
u2450:
	
l2587:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2461
	goto	u2460
u2461:
	goto	l2595
u2460:
	goto	l2589
	
l1403:	
	line	65
	
l2589:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l1404
	
l2591:	
	goto	l1404
	
l1401:	
	line	66
	goto	l2595
	
l1406:	
	line	67
	
l2593:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2475:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2475

	goto	l2595
	line	69
	
l1405:	
	line	66
	
l2595:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l2593
u2480:
	goto	l1408
	
l1407:	
	line	70
	goto	l1408
	
l1409:	
	line	71
	
l2597:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l2599:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l2601:	
	movlw	01h
u2495:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2495

	line	74
	
l1408:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l2597
u2500:
	goto	l2605
	
l1410:	
	line	75
	goto	l2605
	
l1412:	
	line	76
	
l2603:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2515:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2515
	goto	l2605
	line	78
	
l1411:	
	line	75
	
l2605:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l2603
u2520:
	
l1413:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l1414
u2530:
	line	80
	
l2607:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l1414:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l2609:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2545:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2540:
	addlw	-1
	skipz
	goto	u2545
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l2611:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2550
	goto	l1415
u2550:
	line	84
	
l2613:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1415:	
	line	85
	line	86
	
l1404:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
psect	text253,local,class=CODE,delta=2
global __ptext253
__ptext253:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
