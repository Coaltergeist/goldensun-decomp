	.include "macros.inc"

.thumb_func_start OvlFunc_937_200807c
	push	{r5, lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x64
	cmp	r2, r3
	bne	.Lb6
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #9
	blt	.Laa
	cmp	r3, #0xf
	ble	.La6
	cmp	r3, #0x11
	bne	.Laa
.La6:
	ldr	r5, =.L8d4
	b	.Lac
.Laa:
	ldr	r5, =gScript_906__0200879c
.Lac:
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	b	.Lc2
.Lb6:
	ldr	r3, =0x65
	cmp	r2, r3
	bne	.Lc0
	ldr	r0, =.La0c
	b	.Lc2
.Lc0:
	ldr	r0, =.L784
.Lc2:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_937_200807c

.thumb_func_start OvlFunc_937_20080e4
	push	{lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x64
	cmp	r2, r3
	bne	.L116
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #9
	blt	.L112
	cmp	r3, #0xf
	ble	.L10e
	cmp	r3, #0x11
	bne	.L112
.L10e:
	ldr	r0, =.Lc88
	b	.L122
.L112:
	ldr	r0, =.La48
	b	.L122
.L116:
	ldr	r3, =0x65
	cmp	r2, r3
	bne	.L120
	ldr	r0, =.Leb0
	b	.L122
.L120:
	ldr	r0, =.La3c
.L122:
	pop	{r1}
	bx	r1
.func_end OvlFunc_937_20080e4

