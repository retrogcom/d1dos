.386p
	externdef gf1_InitStart:near
	externdef gf1_InitEnd:near
DGROUP group CONST, _DATA, _GF1INITS, _GF1INIT, _GF1INITE
_TEXT	segment dword public use32 'CODE'
	public gf1_asm_init_
gf1_asm_init_:
	db 053h
	db 051h
	db 052h
	db 056h
	db 057h
	db 0beh
	dd gf1_InitStart
	db 0bfh
	dd gf1_InitEnd
	db 08bh,0deh
	db 03bh,0dfh
	db 074h,00ch
	db 090h
	db 090h
	db 090h
	db 090h
	db 080h,023h,001h
	db 083h,0c3h,006h
	jmp	$-14
	db 0b8h,000h,001h,000h,000h
	db 08bh,0d7h
	db 08bh,0deh
	db 03bh,0dfh
	db 074h,01ah
	db 090h
	db 090h
	db 090h
	db 090h
	db 0f6h,003h,002h
	db 075h,00ch
	db 00fh,0b6h,04bh,001h
	db 03bh,0c8h
	db 073h,004h
	db 08bh,0c1h
	db 08bh,0d3h
	db 083h,0c3h,006h
	jmp	$-28
	db 03bh,0d7h
	db 074h,017h
	db 090h
	db 090h
	db 090h
	db 090h
	db 08bh,0dah
	db 080h,00bh,002h
	db 0ffh,053h,002h
	db 083h,0f8h,000h
	db 075h,008h
	db 090h
	db 090h
	db 090h
	db 090h
	jmp	$-64
	db 033h,0c0h
	db 05fh
	db 05eh
	db 05ah
	db 059h
	db 05bh
	retn
_TEXT	ends
CONST	segment dword public use32 'DATA'
block1:
CONST	ends
_DATA	segment dword public use32 'DATA'
block2:
_DATA	ends
_GF1INITS	segment word public use32 'DATA'
block3:
public gf1_InitStart
gf1_InitStart:
_GF1INITS	ends
_GF1INIT	segment word public use32 'DATA'
block4:
_GF1INIT	ends
_GF1INITE	segment word public use32 'DATA'
block5:
public gf1_InitEnd
gf1_InitEnd:
_GF1INITE	ends
	end
