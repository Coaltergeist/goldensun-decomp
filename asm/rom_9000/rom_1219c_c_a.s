	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8012d70  @ 0x08012d70
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e60
	ldr	r6, [r3]
	mov	r3, #3
	and	r3, r0
	lsl	r3, #2
	add	r3, #0x28
	sub	sp, #8
	mov	r7, #0
	mov	r8, r3
	mov	r4, #0
.L12d8a:
	mov	r3, r8
	ldr	r5, [r6, r3]
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	beq	.L12dd0
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	str	r1, [sp, #4]
	str	r4, [sp]
	bl	_GetSpriteInfo
	ldrb	r3, [r0, #5]
	ldr	r1, [sp, #4]
	ldr	r4, [sp]
	cmp	r1, r3
	bge	.L12dc6
	ldrb	r3, [r0, #4]
	ldr	r2, [r5, #0xc]
	strb	r3, [r5, #4]
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	str	r3, [r5, #0x10]
	lsl	r3, r7, #4
	strh	r3, [r5, #2]
	mov	r3, #0x10
	strb	r3, [r5, #0x15]
	mov	r3, #0xff
	strb	r4, [r5, #0x14]
	strb	r4, [r5, #0x17]
	strb	r3, [r5, #0x16]
.L12dc6:
	ldrb	r3, [r0, #7]
	mov	r2, r6
	add	r2, #0x23
	strb	r3, [r2]
	strh	r4, [r6, #0x1e]
.L12dd0:
	add	r7, #1
	add	r6, #0x38
	cmp	r7, #9
	ble	.L12d8a
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8012d70

