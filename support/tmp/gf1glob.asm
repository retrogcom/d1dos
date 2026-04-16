.386p
DGROUP group CONST, _DATA, _BSS
_TEXT	segment para public use32 'CODE'
_TEXT	ends
CONST	segment dword public use32 'DATA'
block1:
CONST	ends
_DATA	segment dword public use32 'DATA'
block2:
	public _gf1_pstatus
_gf1_pstatus:
	db 000h,000h,000h,000h
	public _gf1_mix_control
_gf1_mix_control:
	db 020h,002h
	public _gf1_status_register
_gf1_status_register:
	db 026h,002h
	public _gf1_timer_control
_gf1_timer_control:
	db 028h,002h
	public _gf1_timer_data
_gf1_timer_data:
	db 029h,002h
	public _gf1_irqdma_control
_gf1_irqdma_control:
	db 02bh,002h
	public _gf1_reg_control
_gf1_reg_control:
	db 02fh,002h
	public _gf1_midi_control
_gf1_midi_control:
	db 020h,003h
	public _gf1_midi_data
_gf1_midi_data:
	db 021h,003h
	public _gf1_page_register
_gf1_page_register:
	db 022h,003h
	public _gf1_register_select
_gf1_register_select:
	db 023h,003h
	public _gf1_data_low
_gf1_data_low:
	db 024h,003h
	public _gf1_data_high
_gf1_data_high:
	db 025h,003h
	public _gf1_dram_io
_gf1_dram_io:
	db 027h,003h
	public _gf1_dma_latch
_gf1_dma_latch:
	db 000h,001h
	db 000h,002h,000h,003h,004h,005h
_DATA	ends
_BSS	segment dword public use32 'BSS'
block3:
	public _gf1_status
_gf1_status:
	db 2 dup(?)
	public _gf1_flags
_gf1_flags:
	db 2 dup(?)
	public _gf1_voices
_gf1_voices:
	db 2 dup(?)
	public _gf1_semaphore
_gf1_semaphore:
	db 2 dup(?)
	public _gf1_channel_out
_gf1_channel_out:
	db 1 dup(?)
	public _gf1_mixer_mask
_gf1_mixer_mask:
	db 1 dup(?)
	public _gf1_channel_in
_gf1_channel_in:
	db 1 dup(?)
	public _gf1_midi_irq
_gf1_midi_irq:
	db 1 dup(?)
	public _gf1_irq
_gf1_irq:
	db 1 dup(?)
_BSS	ends
	end
