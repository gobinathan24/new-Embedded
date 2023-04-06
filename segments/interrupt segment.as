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
	FNROOT	_main
	FNCALL	intlevel1,_nnn
	global	intlevel1
	FNROOT	intlevel1
	global	main@F1607
	global	nnn@F1601
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\New folder\interrupt segment.c"
	line	32

;initializer for main@F1607
	retlw	0C0h
	retlw	0F9h
	retlw	0A4h
	retlw	0B0h
	retlw	099h
	retlw	092h
	retlw	083h
	retlw	0F8h
	retlw	080h
	retlw	098h
	line	9

;initializer for nnn@F1601
	retlw	0C0h
	retlw	0F9h
	retlw	0A4h
	retlw	0B0h
	retlw	099h
	retlw	092h
	retlw	083h
	retlw	0F8h
	retlw	080h
	retlw	098h
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_GIE
_GIE	set	95
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_PEIE
_PEIE	set	94
	global	_RB1
_RB1	set	49
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
	file	"interrupt segment.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\New folder\interrupt segment.c"
	line	32
main@F1607:
       ds      10

psect	dataBANK0
	file	"D:\New folder\interrupt segment.c"
	line	9
nnn@F1601:
       ds      10

global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+20)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_nnn
?_nnn:	; 0 bytes @ 0x0
	global	??_nnn
??_nnn:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	8
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	nnn@cc
nnn@cc:	; 10 bytes @ 0x0
	ds	10
	global	nnn@i
nnn@i:	; 2 bytes @ 0xA
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xC
	ds	4
	global	main@cc
main@cc:	; 10 bytes @ 0x10
	ds	10
	global	main@i_1792
main@i_1792:	; 2 bytes @ 0x1A
	ds	2
;;Data sizes: Strings 0, constant 0, data 20, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80     28      48
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _nnn in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _nnn in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _nnn in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _nnn in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _nnn in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                18    18      0      92
;;                                             12 BANK0     16    16      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (1) _nnn                                                 20    20      0      92
;;                                              0 COMMON     8     8      0
;;                                              0 BANK0     12    12      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;
;; _nnn (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      38      12        0.0%
;;ABS                  0      0      38       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       0       2        0.0%
;;BANK0               50     1C      30       5       60.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      8       8       1       57.1%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 19 in file "D:\New folder\interrupt segment.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   26[BANK0 ] int 
;;  cc             10   16[BANK0 ] unsigned char [10]
;;  i               2    0        int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\New folder\interrupt segment.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	21
	
l2257:	
;interrupt segment.c: 20: int i;
;interrupt segment.c: 21: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	22
;interrupt segment.c: 22: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	23
	
l2259:	
;interrupt segment.c: 23: TRISB=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	24
	
l2261:	
;interrupt segment.c: 24: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	25
	
l2263:	
;interrupt segment.c: 25: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	26
	
l2265:	
;interrupt segment.c: 26: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	27
	
l2267:	
;interrupt segment.c: 27: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	28
	
l2269:	
;interrupt segment.c: 28: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	29
	
l2271:	
;interrupt segment.c: 29: GIE=1;
	bsf	(95/8),(95)&7
	line	30
	
l2273:	
;interrupt segment.c: 30: PEIE=1;
	bsf	(94/8),(94)&7
	line	31
	
l2275:	
;interrupt segment.c: 31: INTE=1;
	bsf	(92/8),(92)&7
	line	32
	
l2277:	
;interrupt segment.c: 32: char cc[10]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x83,0xf8,0x80,0x98};
	movlw	(main@cc)&0ffh
	movwf	fsr0
	movlw	low(main@F1607)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2250:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2250
	goto	l2279
	line	33
;interrupt segment.c: 33: while(1)
	
l1037:	
	line	35
	
