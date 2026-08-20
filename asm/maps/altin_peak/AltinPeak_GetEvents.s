	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start AltinPeak_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4d
	cmp	r2, r3
	bne	.Lm932_169e
	ldr	r0, =0x8fd
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_169a
	ldr	r0, =gScript_882__0200cd6c
	b	.Lm932_1704
.Lm932_169a:
	ldr	r0, =.Lm932_4d24
	b	.Lm932_1704
.Lm932_169e:
	ldr	r3, =0x4e
	cmp	r2, r3
	bne	.Lm932_16a8
	ldr	r0, =.Lm932_4d9c
	b	.Lm932_1704
.Lm932_16a8:
	ldr	r3, =0x4f
	cmp	r2, r3
	bne	.Lm932_16b2
	ldr	r0, =.Lm932_4dc0
	b	.Lm932_1704
.Lm932_16b2:
	ldr	r3, =0x50
	cmp	r2, r3
	bne	.Lm932_16bc
	ldr	r0, =gScript_882__0200ce5c
	b	.Lm932_1704
.Lm932_16bc:
	ldr	r3, =0x51
	cmp	r2, r3
	bne	.Lm932_16c6
	ldr	r0, =gScript_881__0200cebc
	b	.Lm932_1704
.Lm932_16c6:
	ldr	r3, =0x52
	cmp	r2, r3
	bne	.Lm932_16d0
	ldr	r0, =.Lm932_4f34
	b	.Lm932_1704
.Lm932_16d0:
	ldr	r3, =0x53
	cmp	r2, r3
	bne	.Lm932_16da
	ldr	r0, =.Lm932_4fb8
	b	.Lm932_1704
.Lm932_16da:
	ldr	r3, =0x54
	cmp	r2, r3
	bne	.Lm932_16e4
	ldr	r0, =.Lm932_506c
	b	.Lm932_1704
.Lm932_16e4:
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.Lm932_16ee
	ldr	r0, =.Lm932_50cc
	b	.Lm932_1704
.Lm932_16ee:
	ldr	r3, =0x56
	cmp	r2, r3
	bne	.Lm932_16f8
	ldr	r0, =.Lm932_512c
	b	.Lm932_1704
.Lm932_16f8:
	ldr	r3, =0x57
	cmp	r2, r3
	bne	.Lm932_1702
	ldr	r0, =.Lm932_5150
	b	.Lm932_1704
.Lm932_1702:
	ldr	r0, =.Lm932_4d18
.Lm932_1704:
	pop	{r1}
	bx	r1
.func_end AltinPeak_GetEvents

