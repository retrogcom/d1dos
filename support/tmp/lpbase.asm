.386p
	externdef __GETDS:near
	externdef int386x_:near
	externdef calloc_:near
	externdef _nfree_:near
	externdef loadpats_banner:near
	externdef strupr_:near
	externdef loadpats_usage:near
	externdef strcmp_:near
	externdef atoi_:near
	externdef loadpats_chksum:near
	externdef ___iob:near
	externdef setbuf_:near
	externdef loadpats_init_funs:near
	externdef loadpats_init:near
	externdef loadpats_load_all:near
	externdef loadpats_setup_hdr:near
	externdef loadpats_poke_block:near
	externdef loadpats_uninit:near
	externdef loadpats_free:near
	externdef lp_get_result:near
	externdef printf_:byte
DGROUP group CONST, _DATA, _BSS
_TEXT	segment para public use32 'CODE'
	public loadpats_ret1
loadpats_ret1:
	db 055h
	db 089h,0e5h
	db 0b8h,001h,000h,000h,000h
	db 089h,0ech
	db 05dh
	retn
	public loadpats_int
loadpats_int:
	db 060h
	db 01eh
	db 006h
	db 00fh,0a0h
	db 00fh,0a8h
	db 089h,0e5h
	db 0fch
	call	__GETDS
	db 0b8h,001h,000h,000h,000h
	db 00fh,0a9h
	db 00fh,0a1h
	db 007h
	db 01fh
	db 061h
	db 0cfh
	public FUN_00080188
FUN_00080188:
	db 055h
	db 089h,0e5h
	db 031h,0c0h
	db 089h,0ech
	db 05dh
	retn
	db 8dh,040h,0
	dd loadpats_show_spin + 041h
	dd loadpats_show_spin + 048h
	dd loadpats_show_spin + 04fh
	dd loadpats_show_spin + 056h
	public loadpats_show_spin
loadpats_show_spin:
	db 055h
	db 089h,0e5h
	db 053h
	db 051h
	db 052h
	db 08bh,00dh
	dd lp_spin_idx
	db 085h,0c9h
	db 075h,016h
	db 068h
	dd loadpats_spin
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 08bh,00dh
	dd lp_spin_idx
	db 083h,0c4h,004h
	jmp	$+70
	db 0bbh,004h,000h,000h,000h
	db 089h,0cah
	db 089h,0c8h
	db 0c1h,0fah,01fh
	db 0f7h,0fbh
	db 083h,0fah,003h
	db 077h,02bh
	db 02eh,0ffh,024h,095h
	dd FUN_00080188 + 0ch
	db 068h
	dd loadpats_spin + 04h
	jmp	$+21
	db 068h
	dd loadpats_spin + 08h
	jmp	$+14
	db 068h
	dd loadpats_spin + 0ch
	jmp	$+7
	db 068h
	dd loadpats_spin + 010h
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 08bh,00dh
	dd lp_spin_idx
	db 041h
	db 089h,00dh
	dd lp_spin_idx
	db 08dh,065h,0f4h
	db 05ah
	db 059h
	db 05bh
	db 05dh
	retn
	db 8dh,040h,0
	public FUN_00080220
FUN_00080220:
	db 055h
	db 089h,0e5h
	db 053h
	db 051h
	db 056h
	db 057h
	db 089h,0c3h
	db 089h,0d6h
	db 031h,0d2h
	db 08dh,004h,016h
	db 08ah,008h
	db 084h,0c9h
	db 074h,012h
	db 080h,0f9h,009h
	db 074h,00dh
	db 080h,0f9h,020h
	db 074h,008h
	db 080h,0f9h,02fh
	db 074h,003h
	db 042h
	jmp	$-25
	db 080h,03ch,032h,05ch
	db 074h,003h
	db 04ah
	jmp	$-7
	db 089h,0dfh
	db 057h
	db 08ah,006h
	db 088h,007h
	db 03ch,000h
	db 00fh,084h,010h,000h,000h,000h
	db 08ah,046h,001h
	db 083h,0c6h,002h
	db 088h,047h,001h
	db 083h,0c7h,002h
	db 03ch,000h
	db 075h,0e4h
	db 05fh
	db 0c6h,044h,01ah,001h,000h
	db 08dh,065h,0f0h
	db 05fh
	db 05eh
	db 059h
	db 05bh
	db 05dh
	retn
	db 090h
	public loadpats_init_funs
