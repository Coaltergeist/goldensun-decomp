	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ActorCmd_Player_World  @ 0x0800f2f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x5c
	mov	r1, #0
	mov	r6, r0
	ldr	r3, =gState
	mov	r0, #2
	mov	r2, #0x87
	str	r1, [sp, #8]
	str	r0, [sp]
	lsl	r2, #2
	ldr	r1, =gKeyHeld
	add	r3, r2
	ldrh	r2, [r3]
	ldr	r3, [r1]
	and	r3, r2
	cmp	r3, #0
	beq	.Lf338
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x30]
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r6, #0x34]
	mov	r3, #5
	str	r3, [sp]
	b	.Lf344
.Lf338:
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r6, #0x30]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x34]
.Lf344:
	ldr	r3, =gKeyRepeat
	mov	r0, #0x80
	ldr	r3, [r3]
	lsl	r0, #2
	and	r3, r0
	mov	r9, r0
	cmp	r3, #0
	beq	.Lf35a
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r6, #0x30]
.Lf35a:
	ldr	r5, =gKeyHeld
	ldr	r2, [r5]
	mov	r1, #0xf
	lsr	r2, #4
	and	r2, r1
	ldr	r3, =sDPadAngles
	lsl	r2, #1
	ldrsh	r1, [r3, r2]
	str	r1, [sp, #4]
	lsl	r1, #16
	mov	r11, r1
	lsr	r7, r1, #16
	ldr	r1, =0xffff
	cmp	r7, r1
	bne	.Lf38a
	ldr	r2, [sp, #8]
	mov	r3, #4
	orr	r2, r3
	str	r2, [sp, #8]
	b	.Lf592
.Lf382:
	mov	r3, r11
	asr	r3, #16
	str	r3, [sp, #4]
	b	.Lf592
.Lf38a:
	ldr	r3, [r6, #8]
	add	r1, sp, #0x50
	mov	r0, #0
	str	r0, [sp, #8]
	str	r3, [r1]
	ldr	r3, [r6, #0xc]
	str	r3, [r1, #4]
	mov	r2, #0xe0
	ldr	r3, [r6, #0x10]
	lsl	r2, #11
	mov	r8, r1
	mov	r10, r2
	str	r3, [r1, #8]
	mov	r0, r10
	mov	r1, r7
	mov	r2, r8
	bl	vec3_translate
	ldr	r3, =gDebugMode
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lf3c2
	ldr	r3, [r5]
	mov	r0, r9
	and	r3, r0
	cmp	r3, #0
	beq	.Lf3c2
	b	.Lf592
.Lf3c2:
	mov	r0, r6
	mov	r1, r8
	bl	Func_80122ac
	cmp	r0, #0
	bne	.Lf466
	ldr	r3, [r6, #8]
	add	r5, sp, #0x44
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	mov	r2, #0x80
	ldr	r3, [r6, #0x10]
	lsl	r2, #5
	add	r1, r7, r2
	mov	r0, r10
	str	r3, [r5, #8]
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	Func_80122ac
	cmp	r0, #0
	bne	.Lf466
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	ldr	r3, =0xfffff000
	mov	r0, r10
	add	r1, r7, r3
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	Func_80122ac
	cmp	r0, #0
	bne	.Lf466
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	mov	r0, #0x80
	ldr	r3, [r6, #0x10]
	lsl	r0, #6
	add	r1, r7, r0
	str	r3, [r5, #8]
	mov	r0, r10
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	Func_80122ac
	cmp	r0, #0
	bne	.Lf466
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r2, =0xffffe000
	ldr	r3, [r6, #0x10]
	add	r1, r7, r2
	mov	r0, r10
	str	r3, [r5, #8]
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	Func_80122ac
	cmp	r0, #0
	bne	.Lf466
	b	.Lf592
.Lf466:
	add	r3, sp, #0xc
	mov	r0, r11
	mov	r1, #0x80
	mov	r10, r3
	lsl	r1, #5
	lsr	r3, r0, #16
	add	r2, r3, r1
	ldr	r1, =0xfffff000
	mov	r0, r10
	strh	r2, [r0]
	add	r2, r3, r1
	mov	r1, #0x80
	lsl	r1, #6
	strh	r2, [r0, #2]
	add	r2, r3, r1
	ldr	r1, =0xffffe000
	strh	r2, [r0, #4]
	add	r2, r3, r1
	mov	r1, #0xc0
	lsl	r1, #6
	strh	r2, [r0, #6]
	add	r2, r3, r1
	ldr	r1, =0xffffd000
	strh	r2, [r0, #8]
	add	r2, r3, r1
	mov	r1, #0x80
	lsl	r1, #7
	strh	r2, [r0, #0xa]
	add	r2, r3, r1
	ldr	r1, =0xffffc000
	strh	r2, [r0, #0xc]
	add	r3, r1
	mov	r2, r10
	strh	r3, [r2, #0xe]
	mov	r3, #0
	mov	r9, r3
.Lf4ae:
	mov	r0, r9
	lsl	r3, r0, #1
	mov	r1, r10
	ldrsh	r2, [r1, r3]
	ldr	r3, [r6, #8]
	mov	r1, r8
	str	r3, [r1]
	ldr	r3, [r6, #0xc]
	str	r3, [r1, #4]
	lsl	r2, #16
	ldr	r3, [r6, #0x10]
	lsr	r7, r2, #16
	mov	r0, #0xe0
	str	r3, [r1, #8]
	lsl	r0, #11
	mov	r1, r7
	mov	r11, r2
	mov	r2, r8
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r8
	bl	Func_80122ac
	cmp	r0, #0
	bne	.Lf582
	ldr	r3, [r6, #8]
	add	r5, sp, #0x44
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	mov	r2, #0x80
	ldr	r3, [r6, #0x10]
	lsl	r2, #5
	mov	r0, #0xe0
	add	r1, r7, r2
	lsl	r0, #11
	str	r3, [r5, #8]
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	Func_80122ac
	cmp	r0, #0
	bne	.Lf582
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	ldr	r3, =0xfffff000
	mov	r0, #0xe0
	add	r1, r7, r3
	lsl	r0, #11
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	Func_80122ac
	cmp	r0, #0
	bne	.Lf582
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	mov	r0, #0x80
	ldr	r3, [r6, #0x10]
	lsl	r0, #6
	add	r1, r7, r0
	mov	r0, #0xe0
	lsl	r0, #11
	str	r3, [r5, #8]
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	Func_80122ac
	cmp	r0, #0
	bne	.Lf582
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r2, =0xffffe000
	ldr	r3, [r6, #0x10]
	mov	r0, #0xe0
	add	r1, r7, r2
	lsl	r0, #11
	str	r3, [r5, #8]
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	Func_80122ac
	cmp	r0, #0
	bne	.Lf582
	b	.Lf382
.Lf582:
	mov	r3, #1
	add	r9, r3
	mov	r0, r9
	cmp	r0, #8
	blt	.Lf4ae
	ldr	r1, [sp, #8]
	orr	r1, r3
	str	r1, [sp, #8]
.Lf592:
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lf5ba
	ldr	r0, [sp, #8]
	mov	r2, #3
	and	r2, r0
	cmp	r2, #0
	beq	.Lf5b2
	mov	r1, #0xce
	lsl	r1, #1
	add	r2, r3, r1
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lf5ba
.Lf5b2:
	mov	r0, #0xce
	lsl	r0, #1
	add	r3, r0
	strh	r2, [r3]
.Lf5ba:
	ldr	r1, [sp, #8]
	cmp	r1, #0
	beq	.Lf5ca
	mov	r0, r6
	mov	r1, #9
	bl	Actor_SetAnim
	b	.Lf5d2
.Lf5ca:
	mov	r0, r6
	ldr	r1, [sp]
	bl	Actor_SetAnim
.Lf5d2:
	ldr	r2, [sp, #8]
	cmp	r2, #0
	beq	.Lf658
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	str	r3, [r6, #0x40]
	mov	r3, #0
	str	r3, [r6, #0x24]
	str	r3, [r6, #0x2c]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Lf614
	ldr	r0, [sp, #4]
	ldrh	r2, [r6, #6]
	lsl	r3, r0, #16
	lsr	r3, #16
	sub	r3, r2
	lsl	r3, #16
	asr	r1, r3, #16
	mov	r3, #0x80
	lsl	r3, #5
	cmp	r1, r3
	ble	.Lf608
	mov	r1, r3
.Lf608:
	ldr	r3, =0xfffff000
	cmp	r1, r3
	bge	.Lf610
	mov	r1, r3
.Lf610:
	add	r3, r2, r1
	strh	r3, [r6, #6]
.Lf614:
	mov	r1, #0x64
	add	r1, r6
	mov	r8, r1
	mov	r3, #0
	mov	r2, r8
	strh	r3, [r2]
	mov	r2, r6
	add	r2, #0x66
	mov	r3, #2
	strh	r3, [r2]
	b	.Lf6ae

	.pool_aligned

.Lf658:
	add	r3, sp, #0x50
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	mov	r0, r6
	ldr	r3, [r3, #8]
	bl	Actor_TravelTo
	ldr	r1, [r6, #0x24]
	ldr	r4, =Func_8000888
	mov	r0, r1
	.call_via r4
	ldr	r1, [r6, #0x2c]
	mov	r3, r0
	mov	r0, r1
	.call_via r4
	add	r3, r0
	mov	r0, r3
	bl	FastIntSqrtFP1616_RAM 
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #8]
	lsl	r1, r2, #16
	mov	r2, r6
	add	r2, #0x24
	lsr	r1, #16
	str	r3, [r6, #0x24]
	str	r3, [r6, #0x2c]
	bl	vec3_translate
	mov	r3, #0x64
	add	r3, r6
	mov	r8, r3
	ldrh	r2, [r3]
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0
	beq	.Lf6ae
	sub	r3, r2, #1
	mov	r1, r8
	strh	r3, [r1]
.Lf6ae:
	ldr	r3, =iwram_3001e70
	ldr	r0, [r3]
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #4
	ldr	r1, =.L1328c
	and	r3, r2
	mov	r2, #0x8d
	lsl	r3, #2
	lsl	r2, #1
	ldr	r4, [r1, r3]
	add	r1, r0, r2
	ldrh	r0, [r1]
	sub	r3, r4, r0
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, #0
	bge	.Lf6d6
	add	r3, #7
.Lf6d6:
	asr	r2, r3, #3
	mov	r3, #0x80
	lsl	r3, #2
	cmp	r2, r3
	ble	.Lf6e2
	mov	r2, r3
.Lf6e2:
	ldr	r3, =0xfffffe00
	cmp	r2, r3
	bge	.Lf6ea
	mov	r2, r3
.Lf6ea:
	mov	r3, r2
	add	r3, #0xf
	cmp	r3, #0x1e
	bhi	.Lf6f6
	ldrh	r3, [r1]
	sub	r2, r4, r3
.Lf6f6:
	add	r3, r0, r2
	strh	r3, [r1]
	mov	r3, r6
	add	r3, #0x54
	ldrb	r7, [r3]
	cmp	r7, #1
	bne	.Lf7ba
	mov	r0, r6
	add	r0, #8
	ldr	r5, [r6, #0x50]
	bl	Func_8012204
	cmp	r0, #9
	bne	.Lf738
	ldr	r3, [r5, #0x2c]
	mov	r2, r5
	strb	r7, [r3, #6]
	ldr	r3, .Lf720	@ 0
	add	r2, #0x26
	strb	r3, [r2]
	b	.Lf744

	.align	2, 0
.Lf720:
	.word	0
	.pool

.Lf738:
	ldr	r3, [r5, #0x2c]
	mov	r2, #9
	strb	r2, [r3, #6]
	mov	r3, r5
	add	r3, #0x26
	strb	r7, [r3]
.Lf744:
	cmp	r0, #6
	bne	.Lf7ba
	mov	r1, r8
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	cmp	r3, #0
	bne	.Lf7ba
	ldr	r2, [sp, #8]
	cmp	r2, #0
	bne	.Lf7ba
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r0, #0x18
	bl	CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lf7ba
	ldr	r1, =gScript_08013280
	ldr	r7, [r5, #0x50]
	bl	Actor_SetScript
	add	r0, sp, #8
	mov	r3, r5
	ldrb	r0, [r0]
	add	r3, #0x55
	mov	r2, r5
	strb	r0, [r3]
	add	r2, #0x22
	mov	r3, #1
	strb	r3, [r2]
	cmp	r7, #0
	beq	.Lf7b4
	mov	r1, #1
	mov	r0, r7
	bl	Sprite_SetAnim
	add	r1, sp, #8
	ldrb	r1, [r1]
	mov	r3, r7
	add	r3, #0x26
	strb	r1, [r3]
	mov	r2, #0xd
	ldrb	r1, [r7, #5]
	neg	r2, r2
	mov	r3, r2
	and	r3, r1
	mov	r1, #4
	orr	r3, r1
	strb	r3, [r7, #5]
	ldrb	r3, [r7, #9]
	and	r2, r3
	mov	r3, #8
	orr	r2, r3
	strb	r2, [r7, #9]
.Lf7b4:
	mov	r3, #0xa
	mov	r2, r8
	strh	r3, [r2]
.Lf7ba:
	bl	Func_800eaf8
	ldrh	r3, [r6, #4]
	add	r3, #1
	mov	r0, #1
	strh	r3, [r6, #4]
	add	sp, #0x5c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end ActorCmd_Player_World

