	.include "macros.inc"

.thumb_func_start OvlFunc_d18
	ldr	r0, =.L191c
	bx	lr
.func_end OvlFunc_d18

.thumb_func_start OvlFunc_d20
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x98
	cmp	r2, r3
	bne	.Ld46
	ldr	r0, =0x96f
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ld42
	ldr	r0, =.L19d4
	b	.Ld5c
.Ld42:
	ldr	r0, =.L1974
	b	.Ld5c
.Ld46:
	ldr	r3, =0x9d
	cmp	r2, r3
	bne	.Ld50
	ldr	r0, =.L1a4c
	b	.Ld5c
.Ld50:
	ldr	r3, =0x9e
	cmp	r2, r3
	bne	.Ld5a
	ldr	r0, =.L1aac
	b	.Ld5c
.Ld5a:
	ldr	r0, =.L195c
.Ld5c:
	pop	{r1}
	bx	r1
.func_end OvlFunc_d20

.thumb_func_start OvlFunc_d88
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x98
	cmp	r2, r3
	bne	.Ldae
	ldr	r0, =0x96f
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ldaa
	ldr	r0, =.L1bcc
	b	.Ldc4
.Ldaa:
	ldr	r0, =.L1b48
	b	.Ldc4
.Ldae:
	ldr	r3, =0x9d
	cmp	r2, r3
	bne	.Ldb8
	ldr	r0, =.L1c80
	b	.Ldc4
.Ldb8:
	ldr	r3, =0x9e
	cmp	r2, r3
	bne	.Ldc2
	ldr	r0, =.L1ce0
	b	.Ldc4
.Ldc2:
	ldr	r0, =.L1b3c
.Ldc4:
	pop	{r1}
	bx	r1
.func_end OvlFunc_d88

.thumb_func_start OvlFunc_df0
	push	{lr}
	ldr	r0, =0x98a
	bl	__Func_79338
	cmp	r0, #0
	beq	.Ldfe
	b	.Lf2c
.Ldfe:
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	bne	.Le0c
	b	.Lf2c
.Le0c:
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Le32
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xb
	bl	__Func_923e4
.Le32:
	mov	r1, #8
	neg	r1, r1
	mov	r2, #0x10
	mov	r0, #0xb
	bl	__Func_9228c
	mov	r0, #0xb
	bl	__Func_923c4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xb
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	ldr	r0, =0x23da
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.Leba
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0xe8
	mov	r1, #0x98
	mov	r0, #0xb
	bl	__Func_9218c
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__Func_79374
	mov	r0, #0xb
	bl	__Func_923c4
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_924d4
	ldr	r1, =ewram_240
	mov	r0, #0xe2
	ldr	r3, =0x88
	lsl	r0, #1
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x1e
	strh	r3, [r2]
	b	.Lf28
.Leba:
	ldr	r3, =iwram_1ebc
	mov	r0, #0xec
	ldr	r2, [r3]
	lsl	r0, #1
	add	r2, r0
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lef2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xb
	bl	__Func_92128
.Lef2:
	mov	r0, #0xb
	bl	__Func_923c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #0
	mov	r2, #0x10
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
.Lf28:
	bl	__Func_91750
.Lf2c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_df0

.thumb_func_start OvlFunc_f44
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xb
	bl	__Func_9280c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0
	bl	__Func_92848
	ldr	r0, =0x23d9
	bl	__Func_92b94
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.Lfa4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xb
	bl	__Func_92128
.Lfa4:
	mov	r0, #0xb
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_923e4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__Func_79358
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_f44

.thumb_func_start OvlFunc_fd0
	push	{r5, lr}
	ldr	r5, =0x23cc
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L1016
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L100c
	ldr	r0, =0x96f
	bl	__Func_79338
	cmp	r0, #0
	bne	.L100c
	mov	r0, r5
	add	r0, #8
	bl	__Func_92b94
.L100c:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
	b	.L102e
.L1016:
	ldr	r3, =iwram_1ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #0
	bl	__Func_92f84
.L102e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_fd0

.thumb_func_start OvlFunc_1040
	push	{lr}
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1060
	ldr	r0, =0x96f
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1060
	ldr	r0, =0x23d5
	bl	__Func_92b94
	b	.L1066
.L1060:
	ldr	r0, =0x23d2
	bl	__Func_92b94
.L1066:
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_1040

.thumb_func_start OvlFunc_1080
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r5, [r3]
	bl	__Func_916b0
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L10ba
	ldr	r0, =0x9a3
	bl	__Func_79374
	ldr	r0, =0x9a5
	bl	__Func_79374
	ldr	r0, =0x9a4
	bl	__Func_79374
	ldr	r0, =0x9a6
	bl	__Func_79374
	ldr	r0, =0x9a5
	bl	__Func_79358
	ldr	r0, =0x9a4
	bl	__Func_79358
.L10ba:
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_91e9c
	bl	__Func_91df4
	bl	__Func_91e20
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1080

.thumb_func_start OvlFunc_10f0
	push	{lr}
	bl	__Func_93c00
	pop	{r0}
	bx	r0
.func_end OvlFunc_10f0

.thumb_func_start OvlFunc_10fc
	push	{lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	bl	__Func_916b0
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1e
	bgt	.L1138
	mov	r0, #8
	bl	OvlFunc_11f8
	mov	r3, #0x1b
	mov	r2, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1d
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	ldr	r0, =0x9a2
	bl	__Func_79358
.L1138:
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_10fc

.thumb_func_start OvlFunc_1148
	push	{lr}
	bl	OvlFunc_3a8
	bl	OvlFunc_1158
	pop	{r0}
	bx	r0
.func_end OvlFunc_1148

.thumb_func_start OvlFunc_1158
	push	{lr}
	sub	sp, #8
	bl	__Func_916b0
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x2a
	ble	.L11b4
	mov	r3, #0x6b
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r1, #0x11
	mov	r2, #1
	mov	r0, #0x6c
	bl	__Func_10704
	mov	r0, #8
	bl	__Func_9163c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xae
	mov	r2, #0x90
	lsl	r2, #17
	mov	r0, #0xa
	lsl	r1, #18
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x9a
	bl	__Func_f9080
	ldr	r0, =0x9a5
	bl	__Func_79358
.L11b4:
	bl	__Func_91750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1158

