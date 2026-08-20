	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SuhallaDesert_MapInit
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e70
	mov	r1, #0xe0
	ldr	r7, [r3]
	ldr	r3, [r3, #0x4c]
	lsl	r1, #1
	ldr	r2, =0x201
	add	r3, r1
	mov	r0, #0x84
	str	r2, [r3]
	lsl	r0, #2
	bl	__GetFlagByte
	cmp	r0, #0
	beq	.Lm960_ec0
	ldr	r3, =gState
	mov	r1, #0xf9
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #2
	mov	r1, #0xc8
	strb	r3, [r2]
	ldr	r0, =OvlFunc_960_2008400
	lsl	r1, #4
	bl	__StartTask
.Lm960_ec0:
	ldr	r5, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r6, =0xa4
	cmp	r2, r6
	beq	.Lm960_ed8
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lm960_ee4
.Lm960_ed8:
	ldr	r2, =0x500019e
	ldr	r3, =.Lm960_1a00
	ldrh	r2, [r2]
	strh	r2, [r3]
	bl	OvlFunc_960_2008d24
.Lm960_ee4:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	cmp	r2, r6
	bne	.Lm960_ef8
	bl	OvlFunc_960_2008f50
	b	.Lm960_f0c
.Lm960_ef8:
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lm960_f04
	bl	OvlFunc_960_2009094
	b	.Lm960_f0c
.Lm960_f04:
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
.Lm960_f0c:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.Lm960_f24
	ldrh	r2, [r7, #0x14]
	ldr	r3, =0xfdff
	and	r3, r2
	strh	r3, [r7, #0x14]
.Lm960_f24:
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end SuhallaDesert_MapInit

