	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8012d70
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
	bl	_Func_8185008
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

.thumb_func_start Func_8012de8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e60
	mov	r7, r1
	mov	r5, r0
	mov	r0, r7
	ldr	r6, [r3]
	bl	_Func_8185008
	mov	r3, #3
	and	r3, r5
	lsl	r3, #2
	add	r3, #0x28
	mov	r8, r3
	mov	r5, #9
.L12e08:
	mov	r3, r8
	ldr	r0, [r6, r3]
	sub	r5, #1
	strh	r7, [r0]
	bl	Func_800b868
	add	r6, #0x38
	cmp	r5, #0
	bge	.L12e08
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8012de8

.thumb_func_start Func_8012e28
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_3001e60
	ldr	r1, [r2]
	ldr	r3, [r1, #0x28]
	ldrb	r0, [r3, #4]
	ldr	r3, =.L13584
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	sub	sp, #0xc
	mov	r8, r1
	mov	r6, #0
	str	r3, [sp, #4]
	str	r4, [sp, #8]
	ldr	r1, [r2, #0x14]
	cmp	r0, #6
	beq	.L12e8c
	cmp	r0, #6
	bhi	.L12e6c
	cmp	r0, #4
	beq	.L12e8c
	cmp	r0, #4
	bhi	.L12e82
	mov	r5, #0
	ldr	r3, =0x2aaa
	mov	r4, #6
	cmp	r0, #3
	beq	.L12ea6
	b	.L12e9c
.L12e6c:
	cmp	r0, #0x14
	beq	.L12e94
	cmp	r0, #0x14
	bhi	.L12e7a
	cmp	r0, #8
	beq	.L12e82
	b	.L12e9c
.L12e7a:
	cmp	r0, #0x2c
	beq	.L12e82
	cmp	r0, #0x58
	bne	.L12e9c
.L12e82:
	mov	r3, #0x80
	mov	r5, #0
	lsl	r3, #6
	mov	r4, #8
	b	.L12ea6
.L12e8c:
	mov	r5, #0
	ldr	r3, =0x1999
	mov	r4, #0xa
	b	.L12ea6
.L12e94:
	mov	r5, #0
	mov	r3, #0
	ldr	r6, =0xffff8000
	b	.L12ea4
.L12e9c:
	mov	r5, #0x80
	mov	r3, #0x80
	lsl	r5, #6
	lsl	r3, #7
.L12ea4:
	mov	r4, #4
.L12ea6:
	mov	r7, #0
	cmp	r7, r4
	bcs	.L12efa
	lsl	r3, #16
	mov	r2, #4
	mov	r9, r3
	lsl	r3, r6, #16
	add	r2, sp
	lsr	r3, #16
	mov	r11, r2
	mov	r10, r3
	mov	r6, r1
.L12ebe:
	lsl	r5, #16
	lsr	r5, #16
	mov	r3, r5
	mov	r0, r8
	mov	r1, r6
	mov	r2, r11
	str	r4, [sp]
	bl	Func_800b168
	mov	r3, #0x38
	mov	r1, r9
	add	r8, r3
	lsr	r3, r1, #16
	add	r5, r3
	mov	r3, #1
	lsl	r5, #16
	and	r3, r7
	asr	r5, #16
	ldr	r4, [sp]
	cmp	r3, #0
	beq	.L12ef2
	lsl	r3, r5, #16
	lsr	r3, #16
	add	r3, r10
	lsl	r3, #16
	asr	r5, r3, #16
.L12ef2:
	add	r7, #1
	add	r6, #0x10
	cmp	r7, r4
	bcc	.L12ebe
.L12efa:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8012e28

	.section .rodata
	.global .L1353c

.L1353c:
	.incrom 0x1353c, 0x13584
.L13584:
	.incrom 0x13584, 0x1358c
