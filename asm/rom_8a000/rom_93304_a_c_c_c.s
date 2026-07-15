	.include "macros.inc"

.section .text.after_actor_behavior, "ax", %progbits

.thumb_func_start Func_8093af8  @ 0x08093af8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r3, #0x28
	mov	r9, r3
	ldr	r3, =iwram_3001e64
	mov	r2, #0
	mov	r10, r2
	ldr	r5, [r3]
	mov	r2, #0x3f
	mov	r7, r0
	mov	r11, r1
	mov	r8, r2
.L93b1a:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L93bb2
	cmp	r5, r7
	beq	.L93bb2
	mov	r3, r5
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L93bb2
	ldr	r1, [r5, #0xc]
	ldr	r3, [r7, #0xc]
	sub	r2, r1, r3
	cmp	r2, #0
	blt	.L93b40
	ldr	r3, =0x2fffff
	cmp	r2, r3
	ble	.L93b48
	b	.L93bb2
.L93b40:
	ldr	r2, =0x2fffff
	sub	r3, r1
	cmp	r3, r2
	bgt	.L93bb2
.L93b48:
	ldr	r2, [r5, #8]
	ldr	r3, [r7, #8]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L93b56
	ldr	r3, =0xffff
	add	r0, r3
.L93b56:
	ldr	r2, [r5, #0x10]
	ldr	r3, [r7, #0x10]
	sub	r2, r3
	asr	r0, #16
	cmp	r2, #0
	bge	.L93b66
	ldr	r3, =0xffff
	add	r2, r3
.L93b66:
	asr	r3, r2, #16
	mov	r2, r0
	mul	r2, r0
	mov	r0, r2
	mov	r2, r3
	mul	r2, r3
	mov	r3, r2
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	mov	r6, r0
	cmp	r6, r9
	bge	.L93bb2
	ldr	r3, [r7, #0x10]
	ldr	r0, [r5, #0x10]
	ldr	r1, [r5, #8]
	sub	r0, r3
	ldr	r3, [r7, #8]
	sub	r1, r3
	bl	atan2
	lsl	r0, #16
	lsr	r0, #16
	cmp	r6, #0x17
	ble	.L93bae
	ldrh	r3, [r7, #6]
	sub	r3, r0, r3
	lsl	r3, #16
	asr	r0, r3, #16
	ldr	r3, =0xffffd001
	cmp	r0, r3
	blt	.L93bb2
	ldr	r2, =0x2fff
	cmp	r0, r2
	bgt	.L93bb2
.L93bae:
	mov	r10, r5
	mov	r9, r6
.L93bb2:
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r2, r8
	add	r5, #0x70
	cmp	r2, #0
	bge	.L93b1a
	mov	r3, r10
	mov	r0, #0
	cmp	r3, #0
	beq	.L93bd8
	mov	r2, r10
	ldr	r3, [r2, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, r11
	bne	.L93bd8
	mov	r0, r10
.L93bd8:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8093af8

.thumb_func_start Func_8093c00  @ 0x08093c00
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #0x14
	bl	MapActor_GetActor
	mov	r3, #1
	neg	r3, r3
	str	r3, [sp, #4]
	mov	r6, r0
	ldrh	r3, [r6, #6]
	mov	r2, #0x80
	lsl	r2, #6
	add	r2, r3
	mov	r3, #0xc0
	lsl	r3, #8
	and	r2, r3
	mov	r3, #0x55
	add	r3, r6
	mov	r9, r2
	ldrb	r2, [r3]
	mov	r8, r3
	str	r2, [sp]
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	mov	r10, r3
	mov	r3, #1
	mov	r11, r3
	add	r7, sp, #8
.L93c4c:
	ldr	r3, [r6, #8]
	ldr	r5, =0xfff00000
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r5
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	and	r3, r5
	add	r3, r2
	mov	r0, #0x80
	lsl	r0, #13
	mov	r1, r9
	str	r3, [r7, #8]
	mov	r2, r7
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r7
	bl	_TestCollision
	cmp	r0, #1
	bne	.L93c84
	mov	r0, #1
	neg	r0, r0
	b	.L93e00
.L93c84:
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r5
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	and	r3, r5
	add	r3, r2
	mov	r0, #0x80
	lsl	r0, #14
	mov	r1, r9
	str	r3, [r7, #8]
	mov	r2, r7
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r7
	bl	_TestCollision
	cmp	r0, #0
	beq	.L93cb6
	b	.L93dfe
.L93cb6:
	mov	r3, r6
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L93cc8
	ldr	r3, [r6, #0x50]
	add	r3, #0x26
	ldrb	r3, [r3]
	mov	r11, r3
.L93cc8:
	bl	CutsceneStart
	mov	r1, #6
	mov	r0, r6
	bl	_Actor_SetAnim
	mov	r0, #6
	bl	WaitFrames
	mov	r0, #0x98
	bl	_PlaySound
	mov	r0, r6
	mov	r1, #7
	bl	_Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r6, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r6, #0x28]
	mov	r3, r8
	ldrb	r2, [r3]
	mov	r3, #0x7e
	and	r3, r2
	mov	r2, r8
	strb	r3, [r2]
	mov	r1, #0xfe
	mov	r3, r11
	and	r1, r3
	mov	r0, r6
	bl	_Actor_SetSpriteFlags
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	mov	r3, #0xa
	ldrsh	r2, [r7, r3]
	mov	r3, #2
	ldrsh	r1, [r7, r3]
	bl	Func_8092158
	mov	r0, r6
	mov	r1, #6
	bl	_Actor_SetAnim
	mov	r0, r6
	mov	r1, r11
	bl	_Actor_SetSpriteFlags
	mov	r0, r6
	mov	r1, #0xcf
	bl	Func_8093af8
	cmp	r0, #0
	bne	.L93d50
	mov	r0, r6
	mov	r1, #0xcd
	bl	Func_8093af8
	cmp	r0, #0
	beq	.L93da0
.L93d50:
	mov	r1, #7
	bl	_Actor_SetAnim
	ldr	r5, =0xffff0000
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r0, #2
	bl	WaitFrames
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r0, #0xa
	bl	WaitFrames
	mov	r5, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r5, #9
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r0, #4
	bl	WaitFrames
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	b	.L93da6
.L93da0:
	mov	r0, #6
	bl	WaitFrames
.L93da6:
	mov	r2, sp
	ldrb	r2, [r2]
	mov	r3, r8
	strb	r2, [r3]
	bl	CutsceneEnd
	mov	r3, r10
	cmp	r3, #0
	beq	.L93dd8
	mov	r3, #0xd8
	lsl	r3, #1
	add	r3, r10
	mov	r1, #0x80
	ldr	r4, =Func_8000888
	ldr	r0, [r3]
	lsl	r1, #14
	.call_via r4
	mov	r2, #0xda
	lsl	r2, #1
	add	r2, r10
	ldr	r3, [r2]
	add	r3, r0
	str	r3, [r2]
.L93dd8:
	mov	r3, r6
	add	r3, #0x22
	ldrb	r0, [r3]
	ldr	r1, [r7]
	ldr	r2, [r7, #8]
	bl	_Func_8012038
	cmp	r0, #0xf9
	bne	.L93dfa
	mov	r0, r6
	mov	r1, #1
	bl	_Actor_SetAnim
	mov	r0, #6
	bl	WaitFrames
	b	.L93c4c
.L93dfa:
	mov	r2, #0
	str	r2, [sp, #4]
.L93dfe:
	ldr	r0, [sp, #4]
.L93e00:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8093c00

.thumb_func_start Func_8093e28  @ 0x08093e28
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r0, =gState
	mov	r1, #0xfa
	mov	r8, r0
	lsl	r1, #1
	add	r1, r8
	ldr	r0, [r1]
	mov	r11, r1
	sub	sp, #0x18
	bl	MapActor_GetActor
	mov	r6, r0
	ldr	r3, =0xfff0
	mov	r2, #0xa
	ldrsh	r5, [r6, r2]
	mov	r1, #0x12
	ldrsh	r7, [r6, r1]
	and	r5, r3
	and	r7, r3
	mov	r0, #8
	mov	r2, #8
	add	r0, r5
	add	r2, r7
	mov	r10, r0
	mov	r9, r2
	bl	CutsceneStart
	mov	r3, #0xf9
	lsl	r3, #1
	add	r8, r3
	mov	r0, r8
	ldrb	r3, [r0]
	cmp	r3, #0
	bne	.L93f2e
	mov	r3, r10
	cmp	r3, #0
	bge	.L93e82
	mov	r3, r5
	add	r3, #0x17
.L93e82:
	asr	r2, r3, #4
	mov	r3, r9
	cmp	r3, #0
	bge	.L93e8e
	mov	r3, r7
	add	r3, #0x17
.L93e8e:
	asr	r3, #4
	lsl	r3, #7
	add	r3, r2, r3
	ldr	r1, =gBuffer
	ldr	r0, =ewram_2010200
	lsl	r3, #2
	add	r2, r3, r1
	add	r3, r0
	ldrb	r2, [r2, #2]
	ldrb	r3, [r3, #2]
	cmp	r2, r3
	bne	.L93f72
	ldr	r3, [r6, #8]
	mov	r0, sp
	str	r3, [r0]
	ldr	r1, =0xfff00000
	ldr	r3, [r6, #0xc]
	add	r3, r1
	str	r3, [r0, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r0, #8]
	bl	_Func_801219c
	mov	r7, r0
	cmp	r7, #0
	bne	.L93f72
	mov	r2, r11
	ldr	r0, [r2]
	mov	r1, r10
	mov	r2, r9
	bl	Func_8092158
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x30]
	mov	r1, #0xc0
	mov	r3, r11
	mov	r2, #0
	ldr	r0, [r3]
	lsl	r1, #8
	bl	Func_8092adc
	mov	r1, r11
	ldr	r0, [r1]
	bl	MapActor_WaitScript
	mov	r3, r6
	add	r3, #0x5a
	mov	r5, #1
	strb	r5, [r3]
	sub	r3, #5
	strb	r7, [r3]
	mov	r0, r6
	mov	r1, #0
	bl	_Actor_SetSpriteFlags
	mov	r0, r6
	mov	r1, #0xd
	bl	_Actor_SetAnim
	mov	r2, r10
	lsl	r1, r2, #16
	ldr	r3, =0xfff00000
	ldr	r2, [r6, #0xc]
	mov	r0, r9
	add	r2, r3
	lsl	r3, r0, #16
	mov	r0, #0x80
	lsl	r0, #13
	add	r3, r0
	mov	r0, r6
	bl	_Actor_TravelTo
	mov	r1, r11
	ldr	r0, [r1]
	bl	MapActor_WaitMovement
	mov	r2, r8
	strb	r5, [r2]
	b	.L93f6a
.L93f2e:
	mov	r0, r6
	mov	r1, #0xa
	bl	_Actor_SetAnim
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #3
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r6, #0x28]
	ldr	r3, [r6, #0xc]
	mov	r0, r6
	str	r3, [r6, #0x14]
	mov	r1, #1
	bl	_Actor_SetSpriteFlags
	mov	r0, #6
	bl	CutsceneWait
	mov	r5, #0
	mov	r3, r8
	mov	r2, r6
	strb	r5, [r3]
	add	r2, #0x5a
	mov	r3, #1
	strb	r3, [r2]
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r6, #6]
.L93f6a:
	bl	CutsceneEnd
	mov	r0, #0
	b	.L93f7a
.L93f72:
	bl	CutsceneEnd
	mov	r0, #1
	neg	r0, r0
.L93f7a:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8093e28

.thumb_func_start Func_8093fa0  @ 0x08093fa0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =ewram_2000434
	ldr	r0, =gState
	mov	r9, r0
	ldr	r0, [r1]
	sub	sp, #0x18
	bl	MapActor_GetActor
	mov	r7, r0
	mov	r3, #0xa
	ldrsh	r5, [r7, r3]
	mov	r1, #0x12
	ldrsh	r6, [r7, r1]
	ldr	r3, =0xfff0
	mov	r2, #1
	and	r5, r3
	and	r6, r3
	mov	r11, r2
	mov	r0, #8
	mov	r2, #8
	add	r0, r5
	add	r2, r6
	mov	r8, r0
	mov	r10, r2
	bl	CutsceneStart
	mov	r3, r7
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L93ff2
	ldr	r3, [r7, #0x50]
	add	r3, #0x26
	ldrb	r3, [r3]
	mov	r11, r3
.L93ff2:
	mov	r3, #0xf9
	lsl	r3, #1
	add	r9, r3
	mov	r0, r9
	ldrb	r3, [r0]
	cmp	r3, #0
	bne	.L940b8
	mov	r3, r8
	cmp	r3, #0
	bge	.L9400a
	mov	r3, r5
	add	r3, #0x17
.L9400a:
	asr	r2, r3, #4
	mov	r3, r10
	cmp	r3, #0
	bge	.L94016
	mov	r3, r6
	add	r3, #0x17
.L94016:
	asr	r3, #4
	lsl	r3, #7
	add	r3, r2, r3
	ldr	r1, =gBuffer
	ldr	r0, =ewram_200fe00
	lsl	r3, #2
	add	r2, r3, r1
	add	r3, r0
	ldrb	r2, [r2, #2]
	ldrb	r3, [r3, #2]
	cmp	r2, r3
	beq	.L94030
	b	.L94138
.L94030:
	ldr	r3, [r7, #8]
	mov	r0, sp
	str	r3, [r0]
	ldr	r3, [r7, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r0, #8]
	bl	_Func_801219c
	mov	r5, r0
	cmp	r5, #0
	bne	.L94138
	mov	r6, r7
	add	r6, #0x5a
	ldr	r1, =ewram_2000434
	strb	r5, [r6]
	mov	r2, r10
	ldr	r0, [r1]
	mov	r1, r8
	bl	Func_8092158
	mov	r1, #6
	mov	r0, r7
	bl	_Actor_SetAnim
	mov	r0, #4
	bl	WaitFrames
	mov	r1, #7
	mov	r0, r7
	bl	_Actor_SetAnim
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r7, #0x28]
	mov	r0, #4
	bl	WaitFrames
	mov	r3, r7
	add	r3, #0x55
	strb	r5, [r3]
	mov	r2, r11
	mov	r3, #0xfe
	and	r2, r3
	mov	r11, r2
	mov	r0, r7
	mov	r1, r11
	bl	_Actor_SetSpriteFlags
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x30]
	mov	r0, r7
	mov	r1, #0xc
	str	r5, [r7, #0x28]
	bl	_Actor_SetAnim
	mov	r0, #4
	bl	WaitFrames
	mov	r3, #1
	mov	r0, r9
	strb	r3, [r0]
	strb	r3, [r6]
	mov	r0, #8
	bl	WaitFrames
	b	.L94112
.L940b8:
	mov	r5, r7
	add	r5, #0x55
	mov	r6, #0
	strb	r6, [r5]
	mov	r0, r7
	mov	r1, #0xb
	bl	_Actor_SetAnim
	mov	r2, r8
	lsl	r1, r2, #16
	mov	r3, #0x80
	ldr	r2, [r7, #0xc]
	lsl	r3, #12
	mov	r0, r10
	add	r2, r3
	lsl	r3, r0, #16
	ldr	r0, =0xfff00000
	add	r3, r0
	mov	r0, r7
	bl	_Actor_TravelTo
	ldr	r1, =ewram_2000434
	ldr	r0, [r1]
	bl	MapActor_WaitMovement
	mov	r3, #3
	strb	r3, [r5]
	ldr	r5, .L9411c	@ 1
	mov	r2, r11
	ldr	r3, [r7, #0xc]
	orr	r2, r5
	mov	r11, r2
	str	r3, [r7, #0x14]
	mov	r0, r7
	mov	r1, r11
	bl	_Actor_SetSpriteFlags
	mov	r0, #4
	bl	CutsceneWait
	mov	r3, r9
	strb	r6, [r3]
	mov	r3, r7
	add	r3, #0x5a
	strb	r5, [r3]
.L94112:
	bl	CutsceneEnd
	mov	r0, #0
	b	.L94140

	.align	2, 0
.L9411c:
	.word	1
	.pool

.L94138:
	bl	CutsceneEnd
	mov	r0, #1
	neg	r0, r0
.L94140:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8093fa0

.thumb_func_start Func_8094154  @ 0x08094154
	push	{r5, r6, lr}
	mov	r5, r1
	bl	GetFieldActor
	mov	r4, r0
	cmp	r4, #0
	bne	.L94168
	mov	r0, #1
	neg	r0, r0
	b	.L941c8
.L94168:
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	add	r3, #0xe4
	ldr	r1, =0xffff0000
	ldr	r0, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r4, #0x10]
	and	r2, r1
	and	r0, r1
	ldr	r1, [r4, #8]
	sub	r3, r2
	ldr	r2, [r4, #0xc]
	sub	r1, r0
	sub	r6, r3, r2
	mov	r2, r5
	add	r5, #4
	cmp	r1, #0
	bge	.L94190
	ldr	r3, =0xffff
	add	r1, r3
.L94190:
	asr	r3, r1, #16
	str	r3, [r2]
	mov	r3, r6
	cmp	r3, #0
	bge	.L9419e
	ldr	r2, =0xffff
	add	r3, r2
.L9419e:
	asr	r3, #16
	str	r3, [r5]
	mov	r3, r4
	add	r3, #0x54
	ldrb	r2, [r3]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #1
	bne	.L941c6
	ldr	r3, [r4, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	_GetSpriteInfo
	ldr	r3, [r5]
	mov	r2, #8
	ldrsb	r2, [r0, r2]
	sub	r3, r2
	str	r3, [r5]
.L941c6:
	mov	r0, #0
.L941c8:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8094154
