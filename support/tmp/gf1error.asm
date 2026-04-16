.386p
DGROUP group CONST
_TEXT	segment para public use32 'CODE'
	public gf1_error_str_switch
gf1_error_str_switch:
	dd gf1_error_str_ + 01eh
	dd gf1_error_str_ + 015h
	dd gf1_error_str_ + 027h
	dd gf1_error_str_ + 030h
	dd gf1_error_str_ + 039h
	dd gf1_error_str_ + 042h
	dd gf1_error_str_ + 04bh
	dd gf1_error_str_ + 054h
	dd gf1_error_str_ + 05dh
	dd gf1_error_str_ + 066h
	dd gf1_error_str_ + 06fh
	dd gf1_error_str_ + 078h
	dd gf1_error_str_ + 081h
	dd gf1_error_str_ + 08ah
	dd gf1_error_str_ + 093h
	dd gf1_error_str_ + 09ch
	dd gf1_error_str_ + 0a5h
	dd gf1_error_str_ + 0aeh
	dd gf1_error_str_ + 0b7h
	public gf1_error_str_
gf1_error_str_:
	db 055h
	db 089h,0e5h
	db 040h
	db 083h,0f8h,012h
	db 00fh,087h,0b3h,000h,000h,000h
	db 02eh,0ffh,024h,085h
	dd gf1_error_str_switch
	db 0b8h
	dd gf1_msg_ok
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 04h
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 020h
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 034h
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 050h
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 06ch
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 080h
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 0a0h
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 0cch
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 0ech
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 0108h
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 0128h
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 0144h
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 0174h
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 0198h
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 01b4h
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 01d0h
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 01f0h
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_ok + 01fch
	db 089h,0ech
	db 05dh
	retn
	db 0b8h
	dd gf1_msg_unk
	db 089h,0ech
	db 05dh
	retn
_TEXT	ends
CONST	segment dword public use32 'DATA'
block1:
	public gf1_msg_ok
gf1_msg_ok:
	db 04fh,06bh,000h,000h,04eh,06fh,020h,06dh,06fh,072h,065h,020h,076h,06fh,069h,063h
	db 065h,073h,020h,061h,076h,061h,069h,06ch,061h,062h,06ch,065h,000h,000h,000h,000h
	db 042h,061h,073h,065h,020h,070h,06fh,072h,074h,020h,06eh,06fh,074h,020h,066h,06fh
	db 075h,06eh,064h,000h,049h,06eh,076h,061h,06ch,069h,064h,020h,049h,052h,051h,020h
	db 02dh,020h,072h,075h,06eh,020h,073h,065h,074h,067h,075h,073h,000h,000h,000h,000h
	db 049h,06eh,076h,061h,06ch,069h,064h,020h,044h,04dh,041h,020h,02dh,020h,072h,075h
	db 06eh,020h,073h,065h,074h,067h,075h,073h,000h,000h,000h,000h,04fh,053h,020h,061h
	db 06ch,072h,065h,061h,064h,079h,020h,06ch,06fh,061h,064h,065h,064h,000h,000h,000h
	db 043h,061h,06eh,027h,074h,020h,075h,06eh,06ch,06fh,061h,064h,020h,04fh,053h,02eh
	db 020h,020h,04eh,06fh,074h,020h,06ch,06fh,061h,064h,065h,064h,000h,000h,000h,000h
	db 04eh,06fh,020h,06dh,06fh,072h,065h,020h,06dh,065h,06dh,06fh,072h,079h,020h,061h
	db 076h,061h,069h,06ch,061h,062h,06ch,065h,020h,06fh,06eh,020h,055h,06ch,074h,072h
	db 061h,053h,06fh,075h,06eh,064h,020h,063h,061h,072h,064h,000h,044h,04dh,041h,020h
	db 063h,068h,061h,06eh,06eh,065h,06ch,020h,062h,075h,073h,079h,020h,028h,063h,06fh
	db 06eh,066h,06ch,069h,063h,074h,03fh,029h,000h,066h,06fh,075h,054h,06fh,06fh,020h
	db 06dh,061h,06eh,079h,020h,069h,06eh,074h,065h,072h,072h,075h,070h,074h,020h,068h
	db 061h,06eh,064h,06ch,065h,072h,073h,000h,04eh,06fh,020h,072h,065h,073h,070h,06fh
	db 06eh,073h,065h,020h,066h,072h,06fh,06dh,020h,044h,04dh,041h,020h,063h,068h,061h
	db 06eh,06eh,065h,06ch,000h,000h,000h,04fh,055h,06ch,074h,072h,061h,053h,06fh,075h
	db 06eh,064h,020h,063h,061h,072h,064h,020h,06eh,06fh,074h,020h,066h,06fh,075h,06eh
	db 064h,000h,06eh,06ch,041h,06eh,06fh,074h,068h,065h,072h,020h,070h,072h,06fh,067h
	db 072h,061h,06dh,020h,069h,073h,020h,075h,073h,069h,06eh,067h,020h,074h,068h,065h
	db 020h,055h,06ch,074h,072h,061h,053h,06fh,075h,06eh,064h,020h,063h,061h,072h,064h
	db 000h,000h,000h,000h,04eh,06fh,020h,06dh,06fh,072h,065h,020h,044h,04fh,053h,020h
	db 06dh,075h,06ch,074h,069h,070h,06ch,065h,078h,020h,069h,06eh,074h,065h,072h,072h
	db 075h,070h,074h,073h,000h,020h,028h,063h,054h,069h,06dh,065h,072h,020h,076h,061h
	db 06ch,075h,065h,020h,06dh,075h,073h,074h,020h,062h,065h,020h,031h,020h,06fh,072h
	db 020h,032h,000h,072h,049h,06eh,076h,061h,06ch,069h,064h,020h,06fh,072h,020h,06dh
	db 061h,06ch,066h,06fh,072h,06dh,065h,064h,020h,070h,061h,074h,063h,068h,000h,06fh
	db 04fh,06ch,064h,020h,070h,061h,074h,063h,068h,02ch,020h,072h,075h,06eh,020h,075h
	db 070h,064h,061h,074h,065h,020h,070h,072h,06fh,067h,072h,061h,06dh,000h,072h,064h
	db 044h,04fh,053h,020h,065h,072h,072h,06fh,072h,000h,000h,06eh,046h,069h,06ch,065h
	db 020h,06eh,06fh,074h,020h,066h,06fh,075h,06eh,064h,000h,06dh
	public gf1_msg_unk
gf1_msg_unk:
	db 055h,06eh,06bh,06eh
	db 06fh,077h,06eh,020h,065h,072h,072h,06fh,072h,000h
CONST	ends
	end
