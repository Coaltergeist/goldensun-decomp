	.include "macros.inc"

.thumb_func_start OvlFunc_902_2008098
	push	{r5, lr}
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, r5
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_2008098

.thumb_func_start OvlFunc_902_20080bc
	push	{lr}
	ldr	r0, =0x1cc9
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r0, #9
	bl	OvlFunc_902_2008098
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20080bc

.thumb_func_start OvlFunc_902_20080dc
	push	{lr}
	ldr	r0, =0x1ccd
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r0, #0xb
	bl	OvlFunc_902_2008098
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20080dc

.thumb_func_start OvlFunc_902_20080fc
	push	{lr}
	ldr	r0, =0x1cd0
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r0, #0xc
	bl	OvlFunc_902_2008098
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20080fc

.thumb_func_start OvlFunc_902_200811c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1cd4
	bl	__MessageID
	mov	r2, #2
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8092848
	mov	r0, #0x10
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_8093040
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L196
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L196:
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x10
	bl	__Func_8093040
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x868
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_200811c

.thumb_func_start OvlFunc_902_20081c4
	push	{lr}
	ldr	r0, =0x1cda
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r0, #0x10
	bl	OvlFunc_902_2008098
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20081c4

.thumb_func_start OvlFunc_902_20081e4
	push	{lr}
	ldr	r0, =0x1cee
	bl	__MessageID
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r0, #0x17
	bl	OvlFunc_902_2008098
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20081e4

.thumb_func_start OvlFunc_902_2008204
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092848
	ldr	r0, =0x85b
	bl	__GetFlag
	cmp	r0, #0
	bne	.L22e
	ldr	r0, =0x137c
	bl	__MessageID
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092c40
	b	.L23c
.L22e:
	ldr	r0, =0x1385
	bl	__MessageID
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092c40
.L23c:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2a8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x12
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__Func_8078500
	cmp	r0, #0
	bne	.L290
	mov	r1, #4
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1384
	bl	__MessageID
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
	b	.L2d4
.L290:
	mov	r0, #0xe7
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0xe7
	mov	r1, #0
	bl	__Func_8091a58
	ldr	r0, =0x85b
	bl	__SetFlag
	b	.L2d4
.L2a8:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
.L2d4:
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_2008204

.thumb_func_start OvlFunc_902_20082fc
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_80925cc
	bl	__CutsceneEnd
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	bl	OvlFunc_902_200811c
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x5b
	strb	r5, [r0]
	mov	r1, #2
	mov	r0, #0x10
	bl	__MapActor_SetBehavior
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20082fc

