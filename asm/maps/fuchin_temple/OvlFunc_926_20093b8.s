	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_926_20093b8
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	ldr	r0, =0xffffe000
	ldrh	r2, [r5, #6]
	add	r3, r2, r0
	ldr	r0, =0x3fff0000
	lsl	r3, #16
	ldr	r1, =0x3fff
	cmp	r3, r0
	bhi	.Lm926_13dc
	bl	OvlFunc_926_2008e94
	b	.Lm926_1406
.Lm926_13dc:
	ldr	r0, =0xffffa000
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.Lm926_13ee
	bl	OvlFunc_926_2008bf4
	b	.Lm926_1406
.Lm926_13ee:
	mov	r0, #0xc0
	lsl	r0, #7
	add	r3, r2, r0
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r1
	bhi	.Lm926_1402
	bl	OvlFunc_926_2008db4
	b	.Lm926_1406
.Lm926_1402:
	bl	OvlFunc_926_2008cd4
.Lm926_1406:
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r1, #0x12
	ldrsh	r3, [r5, r1]
	cmp	r3, #0xd1
	bgt	.Lm926_144c
	ldr	r0, =0x89a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm926_143a
	ldr	r0, =0x89b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm926_1442
.Lm926_143a:
	mov	r0, #0
	bl	OvlFunc_926_200902c
	b	.Lm926_1446
.Lm926_1442:
	bl	OvlFunc_926_2009160
.Lm926_1446:
	bl	__CutsceneEnd
	b	.Lm926_1476
.Lm926_144c:
	ldr	r0, =0x89b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm926_145e
	mov	r0, #2
	bl	OvlFunc_926_200902c
	b	.Lm926_1472
.Lm926_145e:
	ldr	r0, =0x89a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm926_146e
	bl	OvlFunc_926_2009494
	b	.Lm926_1472
.Lm926_146e:
	bl	OvlFunc_926_2009dbc
.Lm926_1472:
	bl	__CutsceneEnd
.Lm926_1476:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_20093b8