loadpats_init_funs:
	db 055h
	db 089h,0e5h
	db 053h
	db 051h
	db 052h
	db 056h
	db 057h
	db 083h,0ech,028h
	db 089h,0c6h
	db 08dh,045h,0e0h
	db 0bbh,000h,008h,000h,000h
	db 08ch,0dah
	db 08dh,04dh,0e0h
	db 0b8h,031h,000h,000h,000h
	db 066h,089h,055h,0eah
	db 066h,089h,055h,0e8h
	db 066h,089h,055h,0e0h
	db 066h,089h,055h,0e6h
	db 089h,05dh,0c8h
	db 0bah,000h,001h,000h,000h
	db 08dh,05dh,0c4h
	db 089h,055h,0c4h
	db 08dh,055h,0c4h
	call	int386x_
	db 08bh,045h,0c4h
	db 0bfh
	dd loadpats_filename
	db 0c1h,0e0h,004h
	db 0b9h
	dd loadpats_show_spin
	db 0a3h
	dd lp_blk2_count + 08h
	db 08bh,045h,0d0h
	db 0bah,01ah,000h,000h,000h
	db 0a3h
	dd lp_blk2_count + 010h
	db 057h
	db 08ah,006h
	db 088h,007h
	db 03ch,000h
	db 00fh,084h,010h,000h,000h,000h
	db 08ah,046h,001h
	db 083h,0c6h,002h
	db 088h,047h,001h
	db 083h,0c7h,002h
	db 03ch,000h
	db 075h,0e4h
	db 05fh
	db 0bfh,001h,000h,000h,000h
	db 0a1h
	dd PTR_printf__000bbe24
	db 089h,00dh
	dd loadpats_progress
	db 031h,0f6h
	db 0b9h,000h,01ah,000h,000h
	db 0a3h
	dd lp_log_fun
	db 089h,035h
	dd loadpats_progress + 04h
	db 089h,03dh
	dd lp_rate_sel
	db 089h,035h
	dd DWORD_00220334
	db 089h,035h
	dd DWORD_00220334 + 04h
	db 089h,035h
	dd DWORD_00220334 + 08h
	db 089h,035h
	dd lp_rate_sel + 04h
	db 0b8h,000h,001h,000h,000h
	db 0beh,000h,001h,000h,000h
	call	calloc_
	db 0bah,049h,000h,000h,000h
	db 0a3h
	dd loadpats_blk1
	db 0b8h,080h,001h,000h,000h
	db 0bfh,080h,001h,000h,000h
	call	calloc_
	db 0bah,03dh,000h,000h,000h
	db 089h,0c3h
	db 0a3h
	dd loadpats_blk2
	db 089h,035h
	dd lp_blk1_count
	db 089h,03dh
	dd lp_blk2_count
	db 089h,00dh
	dd lp_blk1_size
	db 0b8h,000h,080h,000h,000h
	db 0beh,080h,06dh,000h,000h
	db 0bfh,000h,020h,000h,000h
	db 089h,015h
	dd lp_blk2_count + 014h
	db 0a3h
	dd lp_blk2_count + 0ch
	db 089h,035h
	dd lp_blk2_size
	db 0a1h
	dd loadpats_blk1
	db 089h,03dh
	dd lp_blk2_size + 04h
	db 085h,0c0h
	db 074h,00dh
	db 085h,0dbh
	db 074h,009h
	db 083h,03dh
	dd lp_blk2_count + 08h
	db 000h
	db 075h,015h
	db 068h
	dd loadpats_spin + 014h
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 0b8h,001h,000h,000h,000h
	db 083h,0c4h,004h
	jmp	$+4
	db 031h,0c0h
	db 08dh,065h,0ech
	db 05fh
	db 05eh
	db 05ah
	db 059h
	db 05bh
	db 05dh
	retn
	public loadpats_free
loadpats_free:
	db 055h
	db 089h,0e5h
	db 053h
	db 051h
	db 052h
	db 056h
	db 083h,0ech,028h
	db 08bh,015h
	dd loadpats_blk1
	db 085h,0d2h
	db 074h,007h
	db 089h,0d0h
	call	_nfree_
	db 08bh,01dh
	dd loadpats_blk2
	db 085h,0dbh
	db 074h,007h
	db 089h,0d8h
	call	_nfree_
	db 083h,03dh
	dd lp_blk2_count + 08h
	db 000h
	db 074h,038h
	db 08dh,045h,0e4h
	db 0beh,001h,001h,000h,000h
	db 08dh,05dh,0c8h
	db 08ch,0dah
	db 08dh,04dh,0e4h
	db 0a1h
	dd lp_blk2_count + 010h
	db 066h,089h,055h,0eeh
	db 066h,089h,055h,0ech
	db 066h,089h,055h,0e4h
	db 066h,089h,055h,0eah
	db 08dh,055h,0c8h
	db 089h,045h,0d4h
	db 0b8h,031h,000h,000h,000h
	db 089h,075h,0c8h
	call	int386x_
	db 08dh,065h,0f0h
	db 05eh
	db 05ah
	db 059h
	db 05bh
	db 05dh
	retn
	db 8bh,0c0h
	public loadpats_banner
