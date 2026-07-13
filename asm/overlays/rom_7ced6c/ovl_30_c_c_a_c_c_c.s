	.include "macros.inc"

.section .text.after_95d0, "ax", %progbits

.thumb_func_start OvlFunc_946_20095d0
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0xe
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L15e6
	mov	r2, r0
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
.L15e6:
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x90
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_8012078
	mov	r1, #0xbc
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #18
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_8012078
	ldr	r0, =0x243
	bl	__SetFlag
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_20095d0
