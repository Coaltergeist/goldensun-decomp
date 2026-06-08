	.include "macros.inc"

.thumb_func_start Func_800d924
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e64
	ldr	r5, [r3]
	mov	r6, r5
	sub	sp, #4
	mov	r7, r0
	mov	r8, r1
	mov	r4, #0
	add	r6, #0x59
.Ld93a:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Ld96e
	ldrb	r2, [r6]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Ld96e
	cmp	r5, r7
	beq	.Ld96e
	ldrh	r1, [r5, #0x20]
	ldrh	r3, [r7, #0x20]
	mov	r0, r5
	add	r0, #8
	sub	r1, #2
	sub	r3, #2
	mov	r2, r8
	str	r4, [sp]
	bl	Func_800eba0
	ldr	r4, [sp]
	cmp	r0, #0
	blt	.Ld96e
	mov	r0, #1
	neg	r0, r0
	b	.Ld97a
.Ld96e:
	add	r4, #1
	add	r6, #0x70
	add	r5, #0x70
	cmp	r4, #0x3f
	ble	.Ld93a
	mov	r0, #0
.Ld97a:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_800d924

.thumb_func_start Func_800d98c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e64
	ldr	r5, [r3]
	mov	r6, r5
	sub	sp, #4
	mov	r7, r0
	mov	r8, r1
	mov	r4, #0
	add	r6, #0x59
.Ld9a2:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Ld9d4
	ldrb	r2, [r6]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Ld9d4
	cmp	r5, r7
	beq	.Ld9d4
	ldrh	r1, [r5, #0x20]
	ldrh	r3, [r7, #0x20]
	mov	r0, r5
	add	r0, #8
	sub	r1, #2
	sub	r3, #2
	mov	r2, r8
	str	r4, [sp]
	bl	Func_800eba0
	ldr	r4, [sp]
	cmp	r0, #0
	blt	.Ld9d4
	mov	r0, r5
	b	.Ld9e0
.Ld9d4:
	add	r4, #1
	add	r6, #0x70
	add	r5, #0x70
	cmp	r4, #0x3f
	ble	.Ld9a2
	mov	r0, #0
.Ld9e0:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_800d98c

.thumb_func_start ActorCmd_SetPos
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #4
	ldrsh	r2, [r5, r3]
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	add	r3, #4
	ldmia	r3!, {r1}
	ldmia	r3!, {r2}
	ldr	r3, [r3]
	bl	Func_800d130
	ldrh	r3, [r5, #4]
	add	r3, #4
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end ActorCmd_SetPos

.thumb_func_start ActorCmd_TravelTo
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #4
	ldrsh	r2, [r5, r3]
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	add	r3, #4
	ldmia	r3!, {r1}
	ldmia	r3!, {r2}
	ldr	r3, [r3]
	bl	Actor_TravelTo
	ldrh	r3, [r5, #4]
	add	r3, #4
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end ActorCmd_TravelTo

.thumb_func_start ActorCmd_Travel
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #4
	ldrsh	r2, [r5, r3]
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	add	r3, #4
	ldmia	r3!, {r2}
	ldr	r1, [r5, #8]
	ldmia	r3!, {r0}
	add	r1, r2
	ldr	r4, [r3]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	add	r2, r0
	add	r3, r4
	mov	r0, r5
	bl	Actor_TravelTo
	ldrh	r3, [r5, #4]
	add	r3, #4
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end ActorCmd_Travel

.thumb_func_start ActorCmd_FaceTarget
	push	{r5, lr}
	mov	r5, r0
	ldr	r2, [r5, #0x68]
	ldr	r3, [r5, #0x10]
	ldr	r0, [r2, #0x10]
	ldr	r1, [r2, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	atan2
	ldrh	r3, [r5, #4]
	add	r3, #1
	strh	r0, [r5, #6]
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end ActorCmd_FaceTarget