loadpats_banner:
	db 055h
	db 089h,0e5h
	db 053h
	db 083h,03dh
	dd lp_banner_shown
	db 000h
	db 075h,03ah
	db 068h
	dd loadpats_spin + 034h
	db 068h
	dd loadpats_spin + 03ch
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,008h
	db 068h
	dd loadpats_spin + 060h
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 068h
	dd loadpats_spin + 0a0h
	db 0bbh,001h,000h,000h,000h
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 089h,01dh
	dd lp_banner_shown
	db 08dh,065h,0fch
	db 05bh
	db 05dh
	retn
	db 8dh,040h,0
	public loadpats_usage
loadpats_usage:
	db 055h
	db 089h,0e5h
	call	loadpats_banner
	db 068h
	dd loadpats_spin + 0e4h
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 068h
	dd loadpats_spin + 012ch
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 068h
	dd loadpats_spin + 0140h
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 068h
	dd loadpats_spin + 0164h
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 068h
	dd loadpats_spin + 01a8h
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 068h
	dd loadpats_spin + 01f0h
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 068h
	dd loadpats_spin + 0214h
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 068h
	dd loadpats_spin + 0234h
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 068h
	dd loadpats_spin + 0258h
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 068h
	dd loadpats_spin + 026ch
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 068h
	dd loadpats_spin + 029ch
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 068h
	dd loadpats_spin + 02cch
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 068h
	dd loadpats_spin + 0308h
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 068h
	dd loadpats_spin + 0344h
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 068h
	dd loadpats_spin + 038ch
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 089h,0ech
	db 05dh
	retn
	db 8bh,0c0h
	public lp_get_result
lp_get_result:
	db 055h
	db 089h,0e5h
	db 052h
	db 08bh,015h
	dd loadpats_ok + 04h
	db 083h,03dh
	dd loadpats_ok
	db 000h
	db 074h,004h
	db 031h,0c0h
	jmp	$+13
	db 085h,0d2h
	db 075h,005h
	db 0bah,001h,000h,000h,000h
	db 089h,0d0h
	db 089h,015h
	dd loadpats_ok + 04h
	db 08dh,065h,0fch
	db 05ah
	db 05dh
	retn
	db 8bh,0c0h
	public loadpats_opts_tja
