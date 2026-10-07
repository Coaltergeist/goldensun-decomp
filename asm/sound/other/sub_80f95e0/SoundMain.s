	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SoundMain  @ 0x080f95f0
	ldr	r0, .Lf965c	@ SOUND_INFO_PTR
	ldr	r0, [r0]
	ldr	r2, .Lf9660	@ 0x68736d53
	ldr	r3, [r0]
	cmp	r2, r3
	beq	.Lf95fe
	bx	lr
.Lf95fe:
	add	r3, #1
	str	r3, [r0]
	push	{r4, r5, r6, r7, lr}
	mov	r1, r8
	mov	r2, r9
	mov	r3, r10
	mov	r4, r11
	push	{r0, r1, r2, r3, r4}
	sub	sp, #0x18
	ldrb	r1, [r0, #0xc]
	cmp	r1, #0
	beq	.Lf9622
	ldr	r2, .Lf9668	@ REG_VCOUNT
	ldrb	r2, [r2]
	cmp	r2, #0xa0
	bcs	.Lf9620
	add	r2, #0xe4
.Lf9620:
	add	r1, r2
.Lf9622:
	str	r1, [sp, #0x14]
	ldr	r3, [r0, #0x20]
	cmp	r3, #0
	beq	.Lf9632
	ldr	r0, [r0, #0x24]
	bl	.Lf9a12
	ldr	r0, [sp, #0x18]
.Lf9632:
	ldr	r3, [r0, #0x28]
	bl	.Lf9a12
	ldr	r0, [sp, #0x18]
	ldr	r3, [r0, #0x10]
	mov	r8, r3
	ldr	r5, .Lf966c	@ 0x350
	add	r5, r0
	ldrb	r4, [r0, #4]
	sub	r7, r4, #1
	bls	.Lf9652
	ldrb	r1, [r0, #0xb]
	sub	r1, r7
	mov	r2, r8
	mul	r2, r1
	add	r5, r2
.Lf9652:
	str	r5, [sp, #8]
	ldr	r6, .Lf9670	@ 0x630
	ldr	r3, .Lf9664	@ iwram_3007001
	bx	r3

	.align	2, 0
.Lf965c:
	.word	SOUND_INFO_PTR
.Lf9660:
	.word	0x68736d53
.Lf9664:
	.word	iwram_3007001
.Lf9668:
	.word	REG_VCOUNT
.Lf966c:
	.word	0x350
.Lf9670:
	.word	0x630
.func_end SoundMain

