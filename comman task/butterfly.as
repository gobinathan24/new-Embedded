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
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"butterfly.as"
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
	global	main@i
main@i:	; 2 bytes @ 0x3
	ds	2
	global	main@J
main@J:	; 2 bytes @ 0x5
	ds	2
	global	main@l
main@l:	; 2 bytes @ 0x7
	ds	2
	global	main@k
main@k:	; 2 bytes @ 0x9
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      11
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
;; (0) _main                                                11    11      0     270
;;                                              0 COMMON    11    11      0
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
;;COMMON               E      B       B       1       78.6%
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
;;		line 4 in file "D:\New folder\butterfly.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  k               2    9[COMMON] int 
;;  l               2    7[COMMON] int 
;;  J               2    5[COMMON] int 
;;  i               2    3[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         8       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:        11       0       0       0       0
;;Total ram usage:       11 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\New folder\butterfly.c"
	line	4
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0+btemp+1]
	line	5
	
l2170:	
;butterfly.c: 5: TRISA=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	6
;butterfly.c: 6: PORTA=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	7
;butterfly.c: 7: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	8
;butterfly.c: 8: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	9
;butterfly.c: 9: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	10
;butterfly.c: 10: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	11
;butterfly.c: 11: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	12
;butterfly.c: 12: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	13
;butterfly.c: 13: ANSEL=0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	14
;butterfly.c: 14: ANSELH=0x00;
	clrf	(393)^0180h	;volatile
	line	15
