.386p
_TEXT	segment para public use32 'CODE'
	public gf1_convert_to_16bit_
gf1_convert_to_16bit_:
	db 055h
	db 089h,0e5h
	db 052h
	db 089h,0c2h
	db 025h,0ffh,0ffh,003h,000h
	db 081h,0e2h,000h,000h,0fch,0ffh
	db 0d1h,0f8h
	db 009h,0d0h
	db 08dh,065h,0fch
	db 05ah
	db 05dh
	retn
	db 090h
	public gf1_make_physical_address_
gf1_make_physical_address_:
	db 055h
	db 089h,0e5h
	db 051h
	db 056h
	db 089h,0c1h
	db 031h,0c0h
	db 066h,089h,0d0h
	db 0c1h,0f8h,009h
	db 080h,0e6h,001h
	db 089h,0c6h
	db 031h,0c0h
	db 066h,089h,0d0h
	db 031h,0d2h
	db 066h,089h,0cah
	db 0c1h,0fah,009h
	db 0c1h,0e0h,007h
	db 083h,0e2h,07fh
	db 009h,0d0h
	db 089h,0c1h
	db 031h,0c0h
	db 066h,089h,0f0h
	db 089h,0c2h
	db 031h,0c0h
	db 0c1h,0e2h,010h
	db 066h,089h,0c8h
	db 001h,0d0h
	db 0f6h,0c3h,001h
	db 074h,011h
	db 089h,0c2h
	db 001h,0c0h
	db 081h,0e2h,000h,000h,00ch,000h
	db 025h,0ffh,0ffh,003h,000h
	db 009h,0d0h
	db 08dh,065h,0f8h
	db 05eh
	db 059h
	db 05dh
	retn
_TEXT	ends
	end
