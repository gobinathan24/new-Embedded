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
	global	main@F1600
	global	main@F1602
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	file	"D:\New folder\14segment new cc.c"
	line	5

;initializer for main@F1600
	retlw	037h
	retlw	0Fh
	retlw	039h
	retlw	0Fh
	retlw	039h
	retlw	031h
	retlw	03Dh
	retlw	036h
	retlw	09h
	retlw	01Fh
	retlw	030h
	retlw	038h
	retlw	036h
	retlw	036h
	retlw	03Fh
	retlw	033h
	retlw	023h
	retlw	033h
	retlw	02Dh
	retlw	01h
	retlw	03Eh
	retlw	030h
	retlw	036h
	retlw	0
	retlw	09h
	retlw	09h
	line	6

;initializer for main@F1602
	retlw	088h
	retlw	02Ah
	retlw	0
	retlw	022h
	retlw	088h
	retlw	088h
	retlw	08h
	retlw	088h
	retlw	022h
	retlw	0
	retlw	014h
	retlw	0
	retlw	05h
	retlw	011h
	retlw	0
	retlw	088h
	retlw	099h
	retlw	098h
	retlw	088h
	retlw	022h
	retlw	0
	retlw	044h
	retlw	050h
	retlw	055h
	retlw	01h
	retlw	044h
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"14segment new cc.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"D:\New folder\14segment new cc.c"
	line	5
main@F1600:
       ds      26

psect	dataBANK1
	file	"D:\New folder\14segment new cc.c"
	line	6
main@F1602:
       ds      26

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
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+52)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@cc
main@cc:	; 26 bytes @ 0x0
	ds	26
	global	main@cc1
main@cc1:	; 26 bytes @ 0x1A
	ds	26
	global	main@i
main@i:	; 2 bytes @ 0x34
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x36
	ds	2
;;Data sizes: Strings 0, constant 0, data 52, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80     56      56
;; BANK1           80      0      52
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
;; (0) _main                                                60    60      0     118
;;                                              0 COMMON     4     4      0
;;                                              0 BANK0     56    56      0
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
;;BANK1               50      0      34       7       65.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      70      12        0.0%
;;ABS                  0      0      70       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       0       2        0.0%
;;BANK0               50     38      38       5       70.0%
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
;;		line 4 in file "D:\New folder\14segment new cc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2   54[BANK0 ] int 
;;  i               2   52[BANK0 ] int 
;;  cc1            26   26[BANK0 ] unsigned char [26]
;;  cc             26    0[BANK0 ] unsigned char [26]
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
;;      Locals:         0      56       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      56       0       0       0
;;Total ram usage:       60 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\New folder\14segment new cc.c"
	line	4
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	5
	
l2200:	
;14segment new cc.c: 5: char cc[]={0x37,0x0f,0x39,0x0f,0x39,0x31,0x3d,0x36,0x09,0x1f,0x30,0x38,0x36,0x36,0x3f,0x33,0x23,0x33,0x2d,0x01,0x3e,0x30,0x36,0x00,0x09,0x09};
	movlw	(main@cc)&0ffh
	movwf	fsr0
	movlw	low(main@F1600)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	26
	movwf	((??_main+0)+0+2)
u2170:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2170
	line	6
;14segment new cc.c: 6: char cc1[]={0x88,0x2a,0x00,0x22,0x88,0x88,0x08,0x88,0x22,0x00,0x14,0x00,0x05,0x11,0x00,0x88,0x99,0x98,0x88,0x22,0x00,0x44,0x50,0x55,0x01,0x44};
	movlw	(main@cc1)&0ffh
	movwf	fsr0
	movlw	low(main@F1602)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	26
	movwf	((??_main+0)+0+2)
u2180:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2180
	line	7
	
l2202:	
;14segment new cc.c: 7: TRISA=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	8
	
l2204:	
;14segment new cc.c: 8: PORTA=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	9
	
l2206:	
;14segment new cc.c: 9: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	10
	
l2208:	
;14segment new cc.c: 10: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	11
	
l2210:	
;14segment new cc.c: 11: ANSEL=0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	12
	
l2212:	
;14segment new cc.c: 12: ANSELH=0x00;
	clrf	(393)^0180h	;volatile
	goto	l2214
	line	13
;14segment new cc.c: 13: while(1)
	
l1031:	
	line	15
	
l2214:	
;14segment new cc.c: 14: {
;14segment new cc.c: 15: for(int i=0,j=0;i<26,j<26;i++,j++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l2216:	
	clrf	(main@j)
	clrf	(main@j+1)
	goto	l2226
	line	16
	
l1033:	
	line	17
	
l2218:	
;14segment new cc.c: 16: {
;14segment new cc.c: 17: PORTA=cc[i];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@cc&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(5)	;volatile
	line	18
;14segment new cc.c: 18: PORTB=cc1[j];
	movf	(main@j),w
	addlw	main@cc1&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(6)	;volatile
	line	19
	
l2220:	
;14segment new cc.c: 19: _delay((unsigned long)((10000)*(400000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2207:
	decfsz	((??_main+0)+0),f
	goto	u2207
	decfsz	((??_main+0)+0+1),f
	goto	u2207
	decfsz	((??_main+0)+0+2),f
	goto	u2207
opt asmopt_on

	line	15
	
l2222:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2224:	
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	goto	l2226
	
l1032:	
	
l2226:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2195
	movlw	low(01Ah)
	subwf	(main@j),w
u2195:

	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l2218
u2190:
	goto	l2214
	
l1034:	
	goto	l2214
	line	21
	
l1035:	
	line	13
	goto	l2214
	
l1036:	
	line	22
	
l1037:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
