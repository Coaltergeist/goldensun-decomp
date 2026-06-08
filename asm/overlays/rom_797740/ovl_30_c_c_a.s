	.include "macros.inc"

.thumb_func_start OvlFunc_900_2008044
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	bne	.L5a
	ldr	r0, =.L3bc
	b	.L5c
.L5a:
	ldr	r0, =gOvl_0200835c
.L5c:
	pop	{r1}
	bx	r1
.func_end OvlFunc_900_2008044

.thumb_func_start OvlFunc_900_200806c
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	bne	.L82
	ldr	r0, =MapEntrance_ARRAY_937__020084a0
	b	.L84
.L82:
	ldr	r0, =.L3ec
.L84:
	pop	{r1}
	bx	r1
.func_end OvlFunc_900_200806c

.thumb_func_start OvlFunc_900_2008094
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #9
	mov	r2, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xa
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x138a
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #9
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_900_2008094

.thumb_func_start OvlFunc_900_2008110
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1388
	bl	__Func_8092b94
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_900_2008110

.thumb_func_start OvlFunc_900_2008140
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1389
	bl	__Func_8092b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_900_2008140

.thumb_func_start OvlFunc_900_2008170
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x138e
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_900_2008170

.thumb_func_start OvlFunc_900_2008190
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x138c
	bl	__Func_8092b94
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_900_2008190

.thumb_func_start OvlFunc_900_20081b0
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x138d
	bl	__Func_8092b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_900_20081b0

