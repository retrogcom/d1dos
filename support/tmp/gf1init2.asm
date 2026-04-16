.386p
	externdef _gf1_dram_io:near
	externdef _gf1_mix_control:near
	externdef _gf1_freq_divisor:near
DGROUP group CONST, _DATA
_TEXT	segment dword public use32 'CODE'
	db 000h,000h,000h,000h,000h
	public gf1_delay_
gf1_delay_:
	db 051h
	db 052h
	db 0b9h,00ah,000h,000h,000h
	db 066h,08bh,015h
	dd _gf1_dram_io
	db 0ech
	db 0e0h,0fdh
	db 05ah
	db 059h
	retn
	public gf1_init_ports_
gf1_init_ports_:
	db 053h
	db 051h
	db 056h
	db 03dh,010h,002h,000h,000h
	db 072h,037h
	db 090h
	db 090h
	db 090h
	db 090h
	db 03dh,060h,002h,000h,000h
	db 077h,02ch
	db 090h
	db 090h
	db 090h
	db 090h
	db 00fh,0b7h,01dh
	dd _gf1_mix_control
	db 02bh,0c3h
	db 074h,016h
	db 090h
	db 090h
	db 090h
	db 090h
	db 0beh
	dd _gf1_mix_control
	db 0b9h,00dh,000h,000h,000h
	db 066h,001h,006h
	db 083h,0c6h,002h
	db 0e2h,0f8h
	db 033h,0c0h
	jmp	$+10
	db 090h
	db 090h
	db 090h
	db 0b8h,001h,000h,000h,000h
	db 05eh
	db 059h
	db 05bh
	retn
_TEXT	ends
CONST	segment dword public use32 'DATA'
block1:
CONST	ends
_DATA	segment dword public use32 'DATA'
block2:
	public _gf1_init2_data1
_gf1_init2_data1:
	db 000h,000h,000h,000h
_DATA	ends
	end
