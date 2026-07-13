	.include "macros.inc"

.thumb_func_start OvlFunc_922_2009f58
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x82
	lsl	r0, #4
	bl	__GetFlag
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
	bl	__CheckPartyItem
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
	bl	__CutsceneEnd
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
	bl	__WaitFrames
.L1ffc:
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009fac

.section .text.after_a014, "ax", %progbits

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
	bl	__GetFieldActor
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
	bl	__CutsceneStart
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
	bl	__vec3_translate
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
	bl	__Actor_TravelTo
	mov	r0, r6
	mov	r1, #2
	bl	__Actor_SetAnim
	mov	r0, r6
	mov	r1, #0x30
	bl	__Actor_SetAnimSpeed
	mov	r0, r6
	bl	__Actor_WaitMovement
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
	bl	__Actor_TravelTo
	mov	r0, r6
	bl	__Actor_WaitMovement
	ldr	r3, [sp]
	cmp	r7, r3
	bne	.L220a
.L21c6:
	mov	r0, #0x80
	ldr	r1, [sp, #4]
	add	r2, sp, #8
	lsl	r0, #13
	bl	__vec3_translate
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
	bl	__Actor_TravelTo
	mov	r0, r6
	bl	__Actor_WaitMovement
	mov	r0, #2
	bl	__WaitFrames
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
	bl	__WaitFrames
	bl	__CutsceneEnd
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
	.global .L2418
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
	.global .L2424
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
