	.include "macros.inc"
	.include "gba.inc"

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
	bl	MapActor_TravelToWait
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

