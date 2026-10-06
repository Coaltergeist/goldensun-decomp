	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ply_patt  @ 0x080f9ae0
	ldrb	r2, [r1, #2]
	cmp	r2, #3
	bcs	.Lf9af8
	lsl	r2, #2
	add	r3, r1, r2
	ldr	r2, [r1, #0x40]
	add	r2, #4
	str	r2, [r3, #0x44]
	ldrb	r2, [r1, #2]
	add	r2, #1
	strb	r2, [r1, #2]
	b	ply_goto
.Lf9af8:
	b	ply_fine
.func_end ply_patt