l2279:	
;interrupt segment.c: 34: {
;interrupt segment.c: 35: for( int i=0;i<10;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i_1792)
	clrf	(main@i_1792+1)
	
l2281:	
	movf	(main@i_1792+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2265
	movlw	low(0Ah)
	subwf	(main@i_1792),w
u2265:

	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l2285
u2260:
	goto	l2279
	
l2283:	
	goto	l2279
	line	36
	
l1038:	
	line	37
	
l2285:	
;interrupt segment.c: 36: {
;interrupt segment.c: 37: PORTA=cc[i];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i_1792),w
	addlw	main@cc&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(5)	;volatile
	line	38
	
l2287:	
;interrupt segment.c: 38: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2287:
	decfsz	((??_main+0)+0),f
	goto	u2287
	decfsz	((??_main+0)+0+1),f
	goto	u2287
	decfsz	((??_main+0)+0+2),f
	goto	u2287
opt asmopt_on

	line	35
	
l2289:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i_1792),f
	skipnc
	incf	(main@i_1792+1),f
	movlw	high(01h)
	addwf	(main@i_1792+1),f
	
l2291:	
	movf	(main@i_1792+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2275
	movlw	low(0Ah)
	subwf	(main@i_1792),w
u2275:

	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l2285
u2270:
	goto	l2279
	
l1039:	
	goto	l2279
	line	40
	
l1040:	
	line	33
	goto	l2279
	
l1041:	
	line	41
	
l1042:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_nnn
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _nnn *****************
;; Defined at:
;;		line 4 in file "D:\New folder\interrupt segment.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   10[BANK0 ] int 
;;  cc             10    0[BANK0 ] unsigned char [10]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          8       0       0       0       0
;;      Totals:         8      12       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text85
	file	"D:\New folder\interrupt segment.c"
	line	4
	global	__size_of_nnn
	__size_of_nnn	equ	__end_of_nnn-_nnn
	
_nnn:	
	opt	stack 7
; Regs used in _nnn: [wreg-fsr0h+status,2+status,0+btemp+1]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_nnn+4)
	movf	fsr0,w
	movwf	(??_nnn+5)
	movf	pclath,w
	movwf	(??_nnn+6)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_nnn+7)
	ljmp	_nnn
psect	text85
	line	6
	
i1l2235:	
;interrupt segment.c: 6: if(INTF==1)
	btfss	(89/8),(89)&7
	goto	u221_21
	goto	u221_20
u221_21:
	goto	i1l1032
u221_20:
	line	8
	
i1l2237:	
;interrupt segment.c: 7: {
;interrupt segment.c: 8: RB1=1;
	bsf	(49/8),(49)&7
	line	9
	
i1l2239:	
;interrupt segment.c: 9: char cc[10]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x83,0xf8,0x80,0x98};
	movlw	(nnn@cc)&0ffh
	movwf	fsr0
	movlw	low(nnn@F1601)
	movwf	(??_nnn+0)+0
	movf	fsr0,w
	movwf	((??_nnn+0)+0+1)
	movlw	10
	movwf	((??_nnn+0)+0+2)
u222_20:
	movf	(??_nnn+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_nnn+0)+0+3)
	incf	(??_nnn+0)+0,f
	movf	((??_nnn+0)+0+1),w
	movwf	fsr0
	
	movf	((??_nnn+0)+0+3),w
	movwf	indf
	incf	((??_nnn+0)+0+1),f
	decfsz	((??_nnn+0)+0+2),f
	goto	u222_20
	line	10
	
i1l2241:	
;interrupt segment.c: 10: for( int i=0;i<10;i++)
	clrf	(nnn@i)
	clrf	(nnn@i+1)
	
i1l2243:	
	movf	(nnn@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u223_25
	movlw	low(0Ah)
	subwf	(nnn@i),w
u223_25:

	skipc
	goto	u223_21
	goto	u223_20
u223_21:
	goto	i1l2247
u223_20:
	goto	i1l1032
	
i1l2245:	
	goto	i1l1032
	line	11
	
i1l1030:	
	line	12
	
i1l2247:	
;interrupt segment.c: 11: {
;interrupt segment.c: 12: PORTC=cc[i];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(nnn@i),w
	addlw	nnn@cc&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	13
	
i1l2249:	
;interrupt segment.c: 13: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_nnn+0)+0+2),f
movlw	14
movwf	((??_nnn+0)+0+1),f
	movlw	176
movwf	((??_nnn+0)+0),f
u229_27:
	decfsz	((??_nnn+0)+0),f
	goto	u229_27
	decfsz	((??_nnn+0)+0+1),f
	goto	u229_27
	decfsz	((??_nnn+0)+0+2),f
	goto	u229_27
opt asmopt_on

	line	14
	
i1l2251:	
;interrupt segment.c: 14: INTF=0;
	bcf	(89/8),(89)&7
	line	10
	
i1l2253:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(nnn@i),f
	skipnc
	incf	(nnn@i+1),f
	movlw	high(01h)
	addwf	(nnn@i+1),f
	
i1l2255:	
	movf	(nnn@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u224_25
	movlw	low(0Ah)
	subwf	(nnn@i),w
u224_25:

	skipc
	goto	u224_21
	goto	u224_20
u224_21:
	goto	i1l2247
u224_20:
	goto	i1l1032
	
i1l1031:	
	goto	i1l1032
	line	16
	
i1l1027:	
	line	17
	
i1l1032:	
	movf	(??_nnn+7),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_nnn+6),w
	movwf	pclath
	movf	(??_nnn+5),w
	movwf	fsr0
	swapf	(??_nnn+4)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_nnn
	__end_of_nnn:
;; =============== function _nnn ends ============

	signat	_nnn,88
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
