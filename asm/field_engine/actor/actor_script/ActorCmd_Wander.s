	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ActorCmd_Wander  @ 0x0800dd70
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r0, #4
	ldrsh	r2, [r6, r0]
	ldr	r3, [r6]
	lsl	r2, #2
	add	r3, r2
	add	r3, #4
	ldmia	r3!, {r2}
	sub	sp, #0x20
	str	r2, [sp, #4]
	ldmia	r3!, {r5}
	ldr	r3, [r3]
	mov	r11, r5
	cmp	r3, #0
	bge	.Ldda0
	ldr	r0, =0xffff
	add	r3, r0
.Ldda0:
	asr	r3, #16
	mov	r5, r3
	mul	r5, r3
	str	r3, [sp]
	mov	r2, #0
	str	r5, [sp]
	mov	r9, r2
.Lddae:
	mov	r0, #1
	add	r9, r0
	mov	r2, r9
	cmp	r2, #7
	ble	.Lddba
	b	.Ldebe
.Lddba:
	ldr	r3, [r6, #8]
	add	r7, sp, #0x14
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r7, #8]
	bl	Random
	ldr	r3, =Func_8000888
	mov	r1, r11
	.call_via r3
	ldr	r3, [sp, #4]
	add	r3, r0
	mov	r8, r3
	bl	Random
	mov	r5, r0
	bl	Random
	ldrh	r3, [r6, #6]
	lsr	r5, #2
	lsr	r0, #2
	add	r3, r5
	sub	r3, r0
	mov	r10, r3
	mov	r0, r8
	mov	r1, r10
	mov	r2, r7
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r7
	bl	Func_800d924
	cmp	r0, #0
	bne	.Lddae
	mov	r0, r6
	mov	r1, r7
	bl	TestCollision
	cmp	r0, #0
	bne	.Lddae
	mov	r5, #0x80
	ldr	r3, [r6, #8]
	lsl	r5, #12
	add	r8, r5
	add	r5, sp, #8
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, r8
	str	r3, [r5, #8]
	mov	r1, r10
	mov	r2, r5
	bl	vec3_translate
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	mov	r1, #0x80
	ldr	r3, [r6, #0x10]
	lsl	r1, #6
	add	r1, r10
	mov	r0, r8
	str	r3, [r5, #8]
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	TestCollision
	cmp	r0, #0
	bne	.Lddae
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r1, =0xffffe000
	ldr	r3, [r6, #0x10]
	add	r1, r10
	mov	r0, r8
	str	r3, [r5, #8]
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	TestCollision
	cmp	r0, #0
	bne	.Lddae
	ldr	r3, [r7]
	mov	r1, r3
	cmp	r3, #0
	bge	.Lde86
	ldr	r0, =0xffff
	add	r3, r0
.Lde86:
	mov	r2, r6
	add	r2, #0x64
	mov	r5, #0
	ldrsh	r2, [r2, r5]
	asr	r3, #16
	sub	r0, r3, r2
	ldr	r2, [r7, #8]
	mov	r4, r2
	cmp	r2, #0
	bge	.Lde9e
	ldr	r3, =0xffff
	add	r2, r3
.Lde9e:
	mov	r3, r6
	add	r3, #0x66
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	asr	r2, #16
	sub	r2, r3
	mov	r3, r0
	mul	r3, r0
	mov	r0, r2
	mul	r0, r2
	mov	r2, r0
	add	r3, r2
	ldr	r2, [sp]
	cmp	r3, r2
	ble	.Lded4
	b	.Lddae
.Ldebe:
	ldrh	r3, [r6, #6]
	mov	r5, #0x80
	lsl	r5, #8
	add	r3, r5
	mov	r2, r6
	strh	r3, [r6, #6]
	add	r2, #0x5e
	mov	r3, #1
	strh	r3, [r2]
	mov	r0, #0
	b	.Ldee6
.Lded4:
	mov	r0, r6
	mov	r3, r4
	ldr	r2, [r7, #4]
	bl	Actor_TravelTo
	ldrh	r3, [r6, #4]
	add	r3, #4
	strh	r3, [r6, #4]
	mov	r0, #1
.Ldee6:
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end ActorCmd_Wander
