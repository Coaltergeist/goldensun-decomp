	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start AltinPeak_MapInit
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r3, =gState
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x4d
	cmp	r2, r3
	bne	.Lm932_2040
	bl	OvlFunc_932_200a0d0
	b	.Lm932_209e
.Lm932_2040:
	ldr	r3, =0x4f
	cmp	r2, r3
	bne	.Lm932_204c
	bl	OvlFunc_932_200a310
	b	.Lm932_209e
.Lm932_204c:
	ldr	r3, =0x50
	cmp	r2, r3
	bne	.Lm932_2058
	bl	OvlFunc_932_200a428
	b	.Lm932_209e
.Lm932_2058:
	ldr	r3, =0x51
	cmp	r2, r3
	bne	.Lm932_2064
	bl	OvlFunc_932_200a490
	b	.Lm932_209e
.Lm932_2064:
	ldr	r3, =0x52
	cmp	r2, r3
	bne	.Lm932_2070
	bl	OvlFunc_932_200a5c0
	b	.Lm932_209e
.Lm932_2070:
	ldr	r3, =0x53
	cmp	r2, r3
	bne	.Lm932_207c
	bl	OvlFunc_932_200a6c0
	b	.Lm932_209e
.Lm932_207c:
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.Lm932_2088
	bl	OvlFunc_932_200a804
	b	.Lm932_209e
.Lm932_2088:
	ldr	r3, =0x56
	cmp	r2, r3
	bne	.Lm932_2094
	bl	OvlFunc_932_200a934
	b	.Lm932_209e
.Lm932_2094:
	ldr	r3, =0x57
	cmp	r2, r3
	bne	.Lm932_209e
	bl	OvlFunc_932_200a9dc
.Lm932_209e:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end AltinPeak_MapInit

