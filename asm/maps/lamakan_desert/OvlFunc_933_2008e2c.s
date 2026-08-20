	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_933_2008e2c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xf0
	ldr	r3, [r3]
	mov	r0, #0x80
	sub	sp, #0x68
	mov	r1, #0x3c
	lsl	r2, #16
	lsl	r0, #2
	str	r3, [sp, #0x14]
	str	r1, [sp, #0x10]
	mov	r11, r2
	bl	__SetFlag
	mov	r0, #1
	bl	OvlFunc_933_2009c78
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.Lm933_e74
	ldr	r2, =Events_TolbiSpring
	mov	r7, #3
	mov	r8, r2
	b	.Lm933_e88
.Lm933_e74:
	ldr	r3, =0x5a
	cmp	r2, r3
	bne	.Lm933_e82
	ldr	r3, =.Lm933_1f48
	mov	r7, #5
	mov	r8, r3
	b	.Lm933_e88
.Lm933_e82:
	ldr	r1, =.Lm933_1f70
	mov	r7, #2
	mov	r8, r1
.Lm933_e88:
	mov	r9, r7
	mov	r5, r8
	cmp	r7, #0
	beq	.Lm933_eb8
	mov	r6, #0
.Lm933_e92:
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, r5
	add	r0, #8
	bl	OvlFunc_933_2008e00
	cmp	r0, r11
	bgt	.Lm933_eac
	mov	r2, r9
	sub	r2, r7
	mov	r11, r0
	mov	r10, r2
.Lm933_eac:
	add	r6, #8
	mov	r3, r8
	sub	r7, #1
	add	r5, r3, r6
	cmp	r7, #0
	bne	.Lm933_e92
.Lm933_eb8:
	mov	r1, r10
	lsl	r1, #1
	mov	r10, r1
	mov	r2, #0x80
	mov	r1, #0x80
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, r10
	lsl	r3, r2, #2
	add	r3, r8
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r3, [r3, #4]
	bl	__Actor_TravelTo
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0xc]
	mov	r0, r5
	bl	OvlFunc_933_2008324
	mov	r0, #0xf1
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xd6
	add	r4, sp, #0x40
	strh	r3, [r4, #0x18]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r4, #8]
	ldr	r3, =0xcccc
	str	r3, [r4, #0xc]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r4, #0x10]
	ldr	r3, =0x13333
	str	r3, [r4, #0x14]
	mov	r3, #0xe0
	ldr	r5, [r0, #8]
	lsl	r3, #13
	ldr	r1, [r0, #0xc]
	ldr	r2, [r0, #0x10]
	mov	r6, #0
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r3, #0
	str	r6, [sp]
	str	r6, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r1, #0x82
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x12
	mov	r0, #0
	bl	__MapActor_SetAnim
	ldr	r1, =0xcba
	ldr	r3, [sp, #0x14]
	ldr	r5, =ewram_2000472
	add	r6, r3, r1
	mov	r7, #0
.Lm933_f6a:
	mov	r3, #0x96
	lsl	r3, #2
	strh	r3, [r6]
	ldr	r2, [sp, #0x10]
	sub	r2, #1
	str	r2, [sp, #0x10]
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0
	beq	.Lm933_f98
	sub	r3, r2, #5
	strh	r3, [r5]
	lsl	r3, #16
	cmp	r3, #0
	bgt	.Lm933_f8e
	strh	r7, [r5]
	b	.Lm933_f98
.Lm933_f8e:
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	bne	.Lm933_f98
	mov	r3, #1
	str	r3, [sp, #0x10]
.Lm933_f98:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r1, [sp, #0x10]
	cmp	r1, #0
	bne	.Lm933_f6a
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xd6
	add	r4, sp, #0x18
	strh	r3, [r4, #0x18]
	ldr	r3, =0xcccc
	mov	r2, #0x80
	str	r3, [r4, #0xc]
	ldr	r3, =0x13333
	lsl	r2, #8
	str	r2, [r4, #8]
	str	r2, [r4, #0x10]
	str	r3, [r4, #0x14]
	ldr	r3, [sp, #0x10]
	ldr	r2, [r0, #0x10]
	ldr	r1, [r0, #0xc]
	ldr	r5, [r0, #8]
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0xe0
	lsl	r3, #13
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r3, #0
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, =0xcba
	ldr	r1, [sp, #0x14]
	add	r3, r1, r2
	add	r1, sp, #0x10
	ldrh	r1, [r1]
	mov	r0, #0
	strh	r1, [r3]
	bl	OvlFunc_933_2009c78
	add	sp, #0x68
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_933_2008e2c

