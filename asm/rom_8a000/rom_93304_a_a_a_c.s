	.include "macros.inc"

.thumb_func_start Func_8093530  @ 0x08093530
	push	{lr}
	ldr	r1, =0xccc
	mov	r0, #0x1b
	bl	galloc_ewram
	mov	r3, #0xf0
	lsl	r3, #1
	add	r0, r3
	ldr	r0, [r0]
	bl	_Actor_WaitMovement
	mov	r0, #2
	bl	CutsceneWait
	pop	{r0}
	bx	r0
.func_end Func_8093530

