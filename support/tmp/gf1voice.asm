.386p
	externdef _gf1_voice_init_data:near
	externdef _gf1_voices:near
	externdef gf1_enter1_:near
	externdef gf1_leave_:near
	externdef __math1err_:near
DGROUP group CONST, _DATA, _BSS
_TEXT	segment para public use32 'CODE'
	public gf1_voice_init_
gf1_voice_init_:
	db 055h
	db 089h,0e5h
	db 053h
	db 051h
	db 052h
	db 0b4h,001h
	db 031h,0d2h
	db 031h,0dbh
	db 088h,025h
	dd _gf1_voice_init_data
	db 089h,015h
	dd _gf1_voice_mask
	jmp	$+33
	db 031h,0d2h
	db 066h,089h,0dah
	db 08dh,004h,095h,000h,000h,000h,000h
	db 029h,0d0h
	db 031h,0c9h
	db 089h,00ch,085h
	dd _gf1_voice_array
	db 043h
	db 089h,00ch,085h
	dd _gf1_voice_array + 04h
	db 066h,03bh,01dh
	dd _gf1_voices
	db 072h,0d8h
	db 031h,0c0h
	db 08dh,065h,0f4h
	db 05ah
	db 059h
	db 05bh
	db 05dh
	retn
	public gf1_allocate_voice_
gf1_allocate_voice_:
	db 055h
	db 089h,0e5h
	db 053h
	db 051h
	db 056h
	db 057h
	db 083h,0ech,00ch
	db 089h,0c6h
	db 089h,0d7h
	db 066h,09ch
	db 0fah
	call	gf1_enter1_
	db 0bah,0ffh,0ffh,0ffh,0ffh
	db 0bbh,001h,000h,000h,000h
	db 089h,055h,0e8h
	db 089h,05dh,0ech
	db 031h,0dbh
	jmp	near ptr $+194
	db 0b8h,001h,000h,000h,000h
	db 089h,0d9h
	db 0d3h,0e0h
	db 089h,0c1h
	db 0a1h
	dd _gf1_voice_mask
	db 085h,0c1h
	db 075h,049h
	db 089h,0c2h
	db 009h,0cah
	db 089h,015h
	dd _gf1_voice_mask
	db 081h,0e3h,0ffh,0ffh,000h,000h
	db 08dh,004h,09dh,000h,000h,000h,000h
	db 029h,0d8h
	db 08bh,015h
	dd _gf1_age
	db 089h,034h,085h
	dd _gf1_voice_array + 04h
	db 089h,014h,085h
	dd _gf1_voice_array
	db 042h
	db 089h,03ch,085h
	dd _gf1_voice_array + 08h
	db 089h,015h
	dd _gf1_age
	call	gf1_leave_
	db 066h,09dh
	db 089h,0d8h
	jmp	near ptr $+225
	db 031h,0c0h
	db 066h,089h,0d8h
	db 089h,045h,0e4h
	db 08bh,04dh,0e4h
	db 0c1h,0e0h,002h
	db 029h,0c8h
	db 0c1h,0e0h,002h
	db 08bh,088h
	dd _gf1_voice_array + 04h
	db 03bh,04dh,0ech
	db 072h,041h
	db 077h,00bh
	db 08bh,04dh,0e8h
	db 03bh,088h
	dd _gf1_voice_array
	db 076h,01ah
	db 031h,0c9h
	db 066h,089h,0d9h
	db 08dh,004h,08dh,000h,000h,000h,000h
	db 029h,0c8h
	db 08bh,004h,085h
	dd _gf1_voice_array
	db 089h,0cah
	db 089h,045h,0e8h
	db 031h,0c0h
	db 066h,089h,0d8h
	db 089h,045h,0e4h
	db 08bh,04dh,0e4h
	db 0c1h,0e0h,002h
	db 029h,0c8h
	db 08bh,004h,085h
	dd _gf1_voice_array + 04h
	db 089h,045h,0ech
	db 043h
	db 066h,03bh,01dh
	dd _gf1_voices
	db 00fh,082h,036h,0ffh,0ffh,0ffh
	db 083h,0fah,0ffh
	db 074h,061h
	db 08dh,004h,095h,000h,000h,000h,000h
	db 029h,0d0h
	db 0c1h,0e0h,002h
	db 083h,0b8h
	dd _gf1_voice_array + 08h
	db 000h
	db 074h,00ah
	db 089h,0c3h
	db 089h,0d0h
	db 0ffh,093h
	dd _gf1_voice_array + 08h
	db 0b8h,001h,000h,000h,000h
	db 088h,0d1h
	db 0d3h,0e0h
	db 08bh,00dh
	dd _gf1_voice_mask
	db 009h,0c1h
	db 08dh,004h,095h,000h,000h,000h,000h
	db 029h,0d0h
	db 08bh,01dh
	dd _gf1_age
	db 089h,034h,085h
	dd _gf1_voice_array + 04h
	db 089h,00dh
	dd _gf1_voice_mask
	db 089h,01ch,085h
	dd _gf1_voice_array
	db 043h
	db 089h,03ch,085h
	dd _gf1_voice_array + 08h
	db 089h,01dh
	dd _gf1_age
	call	gf1_leave_
	db 066h,09dh
	db 089h,0d0h
	db 08dh,065h,0f0h
	db 05fh
	db 05eh
	db 059h
	db 05bh
	db 05dh
	retn
	db 090h
	public gf1_free_voice_
