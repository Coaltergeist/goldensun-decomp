	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f9ee8  @ 0x080f9ee8
	bx	r3
.func_end Func_80f9ee8

.Lf9eec:
	.word	Data_fba14
.Lf9ef0:
	.word	SOUND_INFO_PTR
.Lf9ef4:
	.word	0x68736d53

	.section .rodata

.Lfb7a0:
	.incrom 0xfb7a0, 0xfb830
