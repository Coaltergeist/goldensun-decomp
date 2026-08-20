	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_2008658
	push	{r5, lr}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r1, r3, #20
	ldr	r3, [r0, #0x10]
	mov	r5, #0x17
	asr	r4, r3, #20
	cmp	r1, #0x51
	bne	.Lm956_698
	cmp	r4, #0xc
	bne	.Lm956_698
	ldrh	r2, [r0, #6]
	mov	r3, #0xe0
	lsl	r3, #8
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r3, r2
	bne	.Lm956_68c
	mov	r5, #0xfd
.Lm956_68c:
	lsl	r1, #20
	lsl	r2, r4, #20
	mov	r0, #0
	mov	r3, r5
	bl	__Func_8012078
.Lm956_698:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008658

