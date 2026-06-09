	.include "macros.inc"

.thumb_func_start Func_8092adc  @ 0x08092adc
	push	{r5, r6, lr}
	mov	r5, r1
	mov	r6, r2
	bl	GetFieldActor
	cmp	r0, #0
	beq	.L92afc
	mov	r3, r0
	add	r3, #0x64
	strh	r5, [r3]
	ldr	r1, =Data_9fc1c
	bl	_Actor_SetScript
	mov	r0, r6
	bl	CutsceneWait
.L92afc:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8092adc

.thumb_func_start Func_8092b08  @ 0x08092b08
	push	{r5, r6, lr}
	mov	r5, r1
	bl	GetFieldActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L92b4e
	mov	r3, r6
	add	r3, #0x54
	ldrb	r2, [r3]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #1
	bne	.L92b4e
	ldr	r1, [r6, #0x50]
	mov	r2, #0xd
	ldrb	r0, [r1, #9]
	mov	r3, #3
	neg	r2, r2
	and	r5, r3
	mov	r3, r2
	lsl	r4, r5, #2
	and	r3, r0
	orr	r3, r4
	strb	r3, [r1, #9]
	ldrb	r3, [r1, #0x15]
	and	r2, r3
	orr	r2, r4
	strb	r2, [r1, #0x15]
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
.L92b4e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8092b08

.thumb_func_start Func_8092b54  @ 0x08092b54
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r8, r0
	mov	r0, r1
	bl	MapActor_GetActor
	ldr	r0, [r0, #0x50]
	ldrb	r6, [r0, #0x1c]
	ldrh	r5, [r0, #8]
	mov	r0, r8
	bl	MapActor_GetActor
	ldr	r0, [r0, #0x50]
	ldr	r3, =0xfffffc00
	ldrh	r2, [r0, #8]
	lsl	r5, #22
	lsr	r5, #22
	and	r3, r2
	orr	r3, r5
	strb	r6, [r0, #0x1c]
	strh	r3, [r0, #8]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8092b54

