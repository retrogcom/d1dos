.386p
	externdef outp_:near
	externdef inp_:near
_TEXT	segment para public use32 'CODE'
	public gf1_detect_card_
gf1_detect_card_:
	db 055h
	db 089h,0e5h
	db 053h
	db 051h
	db 052h
	db 089h,0c3h
	db 089h,0c1h
	db 083h,0c3h,008h
	db 083h,0c1h,00ah
	db 081h,0e3h,0ffh,0ffh,000h,000h
	db 0bah,0aah,000h,000h,000h
	db 089h,0d8h
	call	outp_
	db 081h,0e1h,0ffh,0ffh,000h,000h
	db 089h,0c8h
	call	inp_
	db 03dh,0aah,000h,000h,000h
	db 075h,01fh
	db 0bah,055h,000h,000h,000h
	db 089h,0d8h
	call	outp_
	db 089h,0c8h
	call	inp_
	db 083h,0f8h,055h
	db 075h,007h
	db 0b8h,001h,000h,000h,000h
	jmp	$+4
	db 031h,0c0h
	db 08dh,065h,0f4h
	db 05ah
	db 059h
	db 05bh
	db 05dh
	retn
_TEXT	ends
	end