loadpats_opts_tja:
	db 055h
	db 089h,0e5h
	db 053h
	db 051h
	db 056h
	db 057h
	db 083h,0ech,008h
	db 089h,045h,0ech
	db 089h,055h,0e8h
	db 031h,0dbh
	db 083h,0f8h,001h
	db 00fh,08eh,024h,003h,000h,000h
	db 0b9h,001h,000h,000h,000h
	jmp	near ptr $+766
	db 08bh,075h,0e8h
	db 08dh,004h,08dh,000h,000h,000h,000h
	db 001h,0f0h
	db 08bh,000h
	call	strupr_
	db 08ah,010h
	db 080h,0fah,02dh
	db 074h,005h
	db 080h,0fah,02fh
	db 075h,003h
	db 040h
	jmp	$-13
	db 080h,0fah,048h
	db 072h,045h
	db 00fh,086h,078h,001h,000h,000h
	db 080h,0fah,04dh
	db 072h,023h
	db 00fh,086h,0c8h,001h,000h,000h
	db 080h,0fah,051h
	db 00fh,082h,07dh,002h,000h,000h
	db 00fh,086h,053h,002h,000h,000h
	db 080h,0fah,056h
	db 00fh,084h,05ch,002h,000h,000h
	jmp	near ptr $+622
	db 080h,0fah,049h
	db 00fh,086h,077h,001h,000h,000h
	db 080h,0fah,04ch
	db 00fh,084h,01ah,002h,000h,000h
	jmp	near ptr $+599
	db 080h,0fah,038h
	db 072h,01fh
	db 00fh,086h,07ah,000h,000h,000h
	db 080h,0fah,03fh
	db 00fh,082h,03eh,002h,000h,000h
	db 076h,018h
	db 080h,0fah,046h
	db 00fh,084h,098h,000h,000h,000h
	jmp	near ptr $+563
	db 080h,0fah,031h
	db 074h,026h
	jmp	near ptr $+553
	db 080h,078h,001h,000h
	db 00fh,085h,01ah,002h,000h,000h
	db 0bfh,001h,000h,000h,000h
	call	loadpats_usage
	db 089h,03dh
	dd loadpats_ok
	db 089h,0f8h
	jmp	near ptr $+614
	db 080h,078h,001h,036h
	db 074h,00ah
	db 080h,078h,002h,000h
	db 00fh,085h,0f3h,001h,000h,000h
	db 0a0h
	dd lp_rate_sel
	db 024h,0fch
	db 088h,0c4h
	db 0a2h
	dd lp_rate_sel
	db 080h,0cch,002h
	db 088h,025h
	dd lp_rate_sel
	db 0c7h,005h
	dd DWORD_00220334
	db 001h,000h,000h,000h
	jmp	near ptr $+471
	db 080h,078h,001h,000h
	db 00fh,085h,0c3h,001h,000h,000h
	db 08ah,035h
	dd lp_rate_sel
	db 080h,0e6h,0fdh
	db 088h,0f0h
	db 088h,035h
	dd lp_rate_sel
	db 00ch,001h
	db 0bah,001h,000h,000h,000h
	db 0a2h
	dd lp_rate_sel
	db 089h,015h
	dd DWORD_00220334
	jmp	near ptr $+421
	db 08ah,050h,001h
	db 080h,0fah,032h
	db 075h,033h
	db 03ah,050h,002h
	db 075h,02eh
	db 080h,078h,003h,000h
	db 075h,028h
	db 08ah,035h
	dd lp_rate_sel
	db 080h,0e6h,0f7h
	db 0beh,001h,000h,000h,000h
	db 088h,0f0h
	db 088h,035h
	dd lp_rate_sel
	db 00ch,004h
	db 089h,035h
	dd DWORD_00220334 + 04h
	db 0a2h
	dd lp_rate_sel
	jmp	near ptr $+362
	db 08ah,050h,001h
	db 080h,0fah,034h
	db 00fh,085h,054h,001h,000h,000h
	db 03ah,050h,002h
	db 00fh,085h,04bh,001h,000h,000h
	db 080h,078h,003h,000h
	db 00fh,085h,041h,001h,000h,000h
	db 08ah,035h
	dd lp_rate_sel
	db 080h,0e6h,0f3h
	db 0bfh,001h,000h,000h,000h
	db 088h,0f0h
	db 088h,035h
	dd lp_rate_sel
	db 00ch,008h
	db 089h,03dh
	dd DWORD_00220334 + 04h
	db 0a2h
	dd lp_rate_sel
	jmp	near ptr $+291
	db 080h,078h,001h,000h
	db 074h,012h
	db 0bah
	dd loadpats_spin + 0390h
	call	strcmp_
	db 085h,0c0h
	db 00fh,085h,001h,001h,000h,000h
	call	loadpats_usage
	db 0b8h,001h,000h,000h,000h
	db 0a3h
	dd loadpats_ok
	db 08dh,065h,0f0h
	db 05fh
	db 05eh
	db 059h
	db 05bh
	db 05dh
	retn
	db 0bfh
	dd loadpats_filename
	db 08dh,070h,001h
	db 057h
	db 08ah,006h
	db 088h,007h
	db 03ch,000h
	db 00fh,084h,010h,000h,000h,000h
	db 08ah,046h,001h
	db 083h,0c6h,002h
	db 088h,047h,001h
	db 083h,0c7h,002h
	db 03ch,000h
	db 075h,0e4h
	db 05fh
	jmp	near ptr $+200
	db 080h,078h,001h,045h
	db 075h,02dh
	db 080h,078h,002h,04dh
	db 075h,027h
	db 080h,078h,004h,000h
	db 075h,021h
	db 08ah,050h,003h
	db 080h,0fah,031h
	db 072h,019h
	db 080h,0fah,034h
	db 077h,014h
	db 088h,0d0h
	db 025h,0ffh,000h,000h,000h
	db 083h,0e8h,030h
	db 0a3h
	dd lp_rate_sel + 04h
	jmp	near ptr $+149
	db 040h
	call	atoi_
	db 083h,0f8h,001h
	db 00fh,08ch,07ch,000h,000h,000h
	db 083h,0f8h,064h
	db 00fh,08fh,073h,000h,000h,000h
	db 089h,0c2h
	db 0c1h,0e0h,007h
	db 029h,0d0h
	db 089h,0c2h
	db 0beh,064h,000h,000h,000h
	db 0c1h,0fah,01fh
	db 0f7h,0feh
	db 0a2h
	dd PTR_printf__000bbe24 + 02eh
	db 03ch,001h
	db 073h,007h
	db 0c6h,005h
	dd PTR_printf__000bbe24 + 02eh
	db 001h
	db 080h,03dh
	dd PTR_printf__000bbe24 + 02eh
	db 07fh
	db 076h,04ch
	db 030h,0f6h
	db 088h,035h
	dd PTR_printf__000bbe24 + 02eh
	jmp	$+68
	db 080h,078h,001h,000h
	db 075h,037h
	db 0c6h,005h
	dd PTR_printf__000bbe24 + 02ch
	db 001h
	db 0c7h,005h
	dd loadpats_progress + 04h
	db 001h,000h,000h,000h
	jmp	$+43
	db 080h,078h,001h,000h
	db 075h,01eh
	db 0c7h,005h
	dd lp_banner_shown + 04h
	db 001h,000h,000h,000h
	jmp	$+25
	db 080h,078h,001h,000h
	db 075h,00ch
	db 0c7h,005h
	dd DWORD_00220334 + 08h
	db 001h,000h,000h,000h
	jmp	$+7
	db 0bbh,001h,000h,000h,000h
	db 085h,0dbh
	db 074h,031h
	call	loadpats_banner
	db 08bh,045h,0e8h
	db 0c1h,0e1h,002h
	db 001h,0c1h
	db 08bh,011h
	db 052h
	db 068h
	dd loadpats_spin + 0398h
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,008h
	call	loadpats_usage
	db 0b8h,001h,000h,000h,000h
	db 08dh,065h,0f0h
	db 05fh
	db 05eh
	db 059h
	db 05bh
	db 05dh
	retn
	db 041h
	db 03bh,04dh,0ech
	db 00fh,08ch,0feh,0fch,0ffh,0ffh
	db 083h,03dh
	dd lp_banner_shown + 04h
	db 000h
	db 074h,00fh
	db 0b8h
	dd FUN_00080188
	db 0a3h
	dd PTR_printf__000bbe24
	db 0a3h
	dd lp_log_fun
	db 031h,0c0h
	db 08dh,065h,0f0h
	db 05fh
	db 05eh
	db 059h
	db 05bh
	db 05dh
	retn
	db 8bh,0c0h
	public loadpats_chksum
