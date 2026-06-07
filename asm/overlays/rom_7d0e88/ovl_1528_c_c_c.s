	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_200a15c
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0xd
	bl	__Func_8092054
	ldr	r3, =iwram_3001f30
	ldr	r2, [r0, #8]
	ldr	r6, [r3]
	ldr	r3, [r5, #8]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L2198
	ldr	r2, [r0, #0x10]
	ldr	r3, [r5, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L2198
	ldr	r0, =0x203
	bl	__Func_8079358
	mov	r2, r6
	add	r2, #0x35
	mov	r3, #1
	strb	r3, [r2]
	b	.L219e
.L2198:
	ldr	r0, =0x203
	bl	__Func_8079374
.L219e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a15c

.thumb_func_start OvlFunc_947_200a1ac
	push	{r5, r6, lr}
	mov	r0, #0xe
	sub	sp, #8
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, #0xd
	bl	__Func_8092054
	mov	r5, #0x80
	lsl	r5, #9
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__Func_8092054
	str	r5, [r0, #0x1c]
	mov	r0, #0xd
	bl	__Func_8092054
	ldr	r0, [r0, #0x50]
	mov	r2, #0xd
	ldrb	r1, [r0, #9]
	neg	r2, r2
	mov	r3, r2
	mov	r4, #8
	and	r3, r1
	orr	r3, r4
	strb	r3, [r0, #9]
	ldr	r1, [r6, #0x50]
	ldrb	r3, [r1, #9]
	and	r2, r3
	ldr	r3, =0x6666
	orr	r2, r4
	strb	r2, [r1, #9]
	str	r3, [r6, #0x34]
	ldr	r3, =0xcccc
	mov	r2, #0x80
	ldr	r1, [r6, #8]
	str	r3, [r6, #0x30]
	mov	r0, r6
	ldr	r3, [r6, #0x10]
	lsl	r2, #14
	bl	__Func_800d14c
	mov	r0, #0xe
	bl	__Func_80923c4
	mov	r3, #0x16
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0xe
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a1ac

.thumb_func_start OvlFunc_947_200a230
	push	{r5, r6, r7, lr}
	ldr	r2, =iwram_3001e40
	ldr	r7, [r2]
	mov	r3, #2
	and	r7, r3
	sub	sp, #0x38
	cmp	r7, #0
	bne	.L22bc
	ldr	r3, [r2]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L2250
	mov	r0, #0x88
	bl	__Func_80f9080
.L2250:
	add	r6, sp, #0x10
	mov	r3, #0xa
	str	r3, [r6, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	ldr	r3, =0x19999
	str	r3, [r6, #0x10]
	str	r3, [r6, #0x14]
	bl	__Func_8004458
	ldr	r3, =0xffff000
	and	r3, r0
	strh	r3, [r6, #0x20]
	ldr	r3, =OvlFunc_947_20093b0
	str	r3, [r6, #0x24]
	bl	__Func_8004458
	lsl	r5, r0, #2
	add	r5, r0
	lsr	r5, #16
	mov	r2, #0xc0
	lsl	r2, #11
	lsl	r5, #16
	add	r5, r2
	neg	r5, r5
	lsr	r3, r5, #31
	add	r5, r3
	bl	__Func_8004458
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	mov	r2, #0xa0
	lsl	r2, #11
	lsl	r3, #16
	add	r3, r2
	neg	r3, r3
	str	r3, [sp]
	ldr	r3, =0x14d0000
	asr	r5, #1
	mov	r0, #0xa2
	mov	r1, #0xc0
	mov	r2, #0xe4
	str	r3, [sp, #8]
	lsl	r0, #17
	lsl	r1, #14
	lsl	r2, #16
	mov	r3, r5
	str	r7, [sp, #4]
	str	r6, [sp, #0xc]
	bl	OvlFunc_common0_10c
.L22bc:
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a230

.thumb_func_start OvlFunc_947_200a2d8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e40
	ldr	r7, [r3]
	mov	r3, #7
	and	r7, r3
	mov	r5, r0
	sub	sp, #0x38
	mov	r0, #0
	cmp	r7, #0
	bne	.L2368
	add	r2, sp, #0x10
	str	r3, [r2, #4]
	ldr	r3, =0xb333
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r10, r2
	bl	__Func_8004458
	lsl	r3, r0, #4
	add	r3, r0
	ldr	r2, [r5, #8]
	lsr	r3, #16
	sub	r3, #8
	mov	r8, r2
	lsl	r3, #16
	add	r8, r3
	bl	__Func_8004458
	lsl	r3, r0, #4
	add	r3, r0
	ldr	r6, [r5, #0xc]
	lsr	r3, #16
	lsl	r3, #16
	add	r6, r3
	bl	__Func_8004458
	lsl	r3, r0, #4
	add	r3, r0
	lsr	r3, #16
	ldr	r5, [r5, #0x10]
	sub	r3, #8
	lsl	r3, #16
	add	r5, r3
	bl	__Func_8004458
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsr	r0, #16
	mov	r3, #0xc0
	lsl	r3, #10
	lsl	r0, #16
	add	r0, r3
	mov	r1, #0xa
	bl	_Func_8000af0
	ldr	r3, =0x90001
	mov	r2, r10
	str	r0, [sp]
	str	r3, [sp, #8]
	str	r2, [sp, #0xc]
	mov	r0, r8
	mov	r1, r6
	mov	r2, r5
	mov	r3, #0
	str	r7, [sp, #4]
	bl	OvlFunc_common0_10c
	mov	r0, #0
.L2368:
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_200a2d8

.thumb_func_start OvlFunc_947_200a384
	push	{r5, lr}
	ldr	r0, =0x203
	sub	sp, #8
	bl	__Func_8079338
	mov	r5, r0
	cmp	r5, #0
	bne	.L2472
	ldr	r0, =0x202
	bl	__Func_8079358
	bl	__Func_80916b0
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r0, #0x9c
	mov	r1, #1
	mov	r2, #0xb8
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0xa
	mov	r2, #0x3c
	mov	r1, #0xa
	mov	r0, #0x49
	bl	__Func_8010424
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_947_200a230
	bl	__StartTask
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, =0x201
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2442
	mov	r0, #0xc
	bl	__Func_8092054
	ldr	r3, =OvlFunc_947_200a2d8
	mov	r1, #6
	str	r3, [r0, #0x6c]
	mov	r0, #0xc
	bl	__Func_80924d4
	mov	r0, #0xc
	bl	__Func_8092504
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r3, #0x12
	mov	r2, #0xd
	str	r5, [r0, #0x6c]
	mov	r1, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x11
	bl	__Func_8010704
	ldr	r0, =0x201
	bl	__Func_8079374
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_809207c
	b	.L2448
.L2442:
	mov	r0, #0x3c
	bl	__Func_809163c
.L2448:
	ldr	r0, =OvlFunc_947_200a230
	bl	__Func_8004278
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x48
	mov	r1, #0xa
	mov	r2, #0x3c
	mov	r3, #0xa
	bl	__Func_8010424
	mov	r0, #0x14
	bl	__Func_809163c
	bl	__Func_8091750
.L2472:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a384

.thumb_func_start OvlFunc_947_200a498
	push	{r5, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_8092054
	mov	r5, r0
	bl	__Func_80916b0
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	mov	r3, #1
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	asr	r1, #20
	asr	r2, #20
	mov	r3, #1
	mov	r0, #2
	bl	OvlFunc_947_2008528
	bl	__Func_8091750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a498

.thumb_func_start OvlFunc_947_200a4cc
	push	{r5, r6, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__Func_8092054
	mov	r5, r0
	bl	__Func_80916b0
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	mov	r3, #1
	str	r3, [sp]
	mov	r3, #0xff
	str	r3, [sp, #4]
	asr	r1, #20
	mov	r3, #1
	asr	r2, #20
	mov	r0, #2
	bl	OvlFunc_947_2008528
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x10
	bne	.L252a
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_8079338
	mov	r6, r0
	cmp	r6, #0
	bne	.L252a
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x9f
	bl	__Func_80f9080
	mov	r3, r5
	add	r3, #0x55
	strb	r6, [r3]
	ldr	r3, =0xfffe0000
	mov	r0, #0x81
	str	r3, [r5, #0x14]
	str	r3, [r5, #0xc]
	lsl	r0, #2
	bl	__Func_8079358
.L252a:
	bl	__Func_8091750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a4cc

.thumb_func_start OvlFunc_947_200a53c
	push	{r5, lr}
	sub	sp, #0x20
	bl	__Func_80916b0
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_947_2008758
	cmp	r0, #0
	beq	.L2566
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	bl	OvlFunc_947_20088ec
	b	.L2572
.L2566:
	bl	OvlFunc_947_200a498
	bl	OvlFunc_947_20083a8
	bl	OvlFunc_947_200a4cc
.L2572:
	bl	__Func_8091750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a53c

	.section .data
	.global .L2da8
	.global .L2dd2
	.global .L2dfc
	.global .L2e26
	.global .L2e50

.L2da8:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2da8, (0x2dd2-0x2da8)
.L2dd2:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2dd2, (0x2dfc-0x2dd2)
.L2dfc:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2dfc, (0x2e26-0x2dfc)
.L2e26:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e26, (0x2e50-0x2e26)
.L2e50:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e50, (0x2e7c-0x2e50)

	.section .bss
	.global .L3720
	.global .L372c
	.global .L3738

	.space	4

	.global	bss_36d0
bss_36d0:
	.space	0x50
	.ssize	bss_36d0

.L3720:
	.space	0xc
.L372c:
	.space	0xc
.L3738:
	.space	4
