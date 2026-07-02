	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8021a18  @ 0x08021a18
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r2, #0
	mov	r9, r0
	mov	r10, r2
	mov	r8, r2
	mov	r11, r2
.L21a30:
	mov	r3, #0
	mov	r14, r3
	mov	r3, r11
	add	r3, r10
	lsl	r7, r3, #6
.L21a3a:
	mov	r2, r9
	add	r6, r2, r7
	mov	r2, r14
	lsl	r3, r2, #5
	ldr	r2, =0x6000600
	add	r5, r3, r2
	mov	r3, #0
	mov	r12, r3
.L21a4a:
	ldrh	r1, [r5]
	mov	r0, #0
	add	r5, #2
	mov	r4, #0
.L21a52:
	mov	r3, r1
	mov	r2, #0xf
	and	r3, r2
	add	r3, r8
	lsl	r2, r3, #1
	ldr	r3, =.L372c0
	ldrh	r2, [r3, r2]
	lsl	r3, r4, #2
	lsl	r2, r3
	add	r4, #1
	lsr	r1, #4
	orr	r0, r2
	cmp	r4, #3
	ble	.L21a52
	mov	r2, #1
	add	r12, r2
	mov	r3, r12
	strh	r0, [r6]
	add	r6, #2
	cmp	r3, #0xf
	ble	.L21a4a
	add	r14, r2
	mov	r2, r14
	add	r7, #0x20
	cmp	r2, #9
	ble	.L21a3a
	mov	r3, #0x10
	add	r8, r3
	mov	r3, #1
	mov	r2, #4
	add	r10, r3
	add	r11, r2
	mov	r2, r10
	cmp	r2, #1
	ble	.L21a30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8021a18

.thumb_func_start Func_8021ab0  @ 0x08021ab0
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r8, r1
	mov	r1, #0xc1
	mov	r6, r0
	lsl	r1, #3
	mov	r0, #0x11
	bl	galloc_ewram
	mov	r5, r0
	mov	r0, r6
	bl	DecompressStatusIcon
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r1, r5
	mov	r0, r8
	bl	UploadSprite2
	mov	r5, r0
	mov	r0, #0x11
	bl	gfree
	mov	r0, r5
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8021ab0

.thumb_func_start Func_8021af0  @ 0x08021af0
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r8, r1
	mov	r1, #0xc1
	mov	r6, r0
	lsl	r1, #3
	mov	r0, #0x11
	bl	galloc_ewram
	mov	r1, #0x1a
	mov	r5, r0
	mov	r0, r6
	bl	DrawInventoryIcon
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r1, r5
	mov	r0, r8
	bl	UploadSprite2
	mov	r5, r0
	mov	r0, #0x11
	bl	gfree
	mov	r0, r5
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8021af0

.thumb_func_start Func_8021b30  @ 0x08021b30
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r1
	mov	r1, #0xc1
	mov	r8, r0
	lsl	r1, #3
	mov	r0, #0x11
	sub	sp, #0xc
	bl	galloc_ewram
	mov	r1, #1
	add	r2, sp, #8
	add	r3, sp, #4
	str	r1, [sp]
	mov	r5, r0
	mov	r1, #0
	mov	r0, r8
	str	r6, [sp, #8]
	bl	LoadMoveIcon
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r1, r5
	mov	r0, r6
	bl	UploadSprite2
	mov	r5, r0
	mov	r0, #0x11
	bl	gfree
	mov	r0, r5
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8021b30

.thumb_func_start Func_8021b80  @ 0x08021b80
	push	{r5, lr}
	sub	sp, #0x10
	mov	r5, r0
	str	r1, [sp, #0xc]
	cmp	r5, #7
	bls	.L21b8e
	mov	r5, #0
.L21b8e:
	mov	r0, #0x20
	bl	_GetFlag
	cmp	r0, #0
	beq	.L21ba8
	cmp	r5, #0
	beq	.L21ba2
	cmp	r5, #1
	beq	.L21ba6
	b	.L21ba8
.L21ba2:
	mov	r5, #0x38
	b	.L21ba8
.L21ba6:
	mov	r5, #0x39
.L21ba8:
	mov	r1, #0xe
	str	r1, [sp]
	mov	r1, #1
	add	r2, sp, #0xc
	add	r3, sp, #8
	str	r1, [sp, #4]
	mov	r0, r5
	mov	r1, #0
	bl	LoadPortrait
	ldr	r0, [sp, #8]
	add	sp, #0x10
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_8021b80