loadpats_chksum:
	db 055h
	db 089h,0e5h
	db 053h
	db 051h
	db 056h
	db 089h,0c6h
	db 089h,0d1h
	db 031h,0c0h
	db 031h,0d2h
	db 039h,0cah
	db 072h,008h
	db 08dh,065h,0f4h
	db 05eh
	db 059h
	db 05bh
	db 05dh
	retn
	db 08ah,01ch,032h
	db 081h,0e3h,0ffh,000h,000h,000h
	db 001h,0c3h
	db 08dh,004h,09dh,000h,000h,000h,000h
	db 001h,0d8h
	db 0c1h,0e0h,002h
	db 042h
	db 029h,0d8h
	db 039h,0cah
	db 072h,0e2h
	db 08dh,065h,0f4h
	db 05eh
	db 059h
	db 05bh
	db 05dh
	retn
	public loadpats_setup_hdr
loadpats_setup_hdr:
	db 055h
	db 089h,0e5h
	db 052h
	db 0a1h
	dd lp_blk1_size
	db 0a3h
	dd PTR_printf__000bbe24 + 0eh
	db 0a1h
	dd lp_blk2_size
	db 0a3h
	dd PTR_printf__000bbe24 + 016h
	db 0a1h
	dd lp_blk2_size + 04h
	db 0a3h
	dd PTR_printf__000bbe24 + 01eh
	db 0a1h
	dd lp_blk2_count + 04h
	db 0a3h
	dd PTR_printf__000bbe24 + 01ah
	db 066h,0a1h
	dd lp_blk2_size + 08h
	db 066h,0a3h
	dd PTR_printf__000bbe24 + 026h
	db 0a0h
	dd lp_blk2_size + 0ch
	db 0a2h
	dd PTR_printf__000bbe24 + 028h
	db 0a0h
	dd lp_blk2_size + 0dh
	db 0a2h
	dd PTR_printf__000bbe24 + 029h
	db 0a0h
	dd lp_blk2_size + 0eh
	db 0a2h
	dd PTR_printf__000bbe24 + 02ah
	db 0a0h
	dd lp_blk2_size + 0fh
	db 0bah,000h,01ah,000h,000h
	db 0a2h
	dd PTR_printf__000bbe24 + 02bh
	db 0a1h
	dd loadpats_blk1
	call	loadpats_chksum
	db 0bah
	dd PTR_printf__000bbe24 + 031h
	db 0a3h
	dd PTR_printf__000bbe24 + 012h
	db 0b8h
	dd PTR_printf__000bbe24 + 0ch
	db 081h,0eah
	dd PTR_printf__000bbe24 + 0ch
	call	loadpats_chksum
	db 0a3h
	dd PTR_printf__000bbe24 + 08h
	db 08dh,065h,0fch
	db 05ah
	db 05dh
	retn
	public loadpats_
