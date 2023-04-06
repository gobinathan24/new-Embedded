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
	FNCALL	_main,_type
	FNCALL	_main,_on
	FNCALL	_main,_address
	FNCALL	_main,_display
	FNCALL	_main,_call
	FNCALL	_display,_pulse
	FNCALL	_address,_pulse
	FNCALL	_call,_pulse
	FNCALL	_on,_pulse
	FNCALL	_type,_pulse
	FNROOT	_main
	global	_PORTA
psect	text120,local,class=CODE,delta=2
global __ptext120
__ptext120:
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_2:	
	retlw	110	;'n'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_1:	
	retlw	99	;'c'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	0
psect	strings
	file	"keypad add.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

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
	global	?_type
?_type:	; 0 bytes @ 0x0
	global	?_on
?_on:	; 0 bytes @ 0x0
	global	?_call
?_call:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	2
	global	??_type
??_type:	; 0 bytes @ 0x2
	global	??_on
??_on:	; 0 bytes @ 0x2
	global	??_call
??_call:	; 0 bytes @ 0x2
	global	?_address
?_address:	; 0 bytes @ 0x2
	global	?_display
?_display:	; 0 bytes @ 0x2
	global	address@c
address@c:	; 2 bytes @ 0x2
	global	display@a
display@a:	; 2 bytes @ 0x2
	ds	1
	global	call@name
call@name:	; 1 bytes @ 0x3
	ds	1
	global	??_address
??_address:	; 0 bytes @ 0x4
	global	??_display
??_display:	; 0 bytes @ 0x4
	global	??_main
??_main:	; 0 bytes @ 0x4
	global	main@count
main@count:	; 2 bytes @ 0x4
	ds	2
