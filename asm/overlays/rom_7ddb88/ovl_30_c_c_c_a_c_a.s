	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_2008310
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	str	r2, [sp]
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	str	r1, [sp, #4]
	lsl	r2, #1
	add	r3, r2
	mov	r5, r0
	ldr	r0, [r3]
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, r5
	bl	__Func_8092054
	mov	r7, r0
	bl	__Func_80916b0
	ldr	r3, [sp, #4]
	lsl	r3, #16
	mov	r11, r3
	ldr	r3, [r6, #8]
	ldr	r2, =0xfff00000
	add	r3, r11
	mov	r5, #0x80
	lsl	r5, #12
	and	r3, r2
	add	r1, r3, r5
	ldr	r3, [sp]
	lsl	r3, #16
	mov	r9, r3
	ldr	r3, [r6, #0x10]
	add	r3, r9
	mov	r10, r2
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r6, #0x30]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	mov	r8, r2
	str	r2, [r6, #0x34]
	mov	r0, r6
	ldr	r2, [r6, #0xc]
	bl	__Func_800d14c
	mov	r0, r6
	mov	r1, #0x1b
	bl	__Func_800c300
	ldr	r3, [r7, #8]
	mov	r2, r10
	add	r3, r11
	and	r3, r2
	add	r1, r3, r5
	ldr	r3, [r7, #0x10]
	add	r3, r9
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r7, #0x30]
	mov	r2, r8
	add	r3, r5
	str	r2, [r7, #0x34]
	mov	r0, r7
	ldr	r2, [r7, #0xc]
	bl	__Func_800d14c
	ldr	r3, [sp, #4]
	cmp	r3, #0
	blt	.L3b4
	ldr	r2, [sp]
	cmp	r2, #0
	bge	.L3be
.L3b4:
	mov	r0, r7
	mov	r1, #4
	bl	__Func_800c300
	b	.L3c6
.L3be:
	mov	r0, r7
	mov	r1, #3
	bl	__Func_800c300
.L3c6:
	mov	r0, #0xe2
	bl	__Func_80f9080
	mov	r0, r6
	bl	__Func_800ca6c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_80f9080
	mov	r0, r7
	mov	r1, #2
	bl	__Func_800c300
	bl	__Func_8091750
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008310

.thumb_func_start OvlFunc_955_2008400
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #8
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r6, r3, #20
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	mov	r5, #0
	mov	r7, #0x20
	cmp	r3, #0xc
	ble	.L424
	mov	r7, #0x21
.L424:
	mov	r0, r7
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, r6
	bne	.L4ae
	cmp	r6, #0x33
	ble	.L448
	ldr	r3, =iwram_3001ae8
	ldr	r3, [r3]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L456
	mov	r5, #0x40
	neg	r5, r5
	b	.L456
.L448:
	ldr	r3, =iwram_3001ae8
	ldr	r3, [r3]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L456
	mov	r5, #0x40
.L456:
	cmp	r5, #0
	beq	.L4ae
	mov	r1, r5
	mov	r0, r7
	mov	r2, #0
	bl	OvlFunc_955_2008310
	mov	r3, #0x30
	str	r3, [sp]
	mov	r1, #0xa
	mov	r2, #5
	mov	r3, #6
	mov	r5, #0xa
	mov	r0, #0x78
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x20
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	mov	r1, #0x1c
	asr	r6, r3, #20
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x34
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x21
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r6, r3, #20
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x34
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	bl	__Func_8010704
.L4ae:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008400

.thumb_func_start OvlFunc_955_20084c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	ldr	r3, =ewram_2000240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r3, [r3]
	mov	r9, r3
	mov	r5, r0
	mov	r0, r9
	mov	r10, r2
	sub	sp, #4
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, r5
	bl	__Func_8092054
	ldrh	r3, [r6, #6]
	mov	r2, #0x80
	lsl	r2, #5
	add	r2, r3
	mov	r3, #0xe0
	mov	r5, r0
	lsl	r3, #8
	and	r2, r3
	ldr	r1, [r5, #8]
	lsr	r3, r7, #31
	add	r3, r7, r3
	mov	r8, r2
	asr	r3, #1
	asr	r2, r1, #20
	mov	r0, #0
	cmp	r2, r3
	beq	.L514
	mov	r0, #1
.L514:
	mov	r3, r10
	lsl	r3, #19
	lsl	r7, #19
	mov	r10, r3
	cmp	r0, #0
	beq	.L530
	sub	r3, r7, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r1, #0
	mov	r11, r3
	str	r1, [sp]
	b	.L542
.L530:
	ldr	r3, [r5, #0x10]
	mov	r1, r10
	mov	r2, #0
	sub	r3, r1, r3
	mov	r11, r2
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [sp]
.L542:
	bl	__Func_80916b0
	mov	r0, r9
	mov	r1, #8
	bl	__Func_80924d4
	mov	r0, #6
	bl	__Func_809163c
	ldr	r3, =0x3333
	mov	r2, #0x80
	lsl	r2, #8
	str	r3, [r5, #0x34]
	mov	r3, r8
	str	r2, [r5, #0x30]
	ldr	r2, =.L40c0
	cmp	r3, #0
	bge	.L56a
	ldr	r1, =0x3fff
	add	r3, r1
.L56a:
	asr	r3, #14
	ldrb	r1, [r2, r3]
	mov	r0, r5
	bl	__Func_800c300
	mov	r3, r10
	mov	r2, #0
	mov	r1, r7
	mov	r0, r5
	bl	__Func_800d14c
	mov	r0, #6
	bl	__Func_809163c
	mov	r0, r9
	mov	r1, #2
	bl	__Func_80924d4
	ldr	r1, =0xccc
	mov	r0, #0x1b
	bl	__Func_80048f4
	mov	r2, #0xf0
	lsl	r2, #1
	add	r0, r2
	mov	r1, r5
	ldr	r0, [r0]
	bl	__Func_800c4bc
	mov	r1, #0x80
	mov	r0, r9
	ldr	r2, =0x3333
	lsl	r1, #8
	bl	__Func_8092064
	mov	r0, r6
	mov	r1, #2
	bl	__Func_800c300
	ldr	r1, [r6, #8]
	ldr	r2, [sp]
	ldr	r3, [r6, #0x10]
	add	r1, r11
	add	r3, r2
	mov	r0, r6
	mov	r2, #0
	bl	__Func_800d14c
	mov	r0, #0xef
	bl	__Func_80f9080
	mov	r0, r6
	bl	__Func_800ca6c
	mov	r1, #1
	mov	r0, r6
	bl	__Func_800c300
	mov	r0, r5
	bl	__Func_800ca6c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_80f9080
	mov	r0, #0xd5
	bl	__Func_80f9080
	mov	r1, #1
	mov	r0, r5
	bl	__Func_800c300
	mov	r0, #0xf
	bl	__Func_809163c
	bl	__Func_8091750
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20084c0

.thumb_func_start OvlFunc_955_200862c
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0xe
	str	r3, [sp]
	mov	r5, #0xb
	mov	r1, #0xb
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0x64
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xf
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	str	r2, [sp]
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #4
	mov	r0, #0xd
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x10
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	str	r2, [sp]
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #4
	mov	r0, #0xd
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x11
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r2, r3, #20
	mov	r3, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xd
	mov	r1, #0x1c
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_200862c

