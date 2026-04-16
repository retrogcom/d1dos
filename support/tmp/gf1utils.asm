.386p
	externdef getenv_:near
	externdef strtol_:near
DGROUP group CONST, _DATA, _BSS
_TEXT	segment para public use32 'CODE'
	public gf1_GetUltraCfg_
gf1_GetUltraCfg_:
	db 055h
	db 089h,0e5h
	db 053h
	db 051h
	db 052h
	db 089h,0c1h
	db 0a1h
	dd _gf1_ultrasnd_ptr
	call	getenv_
	db 089h,0c2h
	db 0a3h
	dd _gf1_ustr
	db 085h,0c0h
	db 00fh,084h,0d9h,000h,000h,000h
	db 0bah
	dd _gf1_ustr
	db 0bbh,010h,000h,000h,000h
	call	strtol_
	db 066h,089h,041h,002h
	db 0a1h
	dd _gf1_ustr
	db 080h,038h,02ch
	db 075h,006h
	db 040h
	db 0a3h
	dd _gf1_ustr
	db 0bah
	dd _gf1_ustr
	db 0bbh,00ah,000h,000h,000h
	db 0a1h
	dd _gf1_ustr
	call	strtol_
	db 088h,041h,007h
	db 0a1h
	dd _gf1_ustr
	db 080h,038h,02ch
	db 075h,006h
	db 040h
	db 0a3h
	dd _gf1_ustr
	db 0bah
	dd _gf1_ustr
	db 0bbh,00ah,000h,000h,000h
	db 0a1h
	dd _gf1_ustr
	call	strtol_
	db 088h,041h,006h
	db 0a1h
	dd _gf1_ustr
	db 080h,038h,02ch
	db 075h,006h
	db 040h
	db 0a3h
	dd _gf1_ustr
	db 0bah
	dd _gf1_ustr
	db 0bbh,00ah,000h,000h,000h
	db 0a1h
	dd _gf1_ustr
	call	strtol_
	db 088h,041h,004h
	db 0a1h
	dd _gf1_ustr
	db 080h,038h,02ch
	db 075h,006h
	db 040h
	db 0a3h
	dd _gf1_ustr
	db 0bah
	dd _gf1_ustr
	db 0bbh,00ah,000h,000h,000h
	db 0a1h
	dd _gf1_ustr
	call	strtol_
	db 066h,08bh,051h,002h
	db 088h,041h,005h
	db 066h,085h,0d2h
	db 074h,01fh
	db 080h,079h,006h,000h
	db 074h,019h
	db 080h,079h,007h,000h
	db 074h,013h
	db 080h,079h,004h,000h
	db 074h,00dh
	db 080h,079h,005h,000h
	db 074h,007h
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
CONST	segment dword public use32 'DATA'
block1:
	public _gf1_ultrasnd
_gf1_ultrasnd:
	db 055h,04ch,054h,052h,041h,053h,04eh,044h,000h
CONST	ends
_DATA	segment dword public use32 'DATA'
block2:
	public _gf1_ultrasnd_ptr
_gf1_ultrasnd_ptr:
	dd _gf1_ultrasnd
_DATA	ends
_BSS	segment dword public use32 'BSS'
block3:
	public _gf1_ustr
_gf1_ustr:
	db 4 dup(?)
_BSS	ends
	end
