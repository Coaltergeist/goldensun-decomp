	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LaliveroShip_MapInit
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldr	r5, =iwram_3001e70
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #4
	ldr	r7, [r5]
	cmp	r3, #0x63
	bne	.Lm970_dc4
	mov	r0, #0
	mov	r1, #0xf2
	bl	__GiveItemTo
.Lm970_dc4:
	ldr	r3, [r5, #0x4c]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r6, #0
	add	r0, #0x59
	strb	r6, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #2
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r6, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	sub	r5, #0xf
	ldrb	r2, [r1, #9]
	mov	r3, r5
	mov	r6, #4
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #0x15]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #0x15]
	mov	r0, #1
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #0x15]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #0x15]
	mov	r0, #2
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #0x15]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #0x15]
	mov	r0, #3
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #0x15]
	and	r5, r3
	orr	r5, r6
	strb	r5, [r2, #0x15]
	ldr	r0, =REG_BG3CNT
	ldr	r1, =0xfffc
	ldrh	r2, [r0]
	mov	r3, r1
	and	r3, r2
	ldr	r2, .Lm970_edc	@ 2
	mov	r5, sp
	add	r5, #2
	orr	r3, r2
	strh	r3, [r5]
	strh	r3, [r0]
	sub	r0, #2
	ldrh	r2, [r0]
	ldr	r4, .Lm970_ee0	@ 3
	mov	r3, r1
	and	r3, r2
	orr	r3, r4
	strh	r3, [r5]
	ldr	r2, =REG_BG1CNT
	strh	r3, [r0]
	ldrh	r3, [r2]
	and	r1, r3
	orr	r1, r4
	strh	r1, [r5]
	strh	r1, [r2]
	ldr	r2, =0x2648
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	mov	r2, #0x81
	lsl	r2, #4
	add	r3, #2
	strh	r2, [r3]
	b	.Lm970_f00

	.align	2, 0
.Lm970_edc:
	.word	2
.Lm970_ee0:
	.word	3
	.pool

.Lm970_f00:
	mov	r3, #0x9a
	lsl	r3, #1
	add	r1, r7, r3
	ldr	r3, [r1, #0xc]
	ldr	r2, =0xffa60000
	add	r3, r2
	str	r3, [r1, #0xc]
	mov	r3, #0xb2
	lsl	r3, #1
	add	r1, r7, r3
	ldr	r3, [r1, #0xc]
	add	r3, r2
	str	r3, [r1, #0xc]
	bl	__Func_800fe9c
	bl	OvlFunc_970_200807c
	mov	r0, #0
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end LaliveroShip_MapInit

