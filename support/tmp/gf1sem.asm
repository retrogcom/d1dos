.386p
	externdef _gf1_semaphore:near
	externdef gf1_enter1_:near
	externdef _gf1_flags:near
	externdef gf1_process_interrupt_:near
DGROUP group CONST, _DATA
_TEXT	segment dword public use32 'CODE'
	public gf1_init_semaphores_
gf1_init_semaphores_:
	db 066h,0c7h,005h
	dd _gf1_num_sems
	db 000h,000h
	db 066h,0c7h,005h
	dd _gf1_semaphore
	db 000h,000h
	retn
	public gf1_enter1_
gf1_enter1_:
	db 066h,0ffh,005h
	dd _gf1_semaphore
	retn
	public gf1_enter_
gf1_enter_:
	db 066h,09ch
	db 0fah
	db 066h,083h,03dh
	dd _gf1_semaphore
	db 000h
	db 075h,00ch
	call	gf1_enter1_
	db 0b8h,001h,000h,000h,000h
	jmp	$+4
	db 033h,0c0h
	db 066h,09dh
	retn
	retn
	public gf1_leave_
gf1_leave_:
	db 066h,09ch
	db 0fah
	db 066h,0ffh,00dh
	dd _gf1_semaphore
	db 066h,083h,03dh
	dd _gf1_semaphore
	db 000h
	db 075h,01fh
	db 090h
	db 090h
	db 090h
	db 090h
	db 0f6h,005h
	dd _gf1_flags
	db 006h
	db 074h,012h
	db 090h
	db 090h
	db 090h
	db 090h
	db 080h,025h
	dd _gf1_flags
	db 0fdh
	call	gf1_process_interrupt_
	jmp	$-25
	db 066h,09dh
	retn
_TEXT	ends
CONST	segment dword public use32 'DATA'
block1:
CONST	ends
_DATA	segment dword public use32 'DATA'
block2:
	public _gf1_num_sems
_gf1_num_sems:
	db 000h,000h
	public _gf1_ext_sems
_gf1_ext_sems:
	db 000h,000h,000h,000h
	public _gf1_sem2
_gf1_sem2:
	db 000h,000h,000h,000h
	public _gf1_sem3
_gf1_sem3:
	db 000h,000h,000h,000h
	public _gf1_sem4
_gf1_sem4:
	db 000h,000h
	db 000h,000h
	public _gf1_sem5
_gf1_sem5:
	db 000h,000h,000h,000h
_DATA	ends
	end
