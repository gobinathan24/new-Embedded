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
	global	main@F1604
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\New folder\4segment ca.c"
	line	6

;initializer for main@F1604
	retlw	0C0h
	retlw	0F9h
	retlw	0A4h
	retlw	0B0h
	retlw	099h
	retlw	092h
	retlw	082h
	retlw	0F8h
	retlw	080h
	retlw	090h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"4segment ca.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\New folder\4segment ca.c"
main@F1604:
       ds      20

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
	global	??_main
??_main:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@cc
main@cc:	; 20 bytes @ 0x0
	ds	20
	global	main@i
main@i:	; 2 bytes @ 0x14
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x16
	ds	2
	global	main@k
main@k:	; 2 bytes @ 0x18
	ds	2
	global	main@l
main@l:	; 2 bytes @ 0x1A
	ds	2
;;Data sizes: Strings 0, constant 0, data 20, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                32    32      0     365
;;                                              0 COMMON     4     4      0
;;                                              0 BANK0     28    28      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
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
;;DATA                 0      0      34      12        0.0%
;;ABS                  0      0      34       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       0       2        0.0%
;;BANK0               50     1C      30       5       60.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      4       4       1       28.6%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 4 in file "D:\New folder\4segment ca.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cc             20    0[BANK0 ] unsigned char [20]
;;  l               2   26[BANK0 ] int 
;;  k               2   24[BANK0 ] int 
;;  j               2   22[BANK0 ] int 
;;  i               2   20[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2  1026[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      28       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      28       0       0       0
;;Total ram usage:       32 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\New folder\4segment ca.c"
	line	4
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0]
	line	6
	
l2265:	
;4segment ca.c: 5: int i,j,k,l;
;4segment ca.c: 6: char cc[20]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
	movlw	(main@cc)&0ffh
	movwf	fsr0
	movlw	low(main@F1604)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u2230:
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
	goto	u2230
	line	7
	
l2267:	
;4segment ca.c: 7: TRISA=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	8
	
l2269:	
;4segment ca.c: 8: PORTA=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	9
	
l2271:	
;4segment ca.c: 9: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	10
	
l2273:	
;4segment ca.c: 10: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	11
	
l2275:	
;4segment ca.c: 11: ANSEL=0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	12
	
l2277:	
;4segment ca.c: 12: ANSELH=0x00;
	clrf	(393)^0180h	;volatile
	goto	l2279
	line	13
;4segment ca.c: 13: while(1)
	
l1029:	
	line	15
	
l2279:	
;4segment ca.c: 14: {
;4segment ca.c: 15: for(i=9;i>=0;i--)
	movlw	low(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(09h)
	movwf	((main@i))+1
	
l2281:	
	btfss	(main@i+1),7
	goto	u2241
	goto	u2240
u2241:
	goto	l2285
u2240:
	goto	l2279
	
l2283:	
	goto	l2279
	line	16
	
l1030:	
	line	17
	
l2285:	
;4segment ca.c: 16: {
;4segment ca.c: 17: for(j=9;j>=0;j--)
	movlw	low(09h)
	movwf	(main@j)
	movlw	high(09h)
	movwf	((main@j))+1
	
l2287:	
	btfss	(main@j+1),7
	goto	u2251
	goto	u2250
u2251:
	goto	l2291
u2250:
	goto	l2351
	
l2289:	
	goto	l2351
	line	18
	
l1032:	
	line	19
	
l2291:	
;4segment ca.c: 18: {
;4segment ca.c: 19: for(k=9;k>=0;k--)
	movlw	low(09h)
	movwf	(main@k)
	movlw	high(09h)
	movwf	((main@k))+1
	
l2293:	
	btfss	(main@k+1),7
	goto	u2261
	goto	u2260
u2261:
	goto	l2297
u2260:
	goto	l2347
	
l2295:	
	goto	l2347
	line	20
	
l1034:	
	line	21
	
l2297:	
;4segment ca.c: 20: {
;4segment ca.c: 21: for(l=9;l>=0;l--)
	movlw	low(09h)
	movwf	(main@l)
	movlw	high(09h)
	movwf	((main@l))+1
	
l2299:	
	btfss	(main@l+1),7
	goto	u2271
	goto	u2270
u2271:
	goto	l1036
u2270:
	goto	l2343
	
l2301:	
	goto	l2343
	line	22
	
l1036:	
	line	23
;4segment ca.c: 22: {
;4segment ca.c: 23: RB1=0;RB2=0;RB3=0;RB0=1;
	bcf	(49/8),(49)&7
	bcf	(50/8),(50)&7
	bcf	(51/8),(51)&7
	bsf	(48/8),(48)&7
	line	24
	
l2303:	
;4segment ca.c: 24: PORTA=cc[i];
	movf	(main@i),w
	addlw	main@cc&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(5)	;volatile
	line	25
	
l2305:	
;4segment ca.c: 25: _delay((unsigned long)((100)*(400000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u2327:
	decfsz	((??_main+0)+0),f
	goto	u2327
	decfsz	((??_main+0)+0+1),f
	goto	u2327
	nop2
opt asmopt_on

	line	26
	
l2307:	
;4segment ca.c: 26: RB0=0;RB2=0;RB3=0;RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	
l2309:	
	bcf	(50/8),(50)&7
	
l2311:	
	bcf	(51/8),(51)&7
	
l2313:	
	bsf	(49/8),(49)&7
	line	27
	
l2315:	
;4segment ca.c: 27: PORTA=cc[j];
	movf	(main@j),w
	addlw	main@cc&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(5)	;volatile
	line	28
;4segment ca.c: 28: _delay((unsigned long)((100)*(400000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u2337:
	decfsz	((??_main+0)+0),f
	goto	u2337
	decfsz	((??_main+0)+0+1),f
	goto	u2337
	nop2
opt asmopt_on

	line	29
	
l2317:	
;4segment ca.c: 29: RB1=0;RB0=0;RB3=0;RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	
l2319:	
	bcf	(48/8),(48)&7
	
l2321:	
	bcf	(51/8),(51)&7
	
l2323:	
	bsf	(50/8),(50)&7
	line	30
	
l2325:	
;4segment ca.c: 30: PORTA=cc[k];
	movf	(main@k),w
	addlw	main@cc&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(5)	;volatile
	line	31
	
l2327:	
;4segment ca.c: 31: _delay((unsigned long)((100)*(400000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u2347:
	decfsz	((??_main+0)+0),f
	goto	u2347
	decfsz	((??_main+0)+0+1),f
	goto	u2347
	nop2
opt asmopt_on

	line	32
	
l2329:	
;4segment ca.c: 32: RB2=0;RB0=0;RB1=0;RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	
l2331:	
	bcf	(48/8),(48)&7
	
l2333:	
	bcf	(49/8),(49)&7
	
l2335:	
	bsf	(51/8),(51)&7
	line	33
;4segment ca.c: 33: PORTA=cc[l];
	movf	(main@l),w
	addlw	main@cc&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(5)	;volatile
	line	34
	
l2337:	
;4segment ca.c: 34: _delay((unsigned long)((100)*(400000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u2357:
	decfsz	((??_main+0)+0),f
	goto	u2357
	decfsz	((??_main+0)+0+1),f
	goto	u2357
	nop2
opt asmopt_on

	line	21
	
l2339:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@l),f
	skipnc
	incf	(main@l+1),f
	movlw	high(-1)
	addwf	(main@l+1),f
	
l2341:	
	btfss	(main@l+1),7
	goto	u2281
	goto	u2280
u2281:
	goto	l1036
u2280:
	goto	l2343
	
l1037:	
	line	19
	
l2343:	
	movlw	low(-1)
	addwf	(main@k),f
	skipnc
	incf	(main@k+1),f
	movlw	high(-1)
	addwf	(main@k+1),f
	
l2345:	
	btfss	(main@k+1),7
	goto	u2291
	goto	u2290
u2291:
	goto	l2297
u2290:
	goto	l2347
	
l1035:	
	line	17
	
l2347:	
	movlw	low(-1)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(-1)
	addwf	(main@j+1),f
	
l2349:	
	btfss	(main@j+1),7
	goto	u2301
	goto	u2300
u2301:
	goto	l2291
u2300:
	goto	l2351
	
l1033:	
	line	15
	
l2351:	
	movlw	low(-1)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(-1)
	addwf	(main@i+1),f
	
l2353:	
	btfss	(main@i+1),7
	goto	u2311
	goto	u2310
u2311:
	goto	l2285
u2310:
	goto	l2279
	
l1031:	
	goto	l2279
	line	39
	
l1038:	
	line	13
	goto	l2279
	
l1039:	
	line	40
	
l1040:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
