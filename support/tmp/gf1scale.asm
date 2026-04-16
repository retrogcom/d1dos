.386p
DGROUP group CONST, _DATA
_TEXT	segment para public use32 'CODE'
_TEXT	ends
CONST	segment dword public use32 'DATA'
block1:
CONST	ends
_DATA	segment dword public use32 'DATA'
block2:
	public _gf1_scale_table
_gf1_scale_table:
	db 0efh,01fh,000h,000h,0d5h,021h,000h,000h,0d9h,023h,000h,000h,0fah,025h,000h,000h
	db 03ch,028h,000h,000h,0a1h,02ah,000h,000h,02ah,02dh,000h,000h,0d9h,02fh,000h,000h
	db 0b2h,032h,000h,000h,0b6h,035h,000h,000h,0e7h,038h,000h,000h,049h,03ch,000h,000h
	db 0dfh,03fh,000h,000h,0abh,043h,000h,000h,0b2h,047h,000h,000h,0f5h,04bh,000h,000h
	db 079h,050h,000h,000h,042h,055h,000h,000h,054h,05ah,000h,000h,0b3h,05fh,000h,000h
	db 064h,065h,000h,000h,06ch,06bh,000h,000h,0cfh,071h,000h,000h,093h,078h,000h,000h
	db 0bfh,07fh,000h,000h,057h,087h,000h,000h,064h,08fh,000h,000h,0eah,097h,000h,000h
	db 0f3h,0a0h,000h,000h,085h,0aah,000h,000h,0a9h,0b4h,000h,000h,067h,0bfh,000h,000h
	db 0c9h,0cah,000h,000h,0d8h,0d6h,000h,000h,09eh,0e3h,000h,000h,027h,0f1h,000h,000h
	db 07eh,0ffh,000h,000h,0afh,00eh,001h,000h,0c8h,01eh,001h,000h,0d5h,02fh,001h,000h
	db 0e6h,041h,001h,000h,00bh,055h,001h,000h,052h,069h,001h,000h,0ceh,07eh,001h,000h
	db 092h,095h,001h,000h,0b0h,0adh,001h,000h,03ch,0c7h,001h,000h,04eh,0e2h,001h,000h
	db 0fch,0feh,001h,000h,05fh,01dh,002h,000h,090h,03dh,002h,000h,0abh,05fh,002h,000h
	db 0cdh,083h,002h,000h,016h,0aah,002h,000h,0a5h,0d2h,002h,000h,09dh,0fdh,002h,000h
	db 024h,02bh,003h,000h,060h,05bh,003h,000h,079h,08eh,003h,000h,09dh,0c4h,003h,000h
	db 0f9h,0fdh,003h,000h,0beh,03ah,004h,000h,020h,07bh,004h,000h,056h,0bfh,004h,000h
	db 09bh,007h,005h,000h,02ch,054h,005h,000h,04ah,0a5h,005h,000h,03bh,0fbh,005h,000h
	db 048h,056h,006h,000h,0c0h,0b6h,006h,000h,0f3h,01ch,007h,000h,03bh,089h,007h,000h
	db 0f3h,0fbh,007h,000h,07dh,075h,008h,000h,041h,0f6h,008h,000h,0adh,07eh,009h,000h
	db 037h,00fh,00ah,000h,058h,0a8h,00ah,000h,094h,04ah,00bh,000h,076h,0f6h,00bh,000h
	db 091h,0ach,00ch,000h,080h,06dh,00dh,000h,0e7h,039h,00eh,000h,076h,012h,00fh,000h
	db 0e6h,0f7h,00fh,000h,0fah,0eah,010h,000h,083h,0ech,011h,000h,05bh,0fdh,012h,000h
	db 06eh,01eh,014h,000h,0b0h,050h,015h,000h,029h,095h,016h,000h,0edh,0ech,017h,000h
	db 022h,059h,019h,000h,000h,0dbh,01ah,000h,0cfh,073h,01ch,000h,0edh,024h,01eh,000h
	db 0cch,0efh,01fh,000h,0f5h,0d5h,021h,000h,006h,0d9h,023h,000h,0b7h,0fah,025h,000h
	db 0dch,03ch,028h,000h,061h,0a1h,02ah,000h,053h,02ah,02dh,000h,0dbh,0d9h,02fh,000h
	db 045h,0b2h,032h,000h,000h,0b6h,035h,000h,09eh,0e7h,038h,000h,0dah,049h,03ch,000h
	db 099h,0dfh,03fh,000h,0eah,0abh,043h,000h,00ch,0b2h,047h,000h,06fh,0f5h,04bh,000h
	db 0b8h,079h,050h,000h,0c3h,042h,055h,000h,0a6h,054h,05ah,000h,0b6h,0b3h,05fh,000h
	db 08bh,064h,065h,000h,000h,06ch,06bh,000h,03ch,0cfh,071h,000h,0b4h,093h,078h,000h
	db 032h,0bfh,07fh,000h,0d4h,057h,087h,000h,018h,064h,08fh,000h,0dfh,0eah,097h,000h
	db 071h,0f3h,0a0h,000h,087h,085h,0aah,000h,04dh,0a9h,0b4h,000h,000h,000h,000h,000h
_DATA	ends
	end
