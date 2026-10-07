	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start m4aSoundVSync  @ 0x080f9c44
	ldr	r0, .Lf9ef0	@ SOUND_INFO_PTR
	ldr	r0, [r0]
	ldr	r2, .Lf9ef4	@ 0x68736d53
	ldr	r3, [r0]
	sub	r3, r2
	cmp	r3, #1
	bhi	.Lf9c84
	ldrb	r1, [r0, #4]
	sub	r1, #1
	strb	r1, [r0, #4]
	bgt	.Lf9c84
	ldrb	r1, [r0, #0xb]
	strb	r1, [r0, #4]
	ldr	r2, =REG_DMA1SAD
	ldr	r1, [r2, #8]
	lsl	r1, #7
	bcc	.Lf9c6a
	ldr	r1, =0x84400004
	str	r1, [r2, #8]
.Lf9c6a:
	ldr	r1, [r2, #0x14]
	lsl	r1, #7
	bcc	.Lf9c74
	ldr	r1, =0x84400004
	str	r1, [r2, #0x14]
.Lf9c74:
	mov	r1, #4
	lsl	r1, #8
	strh	r1, [r2, #0xa]
	strh	r1, [r2, #0x16]
	mov	r1, #0xb6
	lsl	r1, #8
	strh	r1, [r2, #0xa]
	strh	r1, [r2, #0x16]
.Lf9c84:
	bx	lr
.func_end m4aSoundVSync