;;Data sizes: Strings 18, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; call@name	PTR unsigned char  size(1) Largest target is 10
;;		 -> STR_2(CODE[10]), STR_1(CODE[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_address
;;   _main->_display
;;   _main->_call
;;   _display->_pulse
;;   _address->_pulse
;;   _call->_pulse
;;   _on->_pulse
;;   _type->_pulse
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0      90
;;                                              4 COMMON     2     2      0
;;                               _type
;;                                 _on
;;                            _address
;;                            _display
;;                               _call
;; ---------------------------------------------------------------------------------
;; (1) _display                                              2     0      2      15
;;                                              2 COMMON     2     0      2
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _address                                              2     0      2      15
;;                                              2 COMMON     2     0      2
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _call                                                 2     2      0      30
;;                                              2 COMMON     2     2      0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _on                                                   0     0      0       0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _type                                                 0     0      0       0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (2) _pulse                                                2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _type
;;     _pulse
;;   _on
;;     _pulse
;;   _address
;;     _pulse
;;   _display
;;     _pulse
;;   _call
;;     _pulse
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       6       1       42.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 45 in file "D:\New folder\keypad add.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_type
;;		_on
;;		_address
;;		_display
;;		_call
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\New folder\keypad add.c"
	line	45
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	46
	
l2269:	
;keypad add.c: 46: int count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	47
;keypad add.c: 47: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	48
;keypad add.c: 48: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	49
	
l2271:	
;keypad add.c: 49: TRISC=0X78;
	movlw	(078h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	50
	
l2273:	
;keypad add.c: 50: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	51
;keypad add.c: 51: TRISB=0Xf8;
	movlw	(0F8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	52
	
l2275:	
;keypad add.c: 52: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	53
	
l2277:	
;keypad add.c: 53: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	54
	
l2279:	
;keypad add.c: 54: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	55
	
l2281:	
;keypad add.c: 55: type();
	fcall	_type
	line	56
	
l2283:	
;keypad add.c: 56: on();
	fcall	_on
	line	57
	
l2285:	
;keypad add.c: 57: address(0x80);
	movlw	low(080h)
	movwf	(?_address)
	movlw	high(080h)
	movwf	((?_address))+1
	fcall	_address
	goto	l2287
	line	58
;keypad add.c: 58: while(1)
	
l1048:	
	line	60
	
l2287:	
;keypad add.c: 59: {
;keypad add.c: 60: RC1=0;RC2=0;RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	
l2289:	
	bcf	(58/8),(58)&7
	
l2291:	
	bsf	(56/8),(56)&7
	line	61
	
l2293:	
;keypad add.c: 61: if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l1049
u2150:
	line	63
	
l2295:	
;keypad add.c: 62: {
;keypad add.c: 63: display(0x31);
	movlw	low(031h)
	movwf	(?_display)
	movlw	high(031h)
	movwf	((?_display))+1
	fcall	_display
	line	64
	
l2297:	
;keypad add.c: 64: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	65
;keypad add.c: 65: while(RC3==1);
	goto	l1050
	
l1051:	
	
l1050:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(59/8),(59)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l1050
u2160:
	goto	l1049
	
l1052:	
	line	66
	
l1049:	
	line	67
;keypad add.c: 66: }
;keypad add.c: 67: if(RC4==1)
	btfss	(60/8),(60)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l1053
u2170:
	line	69
	
l2299:	
;keypad add.c: 68: {
;keypad add.c: 69: display(0x34);
	movlw	low(034h)
	movwf	(?_display)
	movlw	high(034h)
	movwf	((?_display))+1
	fcall	_display
	line	70
	
l2301:	
;keypad add.c: 70: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	71
;keypad add.c: 71: while(RC4==1);
	goto	l1054
	
l1055:	
	
l1054:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l1054
u2180:
	goto	l1053
	
l1056:	
	line	72
	
l1053:	
	line	73
;keypad add.c: 72: }
;keypad add.c: 73: if(RC5==1)
	btfss	(61/8),(61)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l1057
u2190:
	line	75
	
l2303:	
;keypad add.c: 74: {
;keypad add.c: 75: display(0x37);
	movlw	low(037h)
	movwf	(?_display)
	movlw	high(037h)
	movwf	((?_display))+1
	fcall	_display
	line	76
	
l2305:	
;keypad add.c: 76: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	77
;keypad add.c: 77: while(RC5==1);
	goto	l1058
	
l1059:	
	
l1058:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(61/8),(61)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l1058
u2200:
	goto	l1057
	
l1060:	
	line	78
	
l1057:	
	line	79
;keypad add.c: 78: }
;keypad add.c: 79: RC0=0;RC2=0;RC1=1;
	bcf	(56/8),(56)&7
	bcf	(58/8),(58)&7
	bsf	(57/8),(57)&7
	line	80
;keypad add.c: 80: if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l1061
u2210:
	line	82
	
l2307:	
;keypad add.c: 81: {
;keypad add.c: 82: display(0x32);
	movlw	low(032h)
	movwf	(?_display)
	movlw	high(032h)
	movwf	((?_display))+1
	fcall	_display
	line	83
	
l2309:	
;keypad add.c: 83: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	84
;keypad add.c: 84: while(RC3==1);
	goto	l1062
	
l1063:	
	
l1062:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(59/8),(59)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l1062
u2220:
	goto	l1061
	
l1064:	
	line	85
	
l1061:	
	line	86
;keypad add.c: 85: }
;keypad add.c: 86: if(RC4==1)
	btfss	(60/8),(60)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l1065
u2230:
	line	88
	
l2311:	
;keypad add.c: 87: {
;keypad add.c: 88: display(0x35);
	movlw	low(035h)
	movwf	(?_display)
	movlw	high(035h)
	movwf	((?_display))+1
	fcall	_display
	line	89
	
l2313:	
;keypad add.c: 89: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	90
;keypad add.c: 90: while(RC4==1);
	goto	l1066
	
l1067:	
	
l1066:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l1066
u2240:
	goto	l1065
	
l1068:	
	line	91
	
l1065:	
	line	92
;keypad add.c: 91: }
;keypad add.c: 92: if(RC5==1)
	btfss	(61/8),(61)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l1069
u2250:
	line	94
	
l2315:	
;keypad add.c: 93: {
;keypad add.c: 94: display(0x38);
	movlw	low(038h)
	movwf	(?_display)
	movlw	high(038h)
	movwf	((?_display))+1
	fcall	_display
	line	95
	
l2317:	
;keypad add.c: 95: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	96
;keypad add.c: 96: while(RC5==1);
	goto	l1070
	
l1071:	
	
l1070:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(61/8),(61)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l1070
u2260:
	goto	l1069
	
l1072:	
	line	97
	
l1069:	
	line	104
;keypad add.c: 97: }
;keypad add.c: 104: RC1=0;RC0=0;RC2=1;
	bcf	(57/8),(57)&7
	bcf	(56/8),(56)&7
	bsf	(58/8),(58)&7
	line	105
;keypad add.c: 105: if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l1073
u2270:
	line	107
	
l2319:	
;keypad add.c: 106: {
;keypad add.c: 107: display(0x33);
	movlw	low(033h)
	movwf	(?_display)
	movlw	high(033h)
	movwf	((?_display))+1
	fcall	_display
	line	108
	
l2321:	
;keypad add.c: 108: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	109
;keypad add.c: 109: while(RC3==1);
	goto	l1074
	
l1075:	
	
l1074:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(59/8),(59)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l1074
u2280:
	goto	l1073
	
l1076:	
	line	110
	
l1073:	
	line	111
;keypad add.c: 110: }
;keypad add.c: 111: if(RC4==1)
	btfss	(60/8),(60)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l1077
u2290:
	line	113
	
l2323:	
;keypad add.c: 112: {
;keypad add.c: 113: display(0x36);
	movlw	low(036h)
	movwf	(?_display)
	movlw	high(036h)
	movwf	((?_display))+1
	fcall	_display
	line	114
	
l2325:	
;keypad add.c: 114: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	115
;keypad add.c: 115: while(RC4==1);
	goto	l1078
	
l1079:	
	
l1078:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l1078
u2300:
	goto	l1077
	
l1080:	
	line	116
	
l1077:	
	line	117
;keypad add.c: 116: }
;keypad add.c: 117: if(RC5==1)
	btfss	(61/8),(61)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l1081
u2310:
	line	119
	
l2327:	
;keypad add.c: 118: {
;keypad add.c: 119: display(0x39);
	movlw	low(039h)
	movwf	(?_display)
	movlw	high(039h)
	movwf	((?_display))+1
	fcall	_display
	line	120
	
l2329:	
;keypad add.c: 120: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	121
;keypad add.c: 121: while(RC5==1) ;
	goto	l1082
	
l1083:	
	
l1082:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(61/8),(61)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l1082
u2320:
	goto	l1081
	
l1084:	
	line	122
	
l1081:	
	line	129
;keypad add.c: 122: }
;keypad add.c: 129: RC1=0;RC2=0;RC0=1;
	bcf	(57/8),(57)&7
	bcf	(58/8),(58)&7
	bsf	(56/8),(56)&7
	line	130
;keypad add.c: 130: if(RC6==1)
	btfss	(62/8),(62)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l2287
u2330:
	line	132
	
l2331:	
;keypad add.c: 131: {
;keypad add.c: 132: if(count==10)
	movlw	0Ah
	xorwf	(main@count),w
	iorwf	(main@count+1),w
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l2337
u2340:
	line	134
	
l2333:	
;keypad add.c: 133: {
;keypad add.c: 134: address(0xc0);
	movlw	low(0C0h)
	movwf	(?_address)
	movlw	high(0C0h)
	movwf	((?_address))+1
	fcall	_address
	line	135
	
l2335:	
;keypad add.c: 135: call("calling");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_call
	goto	l2337
	line	136
	
l1086:	
	line	137
	
l2337:	
;keypad add.c: 136: }
;keypad add.c: 137: if(count!=10)
	movlw	0Ah
	xorwf	(main@count),w
	iorwf	(main@count+1),w
	skipnz
	goto	u2351
	goto	u2350
u2351:
	goto	l2287
u2350:
	line	139
	
l2339:	
;keypad add.c: 138: {
;keypad add.c: 139: address(0xC0);
	movlw	low(0C0h)
	movwf	(?_address)
	movlw	high(0C0h)
	movwf	((?_address))+1
	fcall	_address
	line	140
	
l2341:	
;keypad add.c: 140: call("not valid");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_call
	goto	l2287
	line	141
	
l1087:	
	goto	l2287
	line	142
	
l1085:	
	goto	l2287
	line	143
	
l1088:	
	line	58
	goto	l2287
	
l1089:	
	line	144
	
l1090:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_display
psect	text121,local,class=CODE,delta=2
global __ptext121
__ptext121:

;; *************** function _display *****************
;; Defined at:
;;		line 39 in file "D:\New folder\keypad add.c"
;; Parameters:    Size  Location     Type
;;  a               2    2[COMMON] int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text121
	file	"D:\New folder\keypad add.c"
	line	39
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 6
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l2263:	
;keypad add.c: 40: RB0=1;RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	line	41
	
l2265:	
;keypad add.c: 41: PORTA=a;
	movf	(display@a),w
	movwf	(5)	;volatile
	line	42
	
l2267:	
;keypad add.c: 42: pulse();
	fcall	_pulse
	line	43
	
l1045:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
	global	_address
psect	text122,local,class=CODE,delta=2
global __ptext122
__ptext122:

;; *************** function _address *****************
;; Defined at:
;;		line 33 in file "D:\New folder\keypad add.c"
;; Parameters:    Size  Location     Type
;;  c               2    2[COMMON] int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text122
	file	"D:\New folder\keypad add.c"
	line	33
	global	__size_of_address
	__size_of_address	equ	__end_of_address-_address
	
_address:	
	opt	stack 6
; Regs used in _address: [wreg+status,2+status,0+pclath+cstack]
	line	34
	
l2257:	
;keypad add.c: 34: RB0=0;RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	line	35
	
l2259:	
;keypad add.c: 35: PORTA=c;
	movf	(address@c),w
	movwf	(5)	;volatile
	line	36
	
l2261:	
;keypad add.c: 36: pulse();
	fcall	_pulse
	line	37
	
l1042:	
	return
	opt stack 0
GLOBAL	__end_of_address
	__end_of_address:
;; =============== function _address ends ============

	signat	_address,4216
	global	_call
psect	text123,local,class=CODE,delta=2
global __ptext123
__ptext123:

;; *************** function _call *****************
;; Defined at:
;;		line 23 in file "D:\New folder\keypad add.c"
;; Parameters:    Size  Location     Type
;;  name            1    wreg     PTR unsigned char 
;;		 -> STR_2(10), STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  name            1    3[COMMON] PTR unsigned char 
;;		 -> STR_2(10), STR_1(8), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text123
	file	"D:\New folder\keypad add.c"
	line	23
	global	__size_of_call
	__size_of_call	equ	__end_of_call-_call
	
_call:	
	opt	stack 6
; Regs used in _call: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;call@name stored from wreg
	movwf	(call@name)
	line	24
	
l2247:	
;keypad add.c: 24: RB0=1;RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	line	26
;keypad add.c: 26: while(*name)
	goto	l2255
	
l1037:	
	line	28
	
l2249:	
;keypad add.c: 27: {
;keypad add.c: 28: PORTA=*name++;
	movf	(call@name),w
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	
l2251:	
	movlw	(01h)
	movwf	(??_call+0)+0
	movf	(??_call+0)+0,w
	addwf	(call@name),f
	line	29
	
l2253:	
;keypad add.c: 29: pulse();
	fcall	_pulse
	goto	l2255
	line	30
	
l1036:	
	line	26
	
l2255:	
	movf	(call@name),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2141
	goto	u2140
u2141:
	goto	l2249
u2140:
	goto	l1039
	
l1038:	
	line	31
	
l1039:	
	return
	opt stack 0
GLOBAL	__end_of_call
	__end_of_call:
;; =============== function _call ends ============

	signat	_call,4216
	global	_on
psect	text124,local,class=CODE,delta=2
global __ptext124
__ptext124:

;; *************** function _on *****************
;; Defined at:
;;		line 17 in file "D:\New folder\keypad add.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text124
	file	"D:\New folder\keypad add.c"
	line	17
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 6
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l2241:	
;keypad add.c: 18: RB0=0;RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	line	19
	
l2243:	
;keypad add.c: 19: PORTA=0X0E;
	movlw	(0Eh)
	movwf	(5)	;volatile
	line	20
	
l2245:	
;keypad add.c: 20: pulse();
	fcall	_pulse
	line	21
	
l1033:	
	return
	opt stack 0
GLOBAL	__end_of_on
	__end_of_on:
;; =============== function _on ends ============

	signat	_on,88
	global	_type
psect	text125,local,class=CODE,delta=2
global __ptext125
__ptext125:

;; *************** function _type *****************
;; Defined at:
;;		line 11 in file "D:\New folder\keypad add.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text125
	file	"D:\New folder\keypad add.c"
	line	11
	global	__size_of_type
	__size_of_type	equ	__end_of_type-_type
	
_type:	
	opt	stack 6
; Regs used in _type: [wreg+status,2+status,0+pclath+cstack]
	line	12
	
l2235:	
;keypad add.c: 12: RB0=0;RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	line	13
	
l2237:	
;keypad add.c: 13: PORTA=0X38;
	movlw	(038h)
	movwf	(5)	;volatile
	line	14
	
l2239:	
;keypad add.c: 14: pulse();
	fcall	_pulse
	line	15
	
l1030:	
	return
	opt stack 0
GLOBAL	__end_of_type
	__end_of_type:
;; =============== function _type ends ============

	signat	_type,88
	global	_pulse
psect	text126,local,class=CODE,delta=2
global __ptext126
__ptext126:

;; *************** function _pulse *****************
;; Defined at:
;;		line 4 in file "D:\New folder\keypad add.c"
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_type
;;		_on
;;		_call
;;		_address
;;		_display
;; This function uses a non-reentrant model
;;
psect	text126
	file	"D:\New folder\keypad add.c"
	line	4
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 6
; Regs used in _pulse: [wreg]
	line	5
	
l2229:	
;keypad add.c: 5: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	6
	
l2231:	
;keypad add.c: 6: _delay((unsigned long)((1000)*(400000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_pulse+0)+0+1),f
	movlw	221
movwf	((??_pulse+0)+0),f
u2367:
	decfsz	((??_pulse+0)+0),f
	goto	u2367
	decfsz	((??_pulse+0)+0+1),f
	goto	u2367
	nop2
opt asmopt_on

	line	7
	
l2233:	
;keypad add.c: 7: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	8
;keypad add.c: 8: _delay((unsigned long)((1000)*(400000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_pulse+0)+0+1),f
	movlw	221
movwf	((??_pulse+0)+0),f
u2377:
	decfsz	((??_pulse+0)+0),f
	goto	u2377
	decfsz	((??_pulse+0)+0+1),f
	goto	u2377
	nop2
opt asmopt_on

	line	9
	
l1027:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
psect	text127,local,class=CODE,delta=2
global __ptext127
__ptext127:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
