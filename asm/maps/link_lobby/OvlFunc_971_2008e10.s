	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_2008e10
	push	{r5, r6, r7, lr}
	sub	sp, #4
	mov	r5, r0
	bl	__CutsceneStart
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r1, [r3]
	mov	r2, #0
	mov	r0, r5
	bl	__MapActor_Face
	ldr	r0, =0x989
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #6
	mov	r3, #4
	bl	__CreateUIBox
	mov	r7, #1
	mov	r6, r0
	mov	r5, #0
	neg	r7, r7
	b	.Le64
.Le54:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.Lebe
	mov	r0, #1
	bl	__WaitFrames
.Le64:
	cmp	r5, r7
	beq	.Le7e
	mov	r0, r6
	bl	__Func_8016478
	mov	r3, #0
	mov	r0, r5
	mov	r1, #3
	mov	r2, r6
	str	r3, [sp]
	bl	__Func_801e9a0
	mov	r7, r5
.Le7e:
	ldr	r1, =gKeyRepeat
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Le8c
	sub	r5, #1
.Le8c:
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Le98
	add	r5, #1
.Le98:
	cmp	r5, #0
	bge	.Le9e
	mov	r5, #0
.Le9e:
	ldr	r1, =gKeyPress
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Le54
.Leaa:
	mov	r0, r6
	mov	r1, #1
	bl	__CloseUIBox
	cmp	r5, #0
	blt	.Lec4
	mov	r0, r5
	bl	__Debug_LoadPresetParty
	b	.Lec8
.Lebe:
	mov	r5, #1
	neg	r5, r5
	b	.Leaa
.Lec4:
	ldr	r0, =0x98a
	b	.Lece
.Lec8:
	cmp	r0, #0
	beq	.Ledc
	ldr	r0, =0x98b
.Lece:
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	b	.Leea
.Ledc:
	ldr	r0, =0x98c
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
.Leea:
	mov	r0, #0xa
	bl	__WaitFrames
	bl	__CutsceneEnd
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008e10
