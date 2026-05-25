	.include "macros.inc"

.thumb_func_start Func_8091c44
	push	{r5, r6, r7, lr}
	mov	r7, r1
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L91c76
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L91c76
	ldr	r3, [r0, #0x50]
	mov	r6, r3
	mov	r5, #0
	add	r6, #0x24
	b	.L91c66
.L91c64:
	add	r5, #1
.L91c66:
	cmp	r5, #0x59
	bgt	.L91c76
	mov	r0, #1
	bl	Func_80030f8
	ldrb	r3, [r6]
	cmp	r7, r3
	beq	.L91c64
.L91c76:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8091c44

.thumb_func_start Func_8091c7c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r8, r0
	ldr	r6, [r3]
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r6, r0
	ldr	r0, [r3]
	sub	sp, #4
	mov	r9, r1
	bl	Func_808d394
	mov	r2, #0
	ldrsh	r1, [r0, r2]
	mov	r0, #0xfc
	lsl	r0, #1
	add	r3, r6, r0
	ldr	r3, [r3]
	mov	r11, r1
	mov	r1, #0xfe
	lsl	r1, #1
	mov	r2, #1
	mov	r10, r3
	add	r3, r6, r1
	ldr	r5, [r3]
	str	r2, [sp]
	ldr	r2, =iwram_3001c94
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L91cda
	mov	r7, r2
.L91cc6:
	mov	r0, #1
	bl	Func_80030f8
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L91cc6
	b	.L91cda
.L91cd4:
	mov	r0, #1
	bl	Func_80030f8
.L91cda:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.L91cd4
	mov	r0, #3
	bl	Func_80030f8
	mov	r3, r9
	cmp	r3, #0
	bne	.L91d0e
	mov	r0, r10
	ldrh	r2, [r0, #0xe]
	ldrh	r3, [r0, #0xa]
	add	r1, r2, r3
	cmp	r5, #0
	beq	.L91d06
	ldrh	r2, [r5, #0xe]
	ldrh	r3, [r5, #0xa]
	add	r2, r3
	cmp	r1, r2
	bge	.L91d06
	mov	r1, r2
.L91d06:
	cmp	r1, #0xf
	ble	.L91d0e
	mov	r1, #0
	str	r1, [sp]
.L91d0e:
	ldr	r2, =0xcc2
	add	r3, r6, r2
	add	r2, #2
	mov	r0, #0
	ldrsh	r1, [r3, r0]
	add	r3, r6, r2
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r0, [sp]
	mov	r3, #0
	bl	_Func_8028df4
	mov	r5, r0
	cmp	r5, #0
	beq	.L91d48
	mov	r1, #4
	mov	r0, r8
	bl	Func_80924d4
	mov	r0, r11
	bl	_Func_8019e48
	bl	_Func_8019a54
	mov	r0, r8
	mov	r1, #4
	bl	Func_8091c44
	b	.L91d62
.L91d48:
	mov	r1, #3
	mov	r0, r8
	bl	Func_80924d4
	mov	r0, r11
	bl	_Func_8019e48
	bl	_Func_8019a54
	mov	r0, r8
	mov	r1, #3
	bl	Func_8091c44
.L91d62:
	mov	r0, r5
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8091c7c

.thumb_func_start Func_8091d84
	push	{lr}
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	_Func_8028df4
	pop	{r1}
	bx	r1
.func_end Func_8091d84

.thumb_func_start Func_8091d94
	push	{r5, r6, lr}
	mov	r6, r1
	mov	r5, r0
	bl	_Func_8078e28
	mov	r0, #0x53
	bl	_Func_80f9080
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, r6
	mov	r1, #4
	bl	_Func_8019908
	ldr	r0, =0x1e
	mov	r1, #3
	bl	_Func_801776c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8091d94

.thumb_func_start Func_8091dc8
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r5, [r3]
	lsl	r2, #1
	add	r3, r5, r2
	add	r2, #8
	ldr	r0, [r3]
	add	r3, r5, r2
	ldr	r1, [r3]
	bl	Func_808fefc
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8091dc8

.thumb_func_start Func_8091df4
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r5, [r3]
	lsl	r2, #1
	add	r3, r5, r2
	add	r2, #8
	ldr	r0, [r3]
	add	r3, r5, r2
	ldr	r1, [r3]
	bl	Func_80901c0
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0
	strh	r3, [r2]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8091df4

.thumb_func_start Func_8091e20
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_80030f8
	pop	{r0}
	bx	r0
.func_end Func_8091e20

.thumb_func_start Func_8091e3c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb8
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r2, =0x3e7
	mov	r4, #0xe0
	strh	r2, [r3]
	ldr	r2, =ewram_2000240
	lsl	r4, #1
	add	r3, r2, r4
	strh	r0, [r3]
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r2, r0
	strh	r1, [r3]
	bx	lr
.func_end Func_8091e3c

.thumb_func_start Func_8091e6c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb8
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r2, =0x3e7
	mov	r4, #0xe2
	strh	r2, [r3]
	ldr	r2, =ewram_2000240
	lsl	r4, #1
	add	r3, r2, r4
	strh	r0, [r3]
	mov	r0, #0xe3
	lsl	r0, #1
	add	r3, r2, r0
	strh	r1, [r3]
	bx	lr
.func_end Func_8091e6c

.thumb_func_start Func_8091e9c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb8
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	strh	r0, [r3]
	bx	lr
.func_end Func_8091e9c

.thumb_func_start Func_8091eb0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r6, r1
	ldr	r7, [r3]
	mov	r5, r0
	bl	Func_808b05c
	mov	r1, #0xbe
	lsl	r1, #1
	add	r3, r7, r1
	strh	r0, [r3]
	cmp	r5, #0x62
	bne	.L91ed8
	cmp	r6, #0
	bne	.L91ed8
	ldr	r3, =ewram_2000240
	ldr	r2, =0x21
	add	r1, #0x5a
	add	r3, r1
	strh	r2, [r3]
.L91ed8:
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r7, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #3
	bne	.L91ef8
	ldr	r3, =ewram_2000240
	add	r2, #0x56
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_808ba1c
	add	r0, #8
	bl	Func_808adf0
.L91ef8:
	mov	r0, r5
	mov	r1, r6
	bl	Func_808b320
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8091eb0

.thumb_func_start Func_8091f14
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r5, #0x80
	ldr	r3, [r3]
	lsl	r5, #4
	mov	r8, r3
	and	r5, r0
	mov	r3, #0xff
	mov	r7, r1
	and	r0, r3
	cmp	r5, #0
	bne	.L91f34
	bl	Func_809537c
.L91f34:
	mov	r1, #0x96
	lsl	r1, #1
	ldr	r6, =ewram_2000240
	add	r3, r7, r1
	mov	r1, #0x8d
	lsl	r1, #2
	orr	r3, r5
	add	r2, r6, r1
	strh	r3, [r2]
	mov	r0, r7
	bl	Func_808b074
	mov	r3, #0xbe
	lsl	r3, #1
	add	r3, r8
	strh	r0, [r3]
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L91f74
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r6, r1
	ldr	r0, [r3]
	bl	Func_808ba1c
	add	r0, #8
	bl	Func_808adf0
.L91f74:
	mov	r1, #0
	mov	r0, #0
	bl	Func_808b320
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8091f14

.thumb_func_start Func_8091f90
	ldr	r3, =ewram_2000240
	mov	r4, #0xe7
	lsl	r4, #1
	add	r2, r3, r4
	strh	r0, [r2]
	mov	r2, #0xe8
	lsl	r2, #1
	add	r3, r2
	strh	r1, [r3]
	bx	lr
.func_end Func_8091f90

.thumb_func_start Func_8091fa8
	ldr	r3, =ewram_2000240
	mov	r4, #0xe9
	lsl	r4, #1
	add	r2, r3, r4
	strh	r0, [r2]
	mov	r2, #0xea
	lsl	r2, #1
	add	r3, r2
	strh	r1, [r3]
	bx	lr
.func_end Func_8091fa8

.thumb_func_start Func_8091fc0
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	ldr	r3, =ewram_2000240
	mov	r12, r3
	mov	r3, #0xe0
	lsl	r3, #1
	add	r3, r12
	strh	r0, [r3]
	mov	r3, #0xe1
	lsl	r3, #1
	add	r3, r12
	strh	r1, [r3]
	mov	r3, #0xb8
	lsl	r3, #1
	add	r2, r3
	ldr	r3, =0x3e7
	strh	r3, [r2]
	bx	lr
.func_end Func_8091fc0

.thumb_func_start Func_8091ff0
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =0xcc8
	ldr	r3, [r3]
	mov	r5, r0
	add	r3, r2
	strh	r5, [r3]
	mov	r2, #1
	lsl	r3, r5, #16
	asr	r3, #16
	neg	r2, r2
	cmp	r3, r2
	bne	.L9200c
	ldr	r5, =0x121
.L9200c:
	mov	r0, #0x95
	lsl	r0, #1
	bl	_Func_80f9080
	mov	r0, r5
	bl	_Func_80f9080
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8091ff0

.thumb_func_start Func_809202c
	push	{lr}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =0xcc8
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L92046
	bl	_Func_80f9080
.L92046:
	pop	{r0}
	bx	r0
.func_end Func_809202c

.thumb_func_start Func_8092054
	push	{lr}
	bl	Func_808ba1c
	cmp	r0, #0
	bne	.L92060
	mov	r0, #0
.L92060:
	pop	{r1}
	bx	r1
.func_end Func_8092054

.thumb_func_start Func_8092064
	push	{r5, r6, lr}
	mov	r6, r1
	mov	r5, r2
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L92076
	str	r5, [r0, #0x34]
	str	r6, [r0, #0x30]
.L92076:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8092064

.thumb_func_start Func_809207c
	push	{r5, lr}
	mov	r5, r1
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L9209a
	mov	r1, r0
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	mov	r1, r5
	bl	Func_8093a6c
.L9209a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_809207c

.thumb_func_start Func_80920a0
	push	{lr}
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L920ba
	mov	r1, r0
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	bl	_Func_800c4ac
.L920ba:
	pop	{r0}
	bx	r0
.func_end Func_80920a0

.thumb_func_start Func_80920c0
	push	{r5, r6, lr}
	mov	r6, r1
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L920de
	mov	r0, r6
	bl	Func_8092054
	ldr	r1, =Data_9ff40
	str	r0, [r5, #0x68]
	mov	r0, r5
	bl	Func_8093a6c
.L920de:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80920c0

.thumb_func_start Func_80920e8
	push	{lr}
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L920f6
	bl	_Func_800c4ec
.L920f6:
	pop	{r0}
	bx	r0
.func_end Func_80920e8

.thumb_func_start Func_80920fc
	push	{r5, r6, lr}
	mov	r6, r1
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L92122
	mov	r1, r5
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	mov	r1, r6
	bl	Func_8093a6c
	mov	r0, r5
	bl	_Func_800c4ec
.L92122:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80920fc

.thumb_func_start Func_8092128
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L92150
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	bl	_Func_800c4ac
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	_Func_800d14c
.L92150:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8092128

.thumb_func_start Func_8092158
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L92186
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	bl	_Func_800c4ac
	mov	r0, r5
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	bl	_Func_800d14c
	mov	r0, r5
	bl	_Func_800ca6c
.L92186:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8092158

.thumb_func_start Func_809218c
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L921bc
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	bl	_Func_800c4ac
	mov	r0, r5
	mov	r1, #2
	bl	_Func_800c300
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	_Func_800d14c
.L921bc:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809218c

.thumb_func_start Func_80921c4
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L92202
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	bl	_Func_800c4ac
	mov	r0, r5
	mov	r1, #2
	bl	_Func_800c300
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	_Func_800d14c
	mov	r0, r5
	bl	_Func_800ca6c
	mov	r0, r5
	mov	r1, #1
	bl	_Func_800c300
.L92202:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80921c4

.thumb_func_start Func_8092208
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r8, r1
	mov	r10, r2
	bl	Func_808ba1c
	mov	r6, r0
	cmp	r6, #0
	beq	.L92280
	mov	r2, #0xa
	ldrsh	r3, [r6, r2]
	mov	r5, r3
	cmp	r3, #0
	bge	.L9222c
	add	r5, #0xf
.L9222c:
	asr	r5, #4
	lsl	r5, #4
	mov	r2, r6
	add	r2, #0x5b
	sub	r5, r3, r5
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, r6
	bl	_Func_800c4ac
	lsl	r5, #16
	mov	r0, r6
	mov	r1, #2
	bl	_Func_800c300
	asr	r5, #16
	mov	r3, #8
	ldr	r1, [r6, #8]
	sub	r3, r5
	lsl	r3, #16
	add	r1, r3
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r0, r6
	bl	_Func_800d14c
	mov	r0, r6
	bl	_Func_800ca6c
	mov	r0, r7
	mov	r1, r8
	bl	Func_8092b08
	mov	r3, r10
	lsl	r0, r3, #16
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	add	r3, r0
	ldr	r2, [r6, #0xc]
	mov	r0, r6
	bl	_Func_800d14c
.L92280:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8092208

.thumb_func_start Func_809228c
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L922bc
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	bl	_Func_800c4ac
	ldr	r1, [r5, #8]
	lsl	r3, r6, #16
	add	r1, r3
	ldr	r3, [r5, #0x10]
	lsl	r0, r7, #16
	add	r3, r0
	ldr	r2, [r5, #0xc]
	mov	r0, r5
	bl	_Func_800d14c
.L922bc:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809228c

.thumb_func_start Func_80922c4
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L922fc
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	bl	_Func_800c4ac
	mov	r0, r5
	mov	r1, #2
	bl	_Func_800c300
	ldr	r1, [r5, #8]
	lsl	r3, r6, #16
	add	r1, r3
	ldr	r3, [r5, #0x10]
	lsl	r0, r7, #16
	add	r3, r0
	ldr	r2, [r5, #0xc]
	mov	r0, r5
	bl	_Func_800d14c
.L922fc:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80922c4

.thumb_func_start Func_8092304
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r6, r1
	mov	r8, r2
	bl	Func_808ba1c
	mov	r1, r6
	mov	r7, r0
	mov	r2, r8
	mov	r0, r5
	bl	Func_80922c4
	cmp	r7, #0
	beq	.L92332
	mov	r0, r7
	bl	_Func_800ca6c
	mov	r0, r7
	mov	r1, #1
	bl	_Func_800c300
.L92332:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8092304

.thumb_func_start Func_809233c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	mov	r10, r3
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L923a6
	ldr	r2, =0x4ccc
	mov	r0, r6
	ldr	r1, =0x9999
	bl	Func_8092064
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_8092054
	cmp	r0, #0
	beq	.L9237c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r6
	bl	Func_80923e4
.L9237c:
	mov	r2, r5
	mov	r3, #0
	add	r2, #0x5b
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #2
	bl	_Func_800c300
	mov	r2, r8
	mov	r0, r6
	mov	r1, r7
	bl	Func_809228c
	ldr	r1, =.L9fbcc
	mov	r0, r5
	bl	_Func_800c2d8
	mov	r3, r5
	add	r3, #0x64
	mov	r2, r10
	strh	r2, [r3]
.L923a6:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809233c

.thumb_func_start Func_80923c4
	push	{r5, lr}
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L923dc
	bl	_Func_800ca6c
	mov	r0, r5
	mov	r1, #1
	bl	_Func_800c300
.L923dc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80923c4

.thumb_func_start Func_80923e4
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L9244a
	bl	_Func_800c4ac
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x2c]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x38]
	str	r6, [r5, #8]
	str	r7, [r5, #0x10]
	mov	r3, r5
	add	r3, #0x55
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L9244a
	mov	r3, r5
	add	r3, #0x22
	mov	r1, r6
	ldrb	r0, [r3]
	cmp	r1, #0
	bge	.L9242a
	ldr	r3, =0xffff
	add	r1, r3
.L9242a:
	mov	r2, r7
	asr	r1, #16
	cmp	r2, #0
	bge	.L92436
	ldr	r3, =0xffff
	add	r2, r3
.L92436:
	asr	r2, #16
	bl	_Func_8011f54
	ldr	r3, [r5, #0xc]
	ldr	r2, [r5, #0x14]
	lsl	r0, #16
	sub	r3, r2
	add	r3, r0
	str	r3, [r5, #0xc]
	str	r0, [r5, #0x14]
.L9244a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80923e4

.thumb_func_start Func_8092454
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	mov	r6, r2
	mov	r8, r3
	bl	Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L924c4
	bl	_Func_800c4ac
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x2c]
	mov	r3, #0x80
	lsl	r3, #24
	mov	r2, r8
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x38]
	str	r7, [r5, #8]
	str	r6, [r5, #0xc]
	str	r2, [r5, #0x10]
	mov	r3, r5
	add	r3, #0x55
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L924c4
	mov	r3, r5
	add	r3, #0x22
	mov	r1, r7
	ldrb	r0, [r3]
	cmp	r1, #0
	bge	.L924a4
	ldr	r3, =0xffff
	add	r1, r3
.L924a4:
	mov	r3, r8
	asr	r1, #16
	cmp	r3, #0
	bge	.L924b0
	ldr	r2, =0xffff
	add	r3, r2
.L924b0:
	asr	r2, r3, #16
	bl	_Func_8011f54
	ldr	r3, [r5, #0xc]
	ldr	r2, [r5, #0x14]
	lsl	r0, #16
	sub	r3, r2
	add	r3, r0
	str	r3, [r5, #0xc]
	str	r0, [r5, #0x14]
.L924c4:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8092454

.thumb_func_start Func_80924d4
	push	{r5, lr}
	mov	r5, r1
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L924e6
	mov	r1, r5
	bl	_Func_800c300
.L924e6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80924d4

.thumb_func_start Func_80924ec
	push	{r5, lr}
	mov	r5, r1
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L924fe
	mov	r1, r5
	bl	_Func_800c344
.L924fe:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80924ec

.thumb_func_start Func_8092504
	push	{r5, r6, r7, lr}
	sub	sp, #4
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L9253e
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L9253e
	ldr	r3, [r0, #0x50]
	mov	r6, r3
	add	r6, #0x24
	ldrb	r3, [r6]
	mov	r7, sp
	mov	r5, #0
	str	r3, [r7]
	b	.L9252c
.L9252a:
	add	r5, #1
.L9252c:
	cmp	r5, #0x59
	bgt	.L9253e
	mov	r0, #1
	bl	Func_80030f8
	ldrb	r2, [r6]
	ldr	r3, [r7]
	cmp	r3, r2
	beq	.L9252a
.L9253e:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8092504

.thumb_func_start Func_8092548
	push	{r5, lr}
	mov	r5, r0
	bl	Func_80924d4
	mov	r0, r5
	bl	Func_8092504
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8092548