loadpats_:
	db 055h
	db 089h,0e5h
	db 053h
	db 052h
	db 089h,0c3h
	db 0b8h
	dd ___iob + 01ah
	db 031h,0d2h
	call	setbuf_
	db 089h,0d8h
	call	loadpats_init_funs
	db 085h,0c0h
	db 00fh,085h,096h,000h,000h,000h
	db 0b8h
	dd lp_log_fun
	call	loadpats_init
	db 085h,0c0h
	db 00fh,085h,089h,000h,000h,000h
	db 068h
	dd loadpats_spin + 03c8h
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,004h
	db 0b8h
	dd lp_log_fun
	call	loadpats_load_all
	db 085h,0c0h
	db 074h,011h
	db 050h
	db 068h
	dd loadpats_msg_error
	db 0ffh,015h
	dd PTR_printf__000bbe24
	db 083h,0c4h,008h
	jmp	$+89
	call	loadpats_setup_hdr
	db 0bah
	dd PTR_printf__000bbe24 + 04h
	db 0bbh,03dh,000h,000h,000h
	db 031h,0c0h
	call	loadpats_poke_block
	db 0bbh,000h,01ah,000h,000h
	db 08bh,015h
	dd loadpats_blk1
	db 0a1h
	dd PTR_printf__000bbe24 + 0eh
	call	loadpats_poke_block
	db 0bbh,080h,06dh,000h,000h
	db 08bh,015h
	dd loadpats_blk2
	db 0a1h
	dd PTR_printf__000bbe24 + 016h
	call	loadpats_poke_block
	call	loadpats_uninit
	db 0bah,001h,000h,000h,000h
	call	loadpats_free
	db 089h,015h
	dd loadpats_ok
	jmp	$+12
	call	loadpats_uninit
	call	loadpats_free
	call	lp_get_result
	db 08dh,065h,0f8h
	db 05ah
	db 05bh
	db 05dh
	retn
_TEXT	ends
CONST	segment dword public use32 'DATA'
block1:
	public loadpats_spin
