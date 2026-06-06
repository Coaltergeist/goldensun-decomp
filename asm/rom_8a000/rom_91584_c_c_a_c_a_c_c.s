	.include "macros.inc"

.thumb_func_start Func_8091fc0
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	ldr	r3, =ewram_2000240
	mov	r12, r3
	mov	r3, #0xe0
	lsl	r3, #1
	add	r3, r12
	strh	r0, [r3]
	mov	r3, #0xe1
	lsl	r3, #1
	add	r3, r12
	strh	r1, [r3]
	mov	r3, #0xb8
	lsl	r3, #1
	add	r2, r3
	ldr	r3, =0x3e7
	strh	r3, [r2]
	bx	lr
.func_end Func_8091fc0

.thumb_func_start Func_8091ff0
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =0xcc8
	ldr	r3, [r3]
	mov	r5, r0
	add	r3, r2
	strh	r5, [r3]
	mov	r2, #1
	lsl	r3, r5, #16
	asr	r3, #16
	neg	r2, r2
	cmp	r3, r2
	bne	.L9200c
	ldr	r5, =0x121
.L9200c:
	mov	r0, #0x95
	lsl	r0, #1
	bl	_Func_80f9080
	mov	r0, r5
	bl	_Func_80f9080
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8091ff0

.thumb_func_start Func_809202c
	push	{lr}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =0xcc8
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L92046
	bl	_Func_80f9080
.L92046:
	pop	{r0}
	bx	r0
.func_end Func_809202c

.thumb_func_start Func_8092054
	push	{lr}
	bl	Func_808ba1c
	cmp	r0, #0
	bne	.L92060
	mov	r0, #0
.L92060:
	pop	{r1}
	bx	r1
.func_end Func_8092054

.thumb_func_start Func_8092064
	push	{r5, r6, lr}
	mov	r6, r1
	mov	r5, r2
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L92076
	str	r5, [r0, #0x34]
	str	r6, [r0, #0x30]
.L92076:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8092064

.thumb_func_start Func_809207c
	push	{r5, lr}
	mov	r5, r1
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L9209a
	mov	r1, r0
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	mov	r1, r5
	bl	Func_8093a6c
.L9209a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_809207c

.thumb_func_start Func_80920a0
	push	{lr}
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L920ba
	mov	r1, r0
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	bl	_Func_800c4ac
.L920ba:
	pop	{r0}
	bx	r0
.func_end Func_80920a0

.thumb_func_start Func_80920c0
	push	{r5, r6, lr}
	mov	r6, r1
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L920de
	mov	r0, r6
	bl	Func_8092054
	ldr	r1, =Data_9ff40
	str	r0, [r5, #0x68]
	mov	r0, r5
	bl	Func_8093a6c
.L920de:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80920c0

.thumb_func_start Func_80920e8
	push	{lr}
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L920f6
	bl	_Func_800c4ec
.L920f6:
	pop	{r0}
	bx	r0
.func_end Func_80920e8

.thumb_func_start Func_80920fc
	push	{r5, r6, lr}
	mov	r6, r1
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L92122
	mov	r1, r5
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	mov	r1, r6
	bl	Func_8093a6c
	mov	r0, r5
	bl	_Func_800c4ec
.L92122:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80920fc

