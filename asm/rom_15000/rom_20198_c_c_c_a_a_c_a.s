	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8021620  @ 0x08021620
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r5, r0
	mov	r9, r1
	mov	r6, r2
	mov	r10, r3
	bl	AllocSpriteSlot
	mov	r7, r0
	mov	r0, #0
	cmp	r7, #0x5f
	bgt	.L216a0
	mov	r0, r5
	mov	r1, r7
	bl	Func_80215e0
	ldr	r2, =0x80004000
	mov	r3, r10
	mov	r11, r2
	str	r3, [sp]
	mov	r1, r11
	mov	r2, r9
	mov	r3, r6
	mov	r0, r7
	bl	Func_801eadc
	mov	r5, #0xfd
	mov	r2, r10
	mov	r3, r6
	strb	r5, [r0, #0xf]
	mov	r8, r0
	add	r3, #0x20
	str	r2, [sp]
	mov	r1, r11
	mov	r2, r9
	mov	r0, r7
	bl	Func_801eadc
	ldrh	r1, [r0, #0x18]
	lsl	r2, r1, #22
	ldr	r3, .L21694	@ 0x3ff
	lsr	r2, #22
	add	r2, #8
	and	r2, r3
	ldr	r3, =0xfffffc00
	and	r3, r1
	orr	r3, r2
	strb	r5, [r0, #0xf]
	strh	r3, [r0, #0x18]
	mov	r0, r8
	b	.L216a0

	.align	2, 0
.L21694:
	.word	0x3ff
	.pool

.L216a0:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8021620

.thumb_func_start Func_80216b4  @ 0x080216b4
	push	{r5, lr}
	ldr	r4, =iwram_3001800
	ldr	r3, [r4]
	ldr	r5, =.L37226
	mov	r1, #7
	lsr	r3, #2
	and	r3, r1
	ldrb	r2, [r0, #8]
	ldrb	r3, [r5, r3]
	add	r2, r3
	ldr	r3, [r4]
	strb	r2, [r0, #0x14]
	lsr	r3, #2
	ldr	r0, [r0]
	and	r3, r1
	ldrb	r2, [r0, #8]
	ldrb	r3, [r5, r3]
	add	r2, r3
	strb	r2, [r0, #0x14]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80216b4

.thumb_func_start StartMenu_AddOption  @ 0x080216e8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r3, #0x80
	lsl	r3, #3
	mov	r10, r3
	mov	r6, r0
	mov	r7, r1
	mov	r0, #0xe
	mov	r1, r10
	mov	r8, r2
	bl	galloc_ewram
	mov	r5, r0
	ldr	r0, =_FILE_f1
	bl	GetFile
	mov	r2, r0
	cmp	r7, #0x5f
	bgt	.L2173e
	lsl	r3, r6, #1
	ldrh	r0, [r3, r2]
	mov	r1, r5
	add	r0, r2, r0
	bl	DecompressLZ1
	mov	r3, r8
	cmp	r3, #0
	beq	.L2172e
	mov	r1, #0xc0
	lsl	r1, #2
	mov	r0, r5
	bl	_Func_800f9cc
.L2172e:
	mov	r0, r7
	mov	r1, r10
	mov	r2, r5
	bl	UploadSpriteGFX
	mov	r0, #0xe
	bl	gfree
.L2173e:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end StartMenu_AddOption

