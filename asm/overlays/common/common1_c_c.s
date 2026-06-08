	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_2018
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r4, r0
	ldr	r2, [r3]
	ldr	r3, [r4]
	mov	r1, r2
	mov	r5, #8
	asr	r6, r3, #20
	add	r1, #0x34
.L202a:
	ldmia	r1!, {r0}
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, r3
	bne	.L204c
	ldr	r2, [r4, #4]
	ldr	r3, [r0, #0xc]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L204c
	ldr	r2, [r4, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	beq	.L2054
.L204c:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L202a
	mov	r0, #0
.L2054:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_common1_2018

.thumb_func_start OvlFunc_common1_2060
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
	sub	sp, #0xc
	bl	__MapActor_GetActor
	ldrh	r3, [r0, #6]
	ldr	r2, =.L9
	lsr	r3, #12
	lsl	r5, r3, #2
	ldr	r1, [r2, r5]
	ldr	r3, =0xffff0000
	mov	r9, r2
	mov	r2, r1
	and	r2, r3
	mov	r10, r3
	ldr	r3, [r0, #8]
	mov	r7, sp
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r0, #0x10]
	lsl	r1, #16
	add	r3, r1
	mov	r8, r0
	str	r3, [r7, #8]
	mov	r0, r7
	mov	r1, r8
	bl	OvlFunc_common1_2018
	mov	r6, r0
	cmp	r6, #0
	beq	.L21a6
	mov	r0, r9
	ldr	r1, [r0, r5]
	mov	r3, r10
	mov	r2, r1
	and	r2, r3
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	lsl	r1, #16
	add	r3, r1
	str	r3, [r7, #8]
	mov	r0, r7
	mov	r1, r6
	bl	OvlFunc_common1_2018
	cmp	r0, #0
	beq	.L20ec
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L21a6
.L20ec:
	ldr	r3, [r6, #8]
	str	r3, [r7]
	mov	r0, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r0, #13
	add	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, r7
	str	r3, [r7, #8]
	mov	r1, r6
	bl	OvlFunc_common1_2018
	cmp	r0, #0
	beq	.L2118
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L21a6
.L2118:
	mov	r3, #0
	mov	r2, r6
	add	r2, #0x22
	mov	r11, r3
	mov	r3, #2
	strb	r3, [r2]
	mov	r0, r9
	ldr	r1, [r0, r5]
	mov	r3, r10
	mov	r2, r1
	and	r2, r3
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	lsl	r1, #16
	add	r3, r1
	str	r3, [r7, #8]
	mov	r0, r6
	mov	r1, r7
	bl	__TestCollision
	cmp	r0, #0
	bgt	.L21a6
	ldr	r5, =0x3333
	mov	r1, #8
	mov	r0, r8
	bl	__Actor_SetAnim
	mov	r0, #0xf
	bl	__WaitFrames
	str	r5, [r6, #0x30]
	str	r5, [r6, #0x34]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	mov	r0, r6
	bl	__Actor_TravelTo
	mov	r0, r8
	str	r5, [r0, #0x30]
	str	r5, [r0, #0x34]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	bl	__Actor_TravelTo
	mov	r0, #0xee
	bl	__PlaySound
	mov	r0, r6
	bl	__Func_800ca6c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	ldr	r3, [r7]
	str	r3, [r6, #8]
	ldr	r3, [r7, #8]
	mov	r2, r11
	str	r3, [r6, #0x10]
	str	r2, [r6, #0x24]
	str	r2, [r6, #0x2c]
	mov	r0, r8
	mov	r1, #1
	bl	__Actor_SetAnim
.L21a6:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_2060

.thumb_func_start OvlFunc_common1_21c8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r6, r0
	ldrh	r3, [r6, #6]
	mov	r2, #0x80
	lsl	r2, #6
	add	r7, r3, r2
	mov	r3, #0xc0
	lsl	r3, #8
	ldr	r1, =0xfff00000
	and	r7, r3
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	mov	r5, sp
	add	r3, r2
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, #0x80
	and	r3, r1
	add	r3, r2
	lsl	r0, #13
	mov	r8, r1
	mov	r2, r5
	mov	r1, r7
	str	r3, [r5, #8]
	bl	__vec3_translate
	mov	r0, r5
	mov	r1, r6
	bl	OvlFunc_common1_2018
	cmp	r0, #0
	bne	.L2252
	ldr	r3, [r6, #8]
	mov	r2, r8
	mov	r1, #0x80
	lsl	r1, #12
	and	r3, r2
	add	r3, r1
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, #0x80
	and	r3, r2
	add	r3, r1
	lsl	r0, #14
	mov	r1, r7
	mov	r2, r5
	str	r3, [r5, #8]
	bl	__vec3_translate
	mov	r0, r5
	mov	r1, r6
	bl	OvlFunc_common1_2018
.L2252:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_common1_21c8

	.section .data
	.global .L4
	.global .L5
	.global .L7
	.global .L8
	.global .L1
	.global .L2
	.global .L3
	.global .L6

.L1:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3e44, (0x3e4e-0x3e44)
.L2:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3e4e, (0x3e76-0x3e4e)
.L3:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3e76, (0x3ef4-0x3e76)
.L4:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3ef4, (0x3f14-0x3ef4)
.L5:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3f14, (0x3fd0-0x3f14)
.L6:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3fd0, (0x3fe4-0x3fd0)
.L7:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3fe4, (0x4008-0x3fe4)
.L8:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4008, (0x4010-0x4008)
	.word	OvlFunc_common1_172c
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4014, (0x4154-0x4014)
.L9:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4154, (0x4194-0x4154)

	.section .data1
	.global .L15
	.global .L16
	.global .L10
	.global .L11
	.global .L12
	.global .L13
	.global .L14

.L10:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x457c, (0x457e-0x457c)
.L11:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x457e, (0x45aa-0x457e)
.L12:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x45aa, (0x4628-0x45aa)
.L13:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4628, (0x46a6-0x4628)
.L14:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x46a6, (0x46a8-0x46a6)
.L15:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x46a8, (0x46c8-0x46a8)
	.word	OvlFunc_common1_17c0
	.incbin "overlays/rom_7db0c8/orig.bin", 0x46cc, (0x46fc-0x46cc)
.L16:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x46fc, (0x471c-0x46fc)
	.word	OvlFunc_common1_17c0
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4720

	.section .bss
	.global .L17
	.global .L18
	.global .L19
	.global .L20
	.global .L21
	.global .L22
	.global .L23
	.global .L24
	.global .L25
	.global .L26
	.global .L27
	.global .L28
	.global .L29
	.global .L30
	.global .L31
	.global .L32
	.global .L33
	.global .L34
	.global .L35
	.global .L36
	.global .L37
	.global .L38
	.global .L39
	.global .L41
	.global .L42
	.global .L43
	.global .L44
	.global .L45
	.global .L46
	.global .L47
	.global .L48
	.global .L49

	.lcomm	.L17, 4
	.lcomm	.L18, 4
	.lcomm	.L19, 4
	.lcomm	.L20, 4
	.lcomm	.L21, 4
	.lcomm	.L22, 4
	.lcomm	.L23, 4
	.lcomm	.L24, 4
	.lcomm	.L25, 4
	.lcomm	.L26, 4
	.lcomm	.L27, 4
	.lcomm	.L28, 4
	.lcomm	.L29, 4
	.lcomm	.L30, 4
	.lcomm	.L31, 4
	.lcomm	.L32, 4
	.lcomm	.L33, 4
	.lcomm	.L34, 4
	.lcomm	.L35, 4
	.lcomm	.L36, 4
	.lcomm	.L37, 4
	.lcomm	.L38, 4
	.lcomm	.L39, 4
	.lcomm	.L41, 0xc
	.lcomm	.L42, 4
	.lcomm	.L43, 0x30
	.lcomm	.L44, 4
	.lcomm	.L45, 4
	.lcomm	.L46, 4
	.lcomm	.L47, 4
	.lcomm	.L48, 4
	.lcomm	.L49, 4
