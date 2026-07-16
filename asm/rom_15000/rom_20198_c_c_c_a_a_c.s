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

.thumb_func_start Func_8021750  @ 0x08021750
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	mov	r10, r3
	bl	AllocSpriteSlot
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0x60
	beq	.L21796
	mov	r0, r6
	mov	r1, r5
	mov	r2, r7
	bl	StartMenu_AddOption
	ldr	r3, [sp, #0x1c]
	mov	r1, #0x80
	str	r3, [sp]
	mov	r2, r8
	mov	r3, r10
	lsl	r1, #24
	mov	r0, r5
	bl	Func_801eadc
	ldrb	r3, [r0, #0x15]
	mov	r2, #0x20
	orr	r3, r2
	strb	r3, [r0, #0x15]
	mov	r3, #0xfb
	strb	r3, [r0, #0xf]
.L21796:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8021750

.thumb_func_start Func_80217a4  @ 0x080217a4
	push	{r5, lr}
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #7
	lsr	r3, #1
	ldr	r1, =.L37230
	and	r3, r2
	lsl	r3, #2
	ldr	r1, [r1, r3]
	sub	sp, #8
	mov	r5, r0
	cmp	r1, #0
	bge	.L217c0
	add	r1, #0xff
.L217c0:
	asr	r1, #8
	cmp	r5, #0
	beq	.L21840
	ldr	r3, [sp]
	ldr	r4, =0xffff0000
	lsl	r1, #16
	ldr	r2, =0xffff
	lsr	r1, #16
	and	r3, r4
	orr	r3, r1
	and	r3, r2
	lsl	r1, #16
	orr	r3, r1
	str	r3, [sp]
	mov	r0, sp
	ldr	r3, [r0, #4]
	and	r3, r4
	str	r3, [r0, #4]
	bl	Func_8003d28
	mov	r3, #0x1f
	ldrb	r2, [r5, #0x17]
	and	r0, r3
	mov	r3, #0x3f
	neg	r3, r3
	and	r3, r2
	lsl	r0, #1
	orr	r3, r0
	strb	r3, [r5, #0x17]
	ldrb	r3, [r5, #0x15]
	mov	r2, #3
	orr	r3, r2
	strb	r3, [r5, #0x15]
	ldrh	r2, [r5, #6]
	ldr	r3, =0xfff0
	add	r2, r3
	ldr	r3, .L21824	@ 0x1ff
	ldrh	r1, [r5, #0x16]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #0x16]
	ldrb	r3, [r5, #8]
	add	r3, #0xf0
	strb	r3, [r5, #0x14]
	mov	r3, #0xfc
	strb	r3, [r5, #0xf]
	b	.L21840

	.align	2, 0
.L21824:
	.word	0x1ff
	.pool

.L21840:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80217a4

.thumb_func_start Func_8021848  @ 0x08021848
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r2, =.L37250
	ldr	r3, =Func_80008d8
	mov	r7, #0
	mov	r8, r2
	mov	r10, r3
.L2185a:
	lsl	r3, r7, #1
	add	r3, r7
	ldr	r2, =0x6006280
	lsl	r3, #7
	mov	r6, #0
	add	r5, r3, r2
.L21866:
	mov	r0, r5
	mov	r1, #0x40
	ldr	r2, =0x44444444
	bl	_call_via_r10
	mov	r4, #1
	add	r0, r5, #4
.L21874:
	mov	r1, r6
	cmp	r7, #1
	bne	.L2187e
	cmp	r4, #1
	ble	.L218a8
.L2187e:
	cmp	r7, #0
	bne	.L21890
	sub	r3, r4, #2
	cmp	r6, r3
	ble	.L21890
	mov	r1, r3
	cmp	r1, #0
	bge	.L21890
	mov	r1, #0
.L21890:
	lsl	r1, #3
	mov	r3, r8
	ldr	r3, [r3, r1]
	ldr	r2, [r0]
	eor	r2, r3
	str	r2, [r0]
	add	r1, #4
	mov	r3, r8
	ldr	r2, [r0, #0x20]
	ldr	r1, [r3, r1]
	eor	r2, r1
	str	r2, [r0, #0x20]
.L218a8:
	add	r4, #1
	add	r0, #4
	cmp	r4, #7
	ble	.L21874
	add	r6, #1
	add	r5, #0x40
	cmp	r6, #5
	ble	.L21866
	add	r7, #1
	cmp	r7, #1
	ble	.L2185a
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8021848

.thumb_func_start Func_80218dc  @ 0x080218dc
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	lsl	r5, r3, #1
	ldr	r3, =0xf315
	mov	r8, r1
	mov	r1, #0x80
	mov	r9, r2
	add	r3, r5
	lsl	r1, #3
	sub	sp, #4
	mov	r6, #0
	mov	r11, r3
	orr	r1, r3
	mov	r2, r8
	mov	r3, r9
	str	r6, [sp]
	mov	r10, r0
	bl	Func_8019000
	ldr	r3, =0xf314
	mov	r2, r8
	add	r5, r3
	mov	r0, r10
	mov	r1, r5
	mov	r3, r9
	add	r2, #1
	str	r6, [sp]
	bl	Func_8019000
	mov	r3, #2
	add	r8, r3
	mov	r0, r10
	mov	r1, r11
	mov	r2, r8
	mov	r3, r9
	str	r6, [sp]
	bl	Func_8019000
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80218dc

.thumb_func_start Func_8021950  @ 0x08021950
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r3
	sub	sp, #8
	neg	r3, r6
	str	r0, [sp, #4]
	mov	r7, r2
	mov	r0, #0
	lsl	r3, #2
	lsl	r2, r6, #2
	str	r1, [sp]
	mov	r12, r0
	mov	r8, r3
	mov	r14, r2
.L2196e:
	ldr	r0, [sp]
	ldmia	r0!, {r4}
	mov	r3, r0
	str	r3, [sp]
	ldr	r0, [sp, #4]
	ldmia	r0!, {r1}
	mov	r3, r0
	mov	r2, #0
	str	r3, [sp, #4]
	cmp	r6, #0
	bge	.L2198a
	mov	r3, r8
	lsr	r4, r3
	b	.L2198e
.L2198a:
	mov	r0, r14
	lsl	r4, r0
.L2198e:
	ldr	r5, =0xfffffff
	mov	r0, #7
.L21992:
	lsl	r2, #4
	cmp	r4, r5
	bls	.L2199c
	lsr	r3, r4, #28
	b	.L2199e
.L2199c:
	lsr	r3, r1, #28
.L2199e:
	add	r2, r3
	sub	r0, #1
	lsl	r4, #4
	lsl	r1, #4
	cmp	r0, #0
	bge	.L21992
	stmia	r7!, {r2}
	mov	r2, #1
	add	r12, r2
	mov	r3, r12
	cmp	r3, #7
	ble	.L2196e
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8021950