;butterfly.c: 15: for(int i=0;i<=7;i=i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l2172:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2145
	movlw	low(08h)
	subwf	(main@i),w
u2145:

	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l2176
u2140:
	goto	l2184
	
l2174:	
	goto	l2184
	line	16
	
l1027:	
	line	17
	
l2176:	
;butterfly.c: 16: {
;butterfly.c: 17: PORTA|=1<<i,PORTC|=1<<i;
	movlw	(01h)
	movwf	(??_main+0)+0
	incf	(main@i),w
	goto	u2154
u2155:
	clrc
	rlf	(??_main+0)+0,f
u2154:
	addlw	-1
	skipz
	goto	u2155
	movf	0+(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(5),f	;volatile
	movlw	(01h)
	movwf	(??_main+0)+0
	incf	(main@i),w
	goto	u2164
u2165:
	clrc
	rlf	(??_main+0)+0,f
u2164:
	addlw	-1
	skipz
	goto	u2165
	movf	0+(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	iorwf	(7),f	;volatile
	line	18
	
l2178:	
;butterfly.c: 18: _delay((unsigned long)((3000)*(400000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	133
movwf	((??_main+0)+0+1),f
	movlw	152
movwf	((??_main+0)+0),f
u2307:
	decfsz	((??_main+0)+0),f
	goto	u2307
	decfsz	((??_main+0)+0+1),f
	goto	u2307
	decfsz	((??_main+0)+0+2),f
	goto	u2307
	nop2
opt asmopt_on

	line	15
	
l2180:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2182:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2175
	movlw	low(08h)
	subwf	(main@i),w
u2175:

	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l2176
u2170:
	goto	l2184
	
l1028:	
	line	21
	
l2184:	
;butterfly.c: 19: }
;butterfly.c: 21: for(int J=0;J<=7;J=J++)
	clrf	(main@J)
	clrf	(main@J+1)
	
l2186:	
	movf	(main@J+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2185
	movlw	low(08h)
	subwf	(main@J),w
u2185:

	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l2190
u2180:
	goto	l2198
	
l2188:	
	goto	l2198
	line	22
	
l1029:	
	line	23
	
l2190:	
;butterfly.c: 22: {
;butterfly.c: 23: PORTB|=1<<J,PORTD|=1<<J;
	movlw	(01h)
	movwf	(??_main+0)+0
	incf	(main@J),w
	goto	u2194
u2195:
	clrc
	rlf	(??_main+0)+0,f
u2194:
	addlw	-1
	skipz
	goto	u2195
	movf	0+(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(6),f	;volatile
	movlw	(01h)
	movwf	(??_main+0)+0
	incf	(main@J),w
	goto	u2204
u2205:
	clrc
	rlf	(??_main+0)+0,f
u2204:
	addlw	-1
	skipz
	goto	u2205
	movf	0+(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	iorwf	(8),f	;volatile
	line	24
	
l2192:	
;butterfly.c: 24: _delay((unsigned long)((3000)*(400000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	133
movwf	((??_main+0)+0+1),f
	movlw	152
movwf	((??_main+0)+0),f
u2317:
	decfsz	((??_main+0)+0),f
	goto	u2317
	decfsz	((??_main+0)+0+1),f
	goto	u2317
	decfsz	((??_main+0)+0+2),f
	goto	u2317
	nop2
opt asmopt_on

	line	21
	
l2194:	
	movlw	low(01h)
	addwf	(main@J),f
	skipnc
	incf	(main@J+1),f
	movlw	high(01h)
	addwf	(main@J+1),f
	
l2196:	
	movf	(main@J+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2215
	movlw	low(08h)
	subwf	(main@J),w
u2215:

	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l2190
u2210:
	goto	l2198
	
l1030:	
	line	26
	
l2198:	
;butterfly.c: 25: }
;butterfly.c: 26: for(int l=7;l>=0;l=l-1)
	movlw	low(07h)
	movwf	(main@l)
	movlw	high(07h)
	movwf	((main@l))+1
	
l2200:	
	btfss	(main@l+1),7
	goto	u2221
	goto	u2220
u2221:
	goto	l2204
u2220:
	goto	l2212
	
l2202:	
	goto	l2212
	line	27
	
l1031:	
	line	28
	
l2204:	
;butterfly.c: 27: {
;butterfly.c: 28: PORTB&=~(1<<l),PORTD&=~(1<<l);
	movlw	(01h)
	movwf	(??_main+0)+0
	incf	(main@l),w
	goto	u2234
u2235:
	clrc
	rlf	(??_main+0)+0,f
u2234:
	addlw	-1
	skipz
	goto	u2235
	movf	0+(??_main+0)+0,w
	xorlw	0ffh
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	movlw	(01h)
	movwf	(??_main+0)+0
	incf	(main@l),w
	goto	u2244
u2245:
	clrc
	rlf	(??_main+0)+0,f
u2244:
	addlw	-1
	skipz
	goto	u2245
	movf	0+(??_main+0)+0,w
	xorlw	0ffh
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	andwf	(8),f	;volatile
	line	29
	
l2206:	
;butterfly.c: 29: _delay((unsigned long)((3000)*(400000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	133
movwf	((??_main+0)+0+1),f
	movlw	152
movwf	((??_main+0)+0),f
u2327:
	decfsz	((??_main+0)+0),f
	goto	u2327
	decfsz	((??_main+0)+0+1),f
	goto	u2327
	decfsz	((??_main+0)+0+2),f
	goto	u2327
	nop2
opt asmopt_on

	line	26
	
l2208:	
	movf	(main@l),w
	addlw	low(-1)
	movwf	(main@l)
	movf	(main@l+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(main@l)
	
l2210:	
	btfss	(main@l+1),7
	goto	u2251
	goto	u2250
u2251:
	goto	l2204
u2250:
	goto	l2212
	
l1032:	
	line	31
	
l2212:	
;butterfly.c: 30: }
;butterfly.c: 31: for(int k=7;k>=0;k=k-1)
	movlw	low(07h)
	movwf	(main@k)
	movlw	high(07h)
	movwf	((main@k))+1
	
l2214:	
	btfss	(main@k+1),7
	goto	u2261
	goto	u2260
u2261:
	goto	l2218
u2260:
	goto	l1035
	
l2216:	
	goto	l1035
	line	32
	
l1033:	
	line	33
	
l2218:	
;butterfly.c: 32: {
;butterfly.c: 33: PORTA&=~(1<<k),PORTC&=~(1<<k);
	movlw	(01h)
	movwf	(??_main+0)+0
	incf	(main@k),w
	goto	u2274
u2275:
	clrc
	rlf	(??_main+0)+0,f
u2274:
	addlw	-1
	skipz
	goto	u2275
	movf	0+(??_main+0)+0,w
	xorlw	0ffh
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(5),f	;volatile
	movlw	(01h)
	movwf	(??_main+0)+0
	incf	(main@k),w
	goto	u2284
u2285:
	clrc
	rlf	(??_main+0)+0,f
u2284:
	addlw	-1
	skipz
	goto	u2285
	movf	0+(??_main+0)+0,w
	xorlw	0ffh
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	andwf	(7),f	;volatile
	line	34
	
l2220:	
;butterfly.c: 34: _delay((unsigned long)((3000)*(400000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	133
movwf	((??_main+0)+0+1),f
	movlw	152
movwf	((??_main+0)+0),f
u2337:
	decfsz	((??_main+0)+0),f
	goto	u2337
	decfsz	((??_main+0)+0+1),f
	goto	u2337
	decfsz	((??_main+0)+0+2),f
	goto	u2337
	nop2
opt asmopt_on

	line	31
	
l2222:	
	movf	(main@k),w
	addlw	low(-1)
	movwf	(main@k)
	movf	(main@k+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(main@k)
	
l2224:	
	btfss	(main@k+1),7
	goto	u2291
	goto	u2290
u2291:
	goto	l2218
u2290:
	goto	l1035
	
l1034:	
	line	37
	
l1035:	
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