loadpats_spin:
	db 07ch,000h,001h,000h,008h,02fh,000h,000h,008h,02dh,000h,000h,008h,05ch,000h,000h
	db 008h,07ch,000h,000h,045h,052h,052h,04fh,052h,03ah,020h,04eh,06fh,074h,020h,065h
	db 06eh,06fh,075h,067h,068h,020h,06dh,065h,06dh,06fh,072h,079h,020h,074h,06fh,020h
	db 072h,075h,06eh,000h,031h,02eh,039h,031h,000h,000h,000h,000h,055h,06ch,074h,072h
	db 061h,053h,06fh,075h,06eh,064h,020h,050h,061h,074h,063h,068h,020h,04ch,06fh,061h
	db 064h,065h,072h,020h,056h,065h,072h,073h,069h,06fh,06eh,020h,025h,073h,00ah,000h
	db 043h,06fh,070h,079h,072h,069h,067h,068h,074h,020h,028h,043h,029h,020h,031h,039h
	db 039h,034h,020h,062h,079h,020h,041h,064h,076h,061h,06eh,063h,065h,064h,020h,047h
	db 072h,061h,076h,069h,073h,020h,043h,06fh,06dh,070h,075h,074h,065h,072h,020h,054h
	db 065h,063h,068h,06eh,06fh,06ch,06fh,067h,079h,020h,04ch,074h,064h,02eh,00ah,000h
	db 041h,06ch,06ch,020h,052h,069h,067h,068h,074h,073h,020h,052h,065h,073h,065h,072h
	db 076h,065h,064h,02eh,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h
	db 020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h
	db 020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,00ah,00ah
	db 000h,06dh,065h,06dh,055h,053h,041h,047h,045h,03ah,020h,04ch,04fh,041h,044h,050h
	db 041h,054h,053h,020h,05bh,06fh,070h,074h,069h,06fh,06eh,073h,05dh,020h,020h,020h
	db 020h,020h,020h,04eh,04fh,054h,045h,03ah,020h,049h,074h,065h,06dh,073h,020h,069h
	db 06eh,020h,062h,072h,061h,063h,06bh,065h,074h,073h,020h,061h,072h,065h,020h,06fh
	db 070h,074h,069h,06fh,06eh,061h,06ch,02eh,00ah,00ah,000h,039h,056h,061h,06ch,069h
	db 064h,020h,06fh,070h,074h,069h,06fh,06eh,073h,020h,061h,072h,065h,03ah,00ah,000h
	db 02dh,048h,020h,02dh,03fh,020h,020h,044h,069h,073h,070h,06ch,061h,079h,020h,074h
	db 068h,069h,073h,020h,068h,065h,06ch,070h,020h,073h,063h,072h,065h,065h,06eh,00ah
	db 000h,067h,068h,074h,02dh,04dh,078h,078h,078h,020h,020h,053h,070h,065h,063h,069h
	db 066h,079h,020h,06dh,075h,073h,069h,063h,020h,076h,06fh,06ch,075h,06dh,065h,020h
	db 077h,068h,065h,072h,065h,020h,078h,078h,078h,03dh,031h,020h,074h,06fh,020h,031h
	db 030h,030h,020h,028h,044h,065h,066h,061h,075h,06ch,074h,03ah,020h,078h,078h,078h
	db 03dh,031h,030h,030h,029h,00ah,000h,04fh,02dh,049h,06eh,061h,06dh,065h,020h,053h
	db 070h,065h,063h,069h,066h,079h,020h,061h,020h,064h,069h,066h,066h,065h,072h,065h
	db 06eh,074h,020h,02eh,049h,04eh,049h,020h,066h,069h,06ch,065h,020h,020h,020h,020h
	db 020h,020h,020h,020h,020h,020h,020h,028h,044h,065h,066h,061h,075h,06ch,074h,03ah
	db 020h,050h,041h,054h,043h,048h,045h,053h,02eh,049h,04eh,049h,00ah,000h,070h,074h
	db 02dh,051h,020h,020h,020h,020h,020h,044h,069h,073h,061h,062h,06ch,065h,020h,061h
	db 06ch,06ch,020h,073h,063h,072h,065h,065h,06eh,020h,06fh,075h,074h,070h,075h,074h
	db 00ah,000h,070h,020h,02dh,056h,020h,020h,020h,020h,020h,056h,065h,072h,062h,06fh
	db 073h,065h,020h,073h,063h,072h,065h,065h,06eh,020h,06fh,075h,074h,070h,075h,074h
	db 00ah,000h,063h,020h,02dh,04ch,020h,020h,020h,020h,020h,045h,06eh,061h,062h,06ch
	db 065h,020h,055h,06ch,074h,072h,061h,053h,06fh,075h,06eh,064h,020h,06ch,069h,06eh
	db 065h,020h,069h,06eh,00ah,000h,03ah,020h,044h,065h,062h,075h,067h,067h,069h,06eh
	db 067h,020h,06fh,070h,074h,069h,06fh,06eh,073h,03ah,00ah,000h,02dh,038h,020h,020h
	db 020h,020h,020h,04ch,06fh,061h,064h,020h,070h,061h,074h,063h,068h,065h,073h,020h
	db 061h,074h,020h,038h,020h,062h,069h,074h,020h,069h,06eh,073h,074h,065h,061h,064h
	db 020h,06fh,066h,020h,031h,036h,020h,062h,069h,074h,00ah,000h,02dh,031h,036h,020h
	db 020h,020h,020h,04ch,06fh,061h,064h,020h,070h,061h,074h,063h,068h,065h,073h,020h
	db 061h,074h,020h,031h,036h,020h,062h,069h,074h,020h,069h,06eh,073h,074h,065h,061h
	db 064h,020h,06fh,066h,020h,038h,020h,062h,069h,074h,00ah,000h,02dh,046h,032h,032h
	db 020h,020h,020h,04ch,06fh,061h,064h,020h,070h,061h,074h,063h,068h,065h,073h,020h
	db 061h,074h,020h,068h,061h,06ch,066h,020h,073h,061h,06dh,070h,06ch,069h,06eh,067h
	db 020h,072h,061h,074h,065h,020h,028h,061h,070h,070h,072h,06fh,078h,020h,032h,032h
	db 06bh,048h,07ah,029h,00ah,000h,020h,06ch,02dh,046h,034h,034h,020h,020h,020h,04ch
	db 06fh,061h,064h,020h,070h,061h,074h,063h,068h,065h,073h,020h,061h,074h,020h,066h
	db 075h,06ch,06ch,020h,073h,061h,06dh,070h,06ch,069h,06eh,067h,020h,072h,061h,074h
	db 065h,020h,028h,061h,070h,070h,072h,06fh,078h,020h,034h,034h,06bh,048h,07ah,029h
	db 00ah,000h,020h,069h,02dh,04dh,045h,04dh,078h,020h,020h,046h,06fh,072h,063h,065h
	db 020h,055h,06ch,074h,072h,061h,053h,06fh,075h,06eh,064h,020h,06dh,065h,06dh,06fh
	db 072h,079h,020h,073h,069h,07ah,065h,02eh,020h,078h,03dh,031h,02dh,034h,020h,066h
	db 06fh,072h,020h,032h,035h,036h,02dh,031h,030h,032h,034h,020h,072h,065h,073h,070h
	db 065h,063h,074h,069h,076h,065h,06ch,079h,00ah,000h,020h,020h,00ah,000h,06fh,061h
	db 048h,045h,04ch,050h,000h,000h,000h,000h,045h,052h,052h,04fh,052h,03ah,020h,025h
	db 073h,020h,069h,073h,020h,06eh,06fh,074h,020h,061h,020h,076h,061h,06ch,069h,064h
	db 020h,063h,06fh,06dh,06dh,061h,06eh,064h,020h,06ch,069h,06eh,065h,020h,06fh,070h
	db 074h,069h,06fh,06eh,02eh,00ah,00ah,000h,04ch,06fh,061h,064h,069h,06eh,067h,02eh
	db 02eh,02eh,000h,06dh
	public loadpats_msg_error
