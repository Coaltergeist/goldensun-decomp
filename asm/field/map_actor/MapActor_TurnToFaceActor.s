	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MapActor_TurnToFaceActor  @ 0x08092848
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r7, r2
	bl	GetFieldActor
	mov	r6, r0
	mov	r0, r5
	bl	GetFieldActor
	mov	r1, r0
	cmp	r6, #0
	beq	.L92870
	cmp	r1, #0
	beq	.L92870
	mov	r0, r6
	bl	MapActor_RotateToward
	mov	r0, r7
	bl	CutsceneWait
.L92870:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end MapActor_TurnToFaceActor

