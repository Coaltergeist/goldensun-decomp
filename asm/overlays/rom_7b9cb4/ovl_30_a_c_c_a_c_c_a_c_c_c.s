	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200ad58
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r6, =iwram_3001ebc
	ldr	r3, =0x201
	ldr	r2, [r6]
	mov	r1, #0xe0
	lsl	r1, #1
	str	r3, [r2, r1]
	mov	r8, r1
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xca
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xca
	bl	__Func_8091a58
	bl	__Func_8093554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0x3333
	ldr	r0, =0x19999
	bl	__Func_80933d4
	mov	r0, #0xc8
	mov	r2, #0xf9
	mov	r1, #0
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #15
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_932_20086dc
	ldr	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	ldr	r0, [r5, #8]
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r0, =gScript_882__0200cd6c
	bl	__SetMapEvents
	ldr	r2, [r6]
	mov	r3, #0x81
	lsl	r3, #2
	mov	r1, r8
	str	r3, [r2, r1]
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200ad58
