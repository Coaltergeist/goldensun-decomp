	.include "macros.inc"

.thumb_func_start OvlFunc_922_2009c18
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r4, r0
	mov	r5, r1
	ldr	r0, [sp, #0x34]
	ldr	r1, [sp, #0x38]
	mov	r9, sp
	mov	r11, r3
	ldr	r3, =.L2418
	mov	r6, r2
	mov	r2, r9
	mov	r8, r0
	mov	r10, r1
	ldmia	r3!, {r0, r1, r7}
	stmia	r2!, {r0, r1, r7}
	mov	r3, r6
	mov	r0, #0xde
	mov	r1, r4
	mov	r2, r5
	bl	__Func_800c150
	mov	r6, r0
	cmp	r6, #0
	bne	.L1c56
	b	.L1d5a
.L1c56:
	mov	r1, r8
	mov	r5, #0xf
	add	r1, #1
	and	r1, r5
	ldr	r7, [r6, #0x50]
	bl	__Func_800c300
	mov	r3, r8
	and	r3, r5
	lsl	r5, r3, #2
	mov	r2, r9
	ldr	r1, [r2, r5]
	mov	r0, r6
	bl	__Func_800c2d8
	mov	r3, r6
	mov	r2, #0
	add	r3, #0x55
	strb	r2, [r3]
	mov	r3, r7
	add	r3, #0x26
	strb	r2, [r3]
	ldr	r3, =OvlFunc_922_2009bdc
	str	r3, [r6, #0x6c]
	mov	r3, r11
	str	r3, [r6, #0x44]
	ldr	r3, [sp, #0x2c]
	str	r3, [r6, #0x48]
	ldr	r3, [sp, #0x30]
	mov	r0, #0xd
	str	r3, [r6, #0x4c]
	str	r2, [r6, #0x30]
	str	r2, [r6, #0x34]
	neg	r0, r0
	ldrb	r2, [r7, #9]
	mov	r11, r0
	mov	r3, r11
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r7, #9]
	ldr	r3, =0xffff0000
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.L1d5a
	mov	r2, r10
	cmp	r2, #0
	beq	.L1d5a
	mov	r3, #0x80
	lsl	r3, #9
	and	r3, r1
	cmp	r3, #0
	beq	.L1cca
	ldr	r1, [r2, #4]
	mov	r0, r6
	bl	__Func_80929d8
.L1cca:
	mov	r3, #0x80
	lsl	r3, #10
	mov	r0, r8
	and	r3, r0
	cmp	r3, #0
	beq	.L1cf6
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	mov	r1, r10
	ldrb	r2, [r1]
	mov	r3, #3
	ldrb	r1, [r7, #9]
	and	r2, r3
	mov	r3, r11
	lsl	r2, #2
	and	r3, r1
	orr	r3, r2
	strb	r3, [r7, #9]
.L1cf6:
	mov	r2, #0x80
	lsl	r2, #12
	mov	r3, r8
	and	r2, r3
	cmp	r2, #0
	beq	.L1d0c
	mov	r7, r10
	ldr	r3, [r7, #8]
	str	r3, [r6, #0x18]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #0x1c]
.L1d0c:
	mov	r3, #0x80
	lsl	r3, #11
	mov	r0, r8
	and	r3, r0
	cmp	r3, #0
	beq	.L1d5a
	mov	r1, r9
	ldr	r5, [r1, r5]
	cmp	r2, #0
	beq	.L1d3c
	mov	r2, r10
	ldr	r0, [r2, #0x10]
	ldr	r3, [r6, #0x18]
	ldr	r1, [r5, #0xc]
	sub	r0, r3
	bl	_Func_8000af0
	str	r0, [r6, #0x30]
	mov	r3, r10
	ldr	r0, [r3, #0x14]
	ldr	r3, [r6, #0x1c]
	ldr	r1, [r5, #0xc]
	sub	r0, r3
	b	.L1d54
.L1d3c:
	mov	r7, r10
	ldr	r0, [r7, #0x10]
	ldr	r1, =0xffff0000
	add	r0, r1
	ldr	r1, [r5, #0xc]
	bl	_Func_8000af0
	str	r0, [r6, #0x30]
	ldr	r0, [r7, #0x14]
	ldr	r2, =0xffff0000
	ldr	r1, [r5, #0xc]
	add	r0, r2
.L1d54:
	bl	_Func_8000af0
	str	r0, [r6, #0x34]
.L1d5a:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009c18

.thumb_func_start OvlFunc_922_2009d78
	push	{r5, r6, r7, lr}
	ldr	r2, =iwram_3001e40
	ldr	r7, [r2]
	mov	r3, #3
	and	r7, r3
	sub	sp, #0x28
	cmp	r7, #0
	bne	.L1dee
	add	r6, sp, #0x10
	mov	r3, #0xa
	str	r3, [r6, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	ldr	r3, =0x1cccc
	str	r3, [r6, #0x10]
	str	r3, [r6, #0x14]
	ldr	r3, [r2]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L1dac
	mov	r0, #0x88
	bl	__Func_80f9080
.L1dac:
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	ldr	r5, =0xffff0000
	lsl	r0, #16
	sub	r5, r0
	bl	__Random
	lsl	r2, r0, #1
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	neg	r3, r3
	str	r3, [sp]
	ldr	r3, =0xd0001
	mov	r0, #0x9a
	mov	r1, #0x80
	mov	r2, #0xde
	str	r3, [sp, #8]
	lsl	r0, #17
	lsl	r1, #15
	lsl	r2, #16
	mov	r3, r5
	str	r7, [sp, #4]
	str	r6, [sp, #0xc]
	bl	OvlFunc_922_2009c18
.L1dee:
	add	sp, #0x28
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009d78

.thumb_func_start OvlFunc_922_2009e08
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	sub	sp, #8
	bl	__Func_80f9080
	mov	r0, #0xb6
	bl	__Func_80f9080
	bl	__Func_80916b0
	bl	__Func_808e118
	mov	r3, #8
	mov	r5, #0
	mov	r8, r3
	mov	r7, #7
	mov	r6, #1
.L1e2e:
	ldr	r0, =0x204318
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #2
	bl	__Func_80030f8
	cmp	r5, #0
	bne	.L1e68
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x1e
	mov	r1, #8
	mov	r2, #0xc
	mov	r3, #8
	str	r7, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x1e
	mov	r1, #0x39
	mov	r2, #0x13
	mov	r3, #0x39
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
.L1e68:
	mov	r1, #1
	ldr	r0, =0x203108
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	add	r5, #1
	mov	r0, #2
	bl	__Func_80030f8
	cmp	r5, #3
	bls	.L1e2e
	mov	r0, #0x1e
	bl	__Func_80030f8
	ldr	r5, =OvlFunc_922_2009d78
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
	mov	r0, #0x28
	bl	__Func_80030f8
	mov	r1, #1
	ldr	r0, =0x201090
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x50
	bl	__Func_80030f8
	mov	r0, r5
	bl	__StopTask
	mov	r0, #0x14
	bl	__Func_80030f8
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x50
	bl	__Func_8091254
	mov	r0, #0x50
	bl	__Func_80030f8
	mov	r0, #0x82
	lsl	r0, #4
	bl	__Func_8079358
	mov	r0, #0xe6
	bl	__Func_8078a08
	bl	__Func_808acc4
	bl	__Func_8091750
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009e08

.thumb_func_start OvlFunc_922_2009f04
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x17e1
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009f04

.thumb_func_start OvlFunc_922_2009f20
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x17e2
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009f20

.thumb_func_start OvlFunc_922_2009f3c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x17e3
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009f3c

.thumb_func_start OvlFunc_922_2009f58
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0x82
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1f74
	ldr	r0, =0x17e5
	mov	r1, #1
	bl	__Func_801776c
	b	.L1f98
.L1f74:
	mov	r1, #1
	ldr	r0, =0x17e4
	bl	__Func_801776c
	mov	r0, #0xe6
	bl	__Func_8078698
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.L1f98
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
.L1f98:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009f58

.thumb_func_start OvlFunc_922_2009fac
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #6
	bgt	.L1ffc
	ldr	r3, =iwram_3001f30
	ldr	r2, [r3]
	mov	r0, #1
	sub	r3, #0x64
	add	r2, #0x34
	ldr	r1, [r3]
	strb	r0, [r2]
	ldr	r2, =0x53e
	mov	r4, #0
	add	r3, r1, r2
	sub	r2, #2
	strb	r4, [r3]
	add	r3, r1, r2
	strb	r0, [r3]
	ldr	r3, =0x53d
	add	r1, r3
	strb	r0, [r1]
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8091220
	ldr	r0, =0x203108
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #0x10
	bl	__Func_8091254
	mov	r0, #0x10
	bl	__Func_80030f8
.L1ffc:
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009fac

.thumb_func_start OvlFunc_922_200a014
	push	{r5, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	ldrh	r3, [r2]
	cmp	r1, #0
	beq	.L202c
	sub	r3, #1
	strh	r3, [r2]
	b	.L2082
.L202c:
	mov	r3, r5
	add	r3, #0x5a
	strb	r1, [r3]
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #4
	and	r3, r2
	ldr	r1, =.L2424
	lsl	r3, #1
	mov	r0, #1
	ldrsh	r3, [r1, r3]
	neg	r0, r0
	cmp	r3, r0
	bne	.L2054
	mov	r0, r5
	mov	r1, #9
	bl	__Func_800c300
	b	.L2082
.L2054:
	ldrh	r1, [r5, #6]
	sub	r3, r1
	lsl	r3, #16
	mov	r2, #0x80
	asr	r3, #16
	lsl	r2, #5
	cmp	r3, r2
	ble	.L2066
	mov	r3, r2
.L2066:
	ldr	r2, =0xfffff000
	cmp	r3, r2
	bge	.L206e
	mov	r3, r2
.L206e:
	add	r3, r1, r3
	mov	r0, r5
	mov	r1, #2
	strh	r3, [r5, #6]
	bl	__Func_800c300
	mov	r0, r5
	mov	r1, #0x30
	bl	__Func_800c344
.L2082:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_200a014

.thumb_func_start OvlFunc_922_200a094
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	sub	sp, #0x14
	bl	__Func_808ba1c
	mov	r6, r0
.L20b4:
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #4
	and	r3, r2
	ldr	r1, =.L2464
	lsl	r3, #1
	ldrsh	r2, [r1, r3]
	str	r2, [sp, #4]
	lsl	r3, r2, #16
	ldr	r2, =0xffff0000
	cmp	r3, r2
	bne	.L20d0
	b	.L222a
.L20d0:
	bl	__Func_80916b0
	ldr	r2, [r6, #8]
	ldr	r1, =0xfff00000
	mov	r3, #0x80
	lsl	r3, #12
	mov	r11, r3
	and	r2, r1
	add	r5, sp, #8
	add	r2, r11
	str	r2, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	and	r3, r1
	add	r3, r11
	str	r3, [r5, #8]
	mov	r0, #0x22
	mov	r9, r3
	mov	r10, r2
	add	r0, r6
	mov	r8, r0
	mov	r1, r10
	mov	r2, r9
	ldrb	r0, [r0]
	bl	__Func_8012038
	str	r0, [sp]
	mov	r0, #0x80
	ldr	r1, [sp, #4]
	lsl	r0, #13
	mov	r2, r5
	bl	__Func_800447c
	mov	r2, r8
	ldrb	r0, [r2]
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	bl	__Func_8012038
	mov	r7, r0
	cmp	r7, #0xff
	beq	.L217c
	mov	r3, r8
	ldrb	r0, [r3]
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	bl	__Func_8011f54
	ldr	r3, [r6, #0xc]
	sub	r0, r3
	cmp	r0, r11
	bgt	.L217c
	mov	r3, #0x80
	mov	r0, r10
	mov	r2, r9
	lsl	r3, #10
	str	r0, [r5]
	str	r2, [r5, #8]
	str	r3, [r6, #0x30]
	ldr	r3, =0x1999
	mov	r2, r6
	str	r3, [r6, #0x34]
	add	r2, #0x64
	mov	r3, #0
	strh	r3, [r2]
	mov	r0, r6
	mov	r3, r9
	ldr	r2, [r6, #0xc]
	mov	r1, r10
	bl	__Func_800d14c
	mov	r0, r6
	mov	r1, #2
	bl	__Func_800c300
	mov	r0, r6
	mov	r1, #0x30
	bl	__Func_800c344
	mov	r0, r6
	bl	__Func_800ca6c
	ldr	r3, =OvlFunc_922_200a014
	str	r3, [r6, #0x6c]
	b	.L21c6
.L217c:
	add	r3, sp, #4
	ldrh	r3, [r3]
	strh	r3, [r6, #6]
	b	.L2220
.L2184:
	mov	r2, r8
	ldrb	r0, [r2]
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	bl	__Func_8011f54
	ldr	r3, [r6, #0xc]
	sub	r0, r3
	mov	r3, #0x80
	lsl	r3, #12
	cmp	r0, r3
	bgt	.L21e4
	mov	r3, #0x80
	lsl	r3, #10
	ldr	r0, [r5]
	ldr	r2, [r5, #8]
	str	r3, [r6, #0x30]
	ldr	r3, =0x1999
	str	r3, [r6, #0x34]
	mov	r10, r0
	ldr	r3, [r5, #8]
	ldr	r1, [r5]
	mov	r0, r6
	mov	r9, r2
	ldr	r2, [r5, #4]
	bl	__Func_800d14c
	mov	r0, r6
	bl	__Func_800ca6c
	ldr	r3, [sp]
	cmp	r7, r3
	bne	.L220a
.L21c6:
	mov	r0, #0x80
	ldr	r1, [sp, #4]
	add	r2, sp, #8
	lsl	r0, #13
	bl	__Func_800447c
	mov	r2, r8
	ldrb	r0, [r2]
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	bl	__Func_8012038
	mov	r7, r0
	cmp	r7, #0xff
	bne	.L2184
.L21e4:
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x30]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x34]
	ldr	r2, [r6, #0xc]
	mov	r0, r6
	mov	r1, r10
	mov	r3, r9
	bl	__Func_800d14c
	mov	r0, r6
	bl	__Func_800ca6c
	mov	r0, #2
	bl	__Func_80030f8
	b	.L20b4
.L220a:
	mov	r3, #0
	str	r3, [r6, #0x6c]
	mov	r1, r6
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x34]
.L2220:
	mov	r0, #0xa
	bl	__Func_80030f8
	bl	__Func_8091750
.L222a:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_200a094

	.section .data
	.global .L2488
	.global gOvl_0200a8f4
	.global .L29a4
	.global .L29bc
	.global .L29ec
	.global .L2a4c
	.global .L2ac4
	.global .L2b3c
	.global .L2b9c
	.global .L2bcc
	.global .L2bd8
	.global gScript_911__0200ac08
	.global .L2d1c
	.global .L2e24
	.global .L3058
	.global .L3130
	.global .L3184
	.global .L3328
	.global .L248c
	.global .L24bc
	.global .L2504
	.global .L25f4
	.global .L263c
	.global .L26cc
	.global .L2744
	.global .L27bc

.L2418:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2418, (0x2424-0x2418)
.L2424:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2424, (0x2464-0x2424)
.L2464:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2464, (0x2488-0x2464)
.L2488:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2488, (0x248c-0x2488)
.L248c:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x248c, (0x24bc-0x248c)
.L24bc:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x24bc, (0x2504-0x24bc)
.L2504:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2504, (0x25f4-0x2504)
.L25f4:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x25f4, (0x263c-0x25f4)
.L263c:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x263c, (0x26cc-0x263c)
.L26cc:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x26cc, (0x2744-0x26cc)
.L2744:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2744, (0x27bc-0x2744)
.L27bc:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x27bc, (0x28f4-0x27bc)
gOvl_0200a8f4:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x28f4, (0x29a4-0x28f4)
.L29a4:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x29a4, (0x29bc-0x29a4)
.L29bc:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x29bc, (0x29ec-0x29bc)
.L29ec:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x29ec, (0x2a4c-0x29ec)
.L2a4c:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2a4c, (0x2ac4-0x2a4c)
.L2ac4:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2ac4, (0x2b3c-0x2ac4)
.L2b3c:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2b3c, (0x2b9c-0x2b3c)
.L2b9c:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2b9c, (0x2bcc-0x2b9c)
.L2bcc:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2bcc, (0x2bd8-0x2bcc)
.L2bd8:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2bd8, (0x2c08-0x2bd8)
gScript_911__0200ac08:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2c08, (0x2d1c-0x2c08)
.L2d1c:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2d1c, (0x2e24-0x2d1c)
.L2e24:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2e24, (0x3058-0x2e24)
.L3058:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x3058, (0x3130-0x3058)
.L3130:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x3130, (0x3184-0x3130)
.L3184:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x3184, (0x3328-0x3184)
.L3328:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x3328
