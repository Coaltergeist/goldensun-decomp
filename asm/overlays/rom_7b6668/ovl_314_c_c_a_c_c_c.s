	.include "macros.inc"

.thumb_func_start OvlFunc_928_2008d0c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r7, r5
	add	r7, #0x55
	ldrb	r3, [r7]
	mov	r0, #0x80
	lsl	r0, #2
	mov	r8, r3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ldd8
	ldr	r3, [r5, #8]
	ldr	r1, =0xfff00000
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r1
	add	r3, r2
	str	r3, [r6, #8]
	mov	r3, #0x80
	ldrh	r1, [r5, #6]
	lsl	r3, #6
	add	r1, r3
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r0, #0x80
	and	r1, r3
	lsl	r0, #14
	mov	r2, r6
	bl	__vec3_translate
	mov	r0, r5
	mov	r1, r6
	bl	__TestCollision
	cmp	r0, #0
	bne	.Ldd8
	bl	__CutsceneStart
	mov	r1, #6
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, r5
	mov	r1, #7
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldrb	r2, [r7]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r7]
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, #0xa
	ldrsh	r2, [r6, r3]
	mov	r3, #2
	ldrsh	r1, [r6, r3]
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, r5
	mov	r1, #6
	bl	__Actor_SetAnim
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r3, r8
	strb	r3, [r7]
	bl	__CutsceneEnd
.Ldd8:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2008d0c

	.section .text.after_8de8, "ax", %progbits

.thumb_func_start OvlFunc_928_2008e4c
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r5, [r3]
	bl	__CutsceneStart
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #6
	bhi	.Lefc
	ldr	r2, =.Le70
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2,0
.Le70:
	.word	.Le8c
	.word	.Le9e
	.word	.Leaa
	.word	.Leb6
	.word	.Lec8
	.word	.Leda
	.word	.Leec
.Le8c:
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L1778
	mov	r1, #0x51
	mov	r2, #0x12
	bl	__Func_8010560
	b	.Lefc
.Le9e:
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L178e
	mov	r1, #0x53
	b	.Lee4
.Leaa:
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L178e
	mov	r1, #0x56
	b	.Lee4
.Leb6:
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L17a4
	mov	r1, #0x54
	mov	r2, #0x18
	bl	__Func_8010560
	b	.Lefc
.Lec8:
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L17a4
	mov	r1, #0x48
	mov	r2, #7
	bl	__Func_8010560
	b	.Lefc
.Leda:
	mov	r0, #0xbc
	bl	__PlaySound
	ldr	r0, =.L17ba
	mov	r1, #0x45
.Lee4:
	mov	r2, #0xb
	bl	__Func_8010560
	b	.Lefc
.Leec:
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L17d0
	mov	r1, #0x53
	mov	r2, #7
	bl	__Func_8010560
.Lefc:
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	OvlFunc_928_2008de8
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2008e4c

.thumb_func_start OvlFunc_928_2008f30
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #0x10
	bl	__CutsceneStart
	ldr	r1, =gScript_928__020096a0
	mov	r0, #0x13
	bl	__MapActor_SetBehavior
	ldr	r3, =OvlFunc_928_2008358
	mov	r1, #0xc8
	mov	r11, r3
	lsl	r1, #4
	mov	r0, r11
	bl	__StartTask
	mov	r0, #0x13
	bl	__MapActor_WaitScript
	mov	r0, #0x7c
	bl	__PlaySound
	mov	r3, #0xa8
	lsl	r3, #16
	mov	r9, r3
	mov	r3, #0x80
	lsl	r3, #12
	mov	r8, r3
	mov	r3, #0x9c
	lsl	r3, #17
	mov	r10, r3
	ldr	r6, =0x20001
	mov	r5, #0
	mov	r0, r9
	mov	r1, r8
	mov	r2, r10
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r6, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r3, =0x3333
	mov	r0, r9
	mov	r1, r8
	mov	r2, r10
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r6, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r3, =0xffffcccd
	mov	r1, r8
	mov	r2, r10
	mov	r0, r9
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r6, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, r11
	bl	__StopTask
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r1, r9
	mov	r2, r10
	mov	r0, #0x15
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0xe
	mov	r1, #0x13
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x17fd
	bl	__MessageID
	ldr	r0, =0x203
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1014
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1014:
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	ldr	r0, =0x203
	bl	__SetFlag
	bl	__Func_809202c
	bl	__CutsceneEnd
	add	sp, #0x10
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2008f30

.thumb_func_start OvlFunc_928_2009060
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r1, #1
	mov	r0, #0x12
	bl	__MapActor_SetBehavior
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r6, #0
	str	r6, [r0, #0x6c]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #24
	str	r5, [r0, #0x38]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	str	r5, [r0, #0x40]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	str	r6, [r0, #0x24]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	str	r6, [r0, #0x2c]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	str	r6, [r0, #0x30]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r2, #0
	str	r6, [r0, #0x34]
	ldr	r1, =0x103
	mov	r0, #0x12
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0x12
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x8c
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__Func_809218c
	mov	r1, #0x94
	lsl	r1, #1
	mov	r2, #0xe8
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0x12
	bl	__MapActor_WaitMovement
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	ldr	r1, =gScript_928__020095b0
	mov	r0, #0x12
	bl	__MapActor_SetBehavior
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_928_2008500
	str	r3, [r0, #0x6c]
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2009060