loadpats_msg_error:
	db 045h,072h,072h,06fh,072h,03ah,020h,025h,030h,034h,069h,00ah
	db 000h
CONST	ends
_DATA	segment dword public use32 'DATA'
block2:
	public lp_banner_shown
lp_banner_shown:
	db 000h,000h,000h,000h,000h,000h,000h,000h
	public loadpats_ok
loadpats_ok:
	db 000h,000h,000h,000h,000h,000h,000h,000h
	public PTR_printf__000bbe24
PTR_printf__000bbe24:
	dd printf_
	db 04ah,04ch,04dh,04ch,000h,000h,000h,000h,001h,001h,000h,000h
	db 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h
	db 000h,000h,000h,020h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,073h,07fh
	db 018h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h
	db 000h,000h,000h,000h
	public lp_spin_idx
lp_spin_idx:
	db 000h,000h,000h,000h
_DATA	ends
_BSS	segment dword public use32 'BSS'
block3:
	public lp_base_data1
lp_base_data1:
	db 80 dup(?)
	public lp_log_fun
lp_log_fun:
	db 4 dup(?)
	public loadpats_progress
loadpats_progress:
	db 8 dup(?)
	public loadpats_filename
loadpats_filename:
	db 80 dup(?)
	public lp_rate_sel
lp_rate_sel:
	db 8 dup(?)
	public DWORD_00220334
DWORD_00220334:
	db 12 dup(?)
	public loadpats_blk1
loadpats_blk1:
	db 4 dup(?)
	public loadpats_blk2
loadpats_blk2:
	db 4 dup(?)
	public lp_blk1_count
lp_blk1_count:
	db 4 dup(?)
	public lp_blk2_count
lp_blk2_count:
	db 24 dup(?)
	public lp_blk1_size
lp_blk1_size:
	db 4 dup(?)
	public lp_blk2_size
lp_blk2_size:
	db 16 dup(?)
	public lp_base_rest
lp_base_rest:
	db 260 dup(?)
_BSS	ends
	end