gf1_free_voice_:
	db 055h
	db 089h,0e5h
	db 051h
	db 052h
	db 089h,0c1h
	db 066h,09ch
	db 0fah
	call	gf1_enter1_
	db 0b8h,001h,000h,000h,000h
	db 0d3h,0e0h
	db 089h,0c1h
	db 08bh,015h
	dd _gf1_voice_mask
	db 0f7h,0d1h
	db 021h,0cah
	db 089h,015h
	dd _gf1_voice_mask
	call	gf1_leave_
	db 066h,09dh
	db 08dh,065h,0f8h
	db 05ah
	db 059h
	db 05dh
	retn
	db 8bh,0c0h
	public gf1_adjust_priority_
gf1_adjust_priority_:
	db 055h
	db 089h,0e5h
	db 053h
	db 051h
	db 089h,0c1h
	db 089h,0d3h
	db 066h,09ch
	db 0fah
	db 089h,0cah
	call	gf1_enter1_
	db 08dh,004h,095h,000h,000h,000h,000h
	db 029h,0d0h
	db 001h,01ch,085h
	dd _gf1_voice_array + 04h
	call	gf1_leave_
	db 066h,09dh
	db 08dh,065h,0f8h
	db 059h
	db 05bh
	db 05dh
	retn
	public __log87_err_
__log87_err_:
	db 050h
	db 052h
	db 055h
	db 089h,0e5h
	db 08bh,055h,018h
	db 083h,0e2h,01fh
	db 083h,0fah,008h
	db 074h,011h
	db 0d9h,0eeh
	db 0dch,05dh,010h
	db 0dfh,0e0h
	db 09eh
	db 075h,007h
	db 066h,081h,0cah,080h,010h
	jmp	$+7
	db 066h,081h,0cah,040h,010h
	db 089h,0d0h
	db 08dh,055h,010h
	call	__math1err_
	db 05dh
	db 05ah
	db 058h
	db 0c2h,00ch,000h
_TEXT	ends
CONST	segment dword public use32 'DATA'
block1:
CONST	ends
_DATA	segment dword public use32 'DATA'
block2:
	public _gf1_age
_gf1_age:
	db 001h,000h,000h,000h
_DATA	ends
_BSS	segment para public use32 'BSS'
block3:
	public _gf1_voice_array
_gf1_voice_array:
	db 384 dup(?)
	public _gf1_voice_mask
_gf1_voice_mask:
	db 4 dup(?)
_BSS	ends
	end
