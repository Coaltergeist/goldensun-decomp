	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800c454
	push	{r5, r6, lr}
	mov	r6, r1
	ldr	r1, =.L13608
	mov	r5, r0
	bl	Func_800c2d8
	str	r6, [r5, #0x68]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_800c454

.thumb_func_start Func_800c46c
	push	{lr}
	ldr	r1, =.L13590
	bl	Func_800c2d8
	pop	{r0}
	bx	r0
.func_end Func_800c46c

.thumb_func_start Func_800c47c
	push	{lr}
	ldr	r1, =.L135a8
	bl	Func_800c2d8
	pop	{r0}
	bx	r0
.func_end Func_800c47c

.thumb_func_start Func_800c48c
	push	{lr}
	ldr	r1, =.L135c0
	bl	Func_800c2d8
	pop	{r0}
	bx	r0
.func_end Func_800c48c

.thumb_func_start Func_800c49c
	push	{lr}
	ldr	r1, =.L135d8
	bl	Func_800c2d8
	pop	{r0}
	bx	r0
.func_end Func_800c49c

.thumb_func_start Func_800c4ac
	push	{lr}
	ldr	r1, =.L13620
	bl	Func_800c2d8
	pop	{r0}
	bx	r0
.func_end Func_800c4ac

.thumb_func_start Func_800c4bc
	push	{r5, r6, lr}
	mov	r6, r1
	ldr	r1, =.L135f0
	mov	r5, r0
	bl	Func_800c2d8
	cmp	r6, #0
	beq	.Lc4e2
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	mov	r2, r5
	str	r3, [r5, #0x30]
	add	r2, #0x64
	mov	r3, #0
	str	r6, [r5, #0x68]
	strh	r3, [r2]
.Lc4e2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_800c4bc

