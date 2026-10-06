	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_926_2008f80
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r2, [r0, #6]
	ldr	r0, =0xffffe000
	add	r3, r2, r0
	ldr	r0, =0x3fff0000
	lsl	r3, #16
	ldr	r1, =0x3fff
	cmp	r3, r0
	bhi	.Lm926_fb4
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0xa8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xf
	mov	r1, #0xe0
	mov	r2, #0xa8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #6
	b	.Lm926_ffa
.Lm926_fb4:
	ldr	r0, =0xffffa000
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.Lm926_fd2
	mov	r0, #0xf
	mov	r1, #0xe8
	mov	r2, #0xa0
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xa0
	mov	r0, #0xf
	lsl	r1, #7
	b	.Lm926_ffa
.Lm926_fd2:
	mov	r0, #0xc0
	lsl	r0, #7
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.Lm926_1002
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0xa8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xf
	mov	r1, #0xe0
	mov	r2, #0xac
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xe0
	mov	r0, #0xf
	lsl	r1, #8
.Lm926_ffa:
	mov	r2, #0x14
	bl	__Func_8092adc
	b	.Lm926_1018
.Lm926_1002:
	mov	r0, #0xf
	mov	r1, #0xe8
	mov	r2, #0xa0
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
.Lm926_1018:
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008f80

