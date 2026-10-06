	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ActorCmd_Unk9  @ 0x0800df04
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
	ldmia	r3!, {r1}
	sub	sp, #0x34
	str	r1, [sp, #0x18]
	ldmia	r3!, {r2}
	str	r2, [sp, #0x14]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.Ldf34
	ldr	r4, =0xffff
	add	r3, r4
.Ldf34:
	asr	r3, #16
	mov	r1, r3
	mul	r1, r3
	mov	r2, #0
	mov	r0, #6
	ldrsh	r5, [r6, r0]
	mov	r10, r2
	ldr	r2, [r6, #8]
	str	r3, [sp, #0x10]
	str	r5, [sp, #0xc]
	str	r1, [sp, #0x10]
	cmp	r2, #0
	bge	.Ldf52
	ldr	r3, =0xffff
	add	r2, r3
.Ldf52:
	mov	r4, r6
	add	r4, #0x64
	str	r4, [sp, #8]
	mov	r5, #0
	ldrsh	r3, [r4, r5]
	asr	r2, #16
	sub	r2, r3
	mov	r11, r2
	ldr	r2, [r6, #0x10]
	cmp	r2, #0
	bge	.Ldf6c
	ldr	r0, =0xffff
	add	r2, r0
.Ldf6c:
	mov	r1, r6
	add	r1, #0x66
	str	r1, [sp, #4]
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	asr	r2, #16
	sub	r2, r3
	mov	r9, r2
	mov	r5, r11
	mov	r0, r9
	mov	r3, r11
	mul	r3, r5
	mov	r2, r9
	mul	r2, r0
	ldr	r1, [sp, #0x10]
	add	r3, r2
	cmp	r3, r1
	ble	.Ldf92
	b	.Le146
.Ldf92:
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	cmp	r3, #7
	ble	.Ldf9e
	b	.Le146
.Ldf9e:
	bl	Random
	ldr	r3, =Func_8000888
	ldr	r1, [sp, #0x14]
	.call_via r3
	ldr	r4, [sp, #0x18]
	add	r4, r0
	mov	r8, r4
	bl	Random
	mov	r5, r0
	bl	Random
	ldr	r3, [r6, #8]
	add	r7, sp, #0x28
	ldr	r1, [sp, #0xc]
	str	r3, [r7]
	lsl	r2, r1, #16
	ldr	r3, [r6, #0xc]
	lsr	r5, #2
	lsr	r2, #16
	lsr	r0, #2
	str	r3, [r7, #4]
	add	r2, r5
	sub	r2, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, #16
	lsr	r4, r2, #16
	mov	r0, #0x80
	mov	r1, r4
	str	r3, [r7, #8]
	lsl	r0, #12
	mov	r2, r7
	str	r4, [sp]
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r7
	bl	Func_800d924
	ldr	r4, [sp]
	cmp	r0, #0
	bne	.Ldf92
	ldr	r3, [r6, #8]
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	mov	r1, r4
	str	r3, [r7, #8]
	mov	r0, r8
	mov	r2, r7
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r7
	bl	TestCollision
	ldr	r4, [sp]
	cmp	r0, #0
	bne	.Ldf92
	ldr	r3, [r6, #8]
	add	r5, sp, #0x1c
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	mov	r2, #0x80
	ldr	r3, [r6, #0x10]
	lsl	r2, #12
	add	r8, r2
	mov	r1, r4
	str	r3, [r5, #8]
	mov	r0, r8
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	TestCollision
	ldr	r4, [sp]
	cmp	r0, #0
	bne	.Ldf92
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	mov	r3, #0x80
	lsl	r3, #6
	add	r1, r4, r3
	mov	r0, r8
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	TestCollision
	ldr	r4, [sp]
	cmp	r0, #0
	bne	.Ldf92
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r0, =0xffffe000
	ldr	r3, [r6, #0x10]
	add	r1, r4, r0
	str	r3, [r5, #8]
	mov	r0, r8
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	TestCollision
	ldr	r4, [sp]
	cmp	r0, #0
	beq	.Le098
	b	.Ldf92
.Le098:
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	mov	r2, #0x80
	ldr	r3, [r6, #0x10]
	lsl	r2, #7
	add	r1, r4, r2
	str	r3, [r5, #8]
	mov	r0, r8
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	TestCollision
	ldr	r4, [sp]
	cmp	r0, #0
	beq	.Le0c2
	b	.Ldf92
.Le0c2:
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	ldr	r3, =0xffffc000
	mov	r0, r8
	add	r1, r4, r3
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	TestCollision
	cmp	r0, #0
	beq	.Le0e8
	b	.Ldf92
.Le0e8:
	ldr	r1, [r7]
	mov	r2, r1
	cmp	r1, #0
	bge	.Le0f4
	ldr	r4, =0xffff
	add	r2, r1, r4
.Le0f4:
	ldr	r0, [sp, #8]
	mov	r5, #0
	ldrsh	r3, [r0, r5]
	asr	r2, #16
	ldr	r4, [r7, #8]
	sub	r2, r3
	mov	r11, r2
	mov	r2, r4
	cmp	r4, #0
	bge	.Le10c
	ldr	r3, =0xffff
	add	r2, r4, r3
.Le10c:
	ldr	r0, [sp, #4]
	mov	r5, #0
	ldrsh	r3, [r0, r5]
	asr	r2, #16
	sub	r2, r3
	mov	r9, r2
	mov	r5, r9
	mov	r2, r11
	mov	r3, r11
	mul	r3, r2
	mov	r2, r9
	mul	r2, r5
	ldr	r0, [sp, #0x10]
	add	r3, r2
	cmp	r3, r0
	ble	.Le12e
	b	.Ldf92
.Le12e:
	mov	r0, r6
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r2, #2
	orr	r2, r3
	strb	r2, [r0]
	ldr	r2, [r7, #4]
	mov	r0, r6
	mov	r3, r4
	bl	Actor_TravelTo
	b	.Le1f6
.Le146:
	mov	r1, #0
	mov	r10, r1
	mov	r0, r9
	mov	r1, r11
	bl	atan2
	mov	r2, #0x80
	lsl	r2, #8
	add	r0, r2
	lsl	r0, #16
	asr	r0, #16
	str	r0, [sp, #0xc]
.Le15e:
	mov	r3, #1
	add	r10, r3
	mov	r4, r10
	cmp	r4, #7
	bgt	.Le1f6
	bl	Random
	ldr	r3, =Func_8000888
	ldr	r1, [sp, #0x14]
	.call_via r3
	ldr	r5, [sp, #0x18]
	add	r5, r0
	bl	Random
	mov	r8, r5
	mov	r5, r0
	bl	Random
	ldr	r1, [sp, #0xc]
	lsl	r2, r1, #16
	ldr	r3, [r6, #8]
	lsr	r5, #2
	lsr	r2, #16
	add	r2, r5
	add	r5, sp, #0x28
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	lsr	r0, #2
	str	r3, [r5, #4]
	sub	r2, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, #16
	lsr	r7, r2, #16
	mov	r0, #0x80
	lsl	r0, #12
	mov	r1, r7
	str	r3, [r5, #8]
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	Func_800d924
	cmp	r0, #0
	bne	.Le15e
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, r8
	mov	r1, r7
	str	r3, [r5, #8]
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	TestCollision
	cmp	r0, #0
	bne	.Le15e
	mov	r1, r6
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r1]
	mov	r0, r6
	ldr	r1, [r5]
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	bl	Actor_TravelTo
.Le1f6:
	ldrh	r3, [r6, #4]
	add	r3, #4
	mov	r0, #1
	strh	r3, [r6, #4]
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end ActorCmd_Unk9
