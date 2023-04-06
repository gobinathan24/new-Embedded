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
	global	_PORTA
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	file	"14 segment ca new n.as"
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3       3
;; BANK0           80      0       0
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      3       3       1       21.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
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
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 4 in file "D:\New folder\14segment new ca n.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\New folder\14segment new ca n.c"
	line	4
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	5
	
l2165:	
;14segment new ca n.c: 5: TRISA=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	6
;14segment new ca n.c: 6: TRISB=0x00;
	clrf	(134)^080h	;volatile
	line	7
;14segment new ca n.c: 7: PORTA=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	8
;14segment new ca n.c: 8: PORTB=0x00;
	clrf	(6)	;volatile
	goto	l2167
	line	9
;14segment new ca n.c: 9: while(1)
	
l1027:	
	line	11
	
l2167:	
;14segment new ca n.c: 10: {
;14segment new ca n.c: 11: PORTA=0xc8;
	movlw	(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	12
	
l2169:	
;14segment new ca n.c: 12: PORTB=0x77;
	movlw	(077h)
	movwf	(6)	;volatile
	line	13
	
l2171:	
;14segment new ca n.c: 13: _delay((unsigned long)((3000)*(400000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	133
movwf	((??_main+0)+0+1),f
	movlw	152
movwf	((??_main+0)+0),f
u2147:
	decfsz	((??_main+0)+0),f
	goto	u2147
	decfsz	((??_main+0)+0+1),f
	goto	u2147
	decfsz	((??_main+0)+0+2),f
	goto	u2147
	nop2
opt asmopt_on

	line	14
	
l2173:	
;14segment new ca n.c: 14: PORTA=0xc0;
	movlw	(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	15
	
l2175:	
;14segment new ca n.c: 15: PORTB=0x77;
	movlw	(077h)
	movwf	(6)	;volatile
	line	16
	
l2177:	
;14segment new ca n.c: 16: _delay((unsigned long)((3000)*(400000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	133
movwf	((??_main+0)+0+1),f
	movlw	152
movwf	((??_main+0)+0),f
u2157:
	decfsz	((??_main+0)+0),f
	goto	u2157
	decfsz	((??_main+0)+0+1),f
	goto	u2157
	decfsz	((??_main+0)+0+2),f
	goto	u2157
	nop2
opt asmopt_on

	line	17
	
l2179:	
;14segment new ca n.c: 17: PORTA=0xc6;
	movlw	(0C6h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	18
	
l2181:	
;14segment new ca n.c: 18: PORTB=0xff;
	movlw	(0FFh)
	movwf	(6)	;volatile
	line	19
	
l2183:	
;14segment new ca n.c: 19: _delay((unsigned long)((3000)*(400000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	133
movwf	((??_main+0)+0+1),f
	movlw	152
movwf	((??_main+0)+0),f
u2167:
	decfsz	((??_main+0)+0),f
	goto	u2167
	decfsz	((??_main+0)+0+1),f
	goto	u2167
	decfsz	((??_main+0)+0+2),f
	goto	u2167
	nop2
opt asmopt_on

	line	20
	
l2185:	
;14segment new ca n.c: 20: PORTA=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	21
;14segment new ca n.c: 21: PORTB=0xff;
	movlw	(0FFh)
	movwf	(6)	;volatile
	line	22
;14segment new ca n.c: 22: _delay((unsigned long)((3000)*(400000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	133
movwf	((??_main+0)+0+1),f
	movlw	152
movwf	((??_main+0)+0),f
u2177:
	decfsz	((??_main+0)+0),f
	goto	u2177
	decfsz	((??_main+0)+0+1),f
	goto	u2177
	decfsz	((??_main+0)+0+2),f
	goto	u2177
	nop2
opt asmopt_on

	line	23
;14segment new ca n.c: 23: PORTA=0xc6;
	movlw	(0C6h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	24
;14segment new ca n.c: 24: PORTB=0x77;
	movlw	(077h)
	movwf	(6)	;volatile
	line	25
;14segment new ca n.c: 25: _delay((unsigned long)((3000)*(400000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	133
movwf	((??_main+0)+0+1),f
	movlw	152
movwf	((??_main+0)+0),f
u2187:
	decfsz	((??_main+0)+0),f
	goto	u2187
	decfsz	((??_main+0)+0+1),f
	goto	u2187
	decfsz	((??_main+0)+0+2),f
	goto	u2187
	nop2
opt asmopt_on

	line	26
;14segment new ca n.c: 26: PORTA=0xce;
	movlw	(0CEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	27
;14segment new ca n.c: 27: PORTB=0x77;
	movlw	(077h)
	movwf	(6)	;volatile
	line	28
;14segment new ca n.c: 28: _delay((unsigned long)((3000)*(400000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	133
movwf	((??_main+0)+0+1),f
	movlw	152
movwf	((??_main+0)+0),f
u2197:
	decfsz	((??_main+0)+0),f
	goto	u2197
	decfsz	((??_main+0)+0+1),f
	goto	u2197
	decfsz	((??_main+0)+0+2),f
	goto	u2197
	nop2
opt asmopt_on

	line	29
;14segment new ca n.c: 29: PORTA=0xc2;
	movlw	(0C2h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	30
;14segment new ca n.c: 30: PORTB=0xf7;
	movlw	(0F7h)
	movwf	(6)	;volatile
	line	31
;14segment new ca n.c: 31: _delay((unsigned long)((3000)*(400000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	133
movwf	((??_main+0)+0+1),f
	movlw	152
movwf	((??_main+0)+0),f
u2207:
	decfsz	((??_main+0)+0),f
	goto	u2207
	decfsz	((??_main+0)+0+1),f
	goto	u2207
	decfsz	((??_main+0)+0+2),f
	goto	u2207
	nop2
opt asmopt_on

	line	32
;14segment new ca n.c: 32: PORTA=0xc9;
	movlw	(0C9h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	33
;14segment new ca n.c: 33: PORTB=0x77;
	movlw	(077h)
	movwf	(6)	;volatile
	line	34
;14segment new ca n.c: 34: _delay((unsigned long)((3000)*(400000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	133
movwf	((??_main+0)+0+1),f
	movlw	152
movwf	((??_main+0)+0),f
u2217:
	decfsz	((??_main+0)+0),f
	goto	u2217
	decfsz	((??_main+0)+0+1),f
	goto	u2217
	decfsz	((??_main+0)+0+2),f
	goto	u2217
	nop2
opt asmopt_on

	line	35
;14segment new ca n.c: 35: PORTA=0xf6;
	movlw	(0F6h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	36
;14segment new ca n.c: 36: PORTB=0xDD;
	movlw	(0DDh)
	movwf	(6)	;volatile
	line	37
;14segment new ca n.c: 37: _delay((unsigned long)((3000)*(400000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	133
movwf	((??_main+0)+0+1),f
	movlw	152
movwf	((??_main+0)+0),f
u2227:
	decfsz	((??_main+0)+0),f
	goto	u2227
	decfsz	((??_main+0)+0+1),f
	goto	u2227
	decfsz	((??_main+0)+0+2),f
	goto	u2227
	nop2
opt asmopt_on

	line	38
;14segment new ca n.c: 38: PORTA=0xf1;
	movlw	(0F1h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	39
;14segment new ca n.c: 39: PORTB=0xff;
	movlw	(0FFh)
	movwf	(6)	;volatile
	line	40
;14segment new ca n.c: 40: _delay((unsigned long)((3000)*(400000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	133
movwf	((??_main+0)+0+1),f
	movlw	152
movwf	((??_main+0)+0),f
u2237:
	decfsz	((??_main+0)+0),f
	goto	u2237
	decfsz	((??_main+0)+0+1),f
	goto	u2237
	decfsz	((??_main+0)+0+2),f
	goto	u2237
	nop2
opt asmopt_on

	goto	l2167
	line	41
	
l1028:	
	line	9
	goto	l2167
	
l1029:	
	line	42
	
l1030:	
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
