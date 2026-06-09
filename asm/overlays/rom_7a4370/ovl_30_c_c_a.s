	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_917_2008088
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0xb
	mov	r1, #1
	bl	OvlFunc_917_20092f4
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	beq	.La4
	ldr	r0, =0x151d
	b	.Lb0
.La4:
	ldr	r0, =0x84c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lbe
	ldr	r0, =0x1525
.Lb0:
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	b	.L134
.Lbe:
	ldr	r0, =0x1520
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #1
	bl	OvlFunc_917_20092f4
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #1
	bl	OvlFunc_917_20092f4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	ldr	r0, =0x84c
	bl	__SetFlag
.L134:
	mov	r0, #0xb
	mov	r1, #0
	bl	OvlFunc_917_20092f4
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_2008088

.thumb_func_start OvlFunc_917_2008158
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	beq	.L188
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	ldr	r0, =0x151c
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xa
	mov	r1, #0
	bl	OvlFunc_917_20092f4
	b	.L220
.L188:
	ldr	r0, =0x844
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1ce
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	ldr	r0, =0x14eb
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0xb8
	bl	__CheckPartyItem
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.L220
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
	b	.L220
.L1ce:
	ldr	r0, =0x14c9
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r2, #0xa
	ldr	r0, =0x200e
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x200e
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__WaitFrames
.L220:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_2008158

