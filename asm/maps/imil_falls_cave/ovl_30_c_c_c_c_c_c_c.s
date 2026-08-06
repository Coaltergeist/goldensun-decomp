	.include "macros.inc"

.thumb_func_start OvlFunc_922_2009fac
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #6
	bgt	.Lm922_1ffc
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
.Lm922_1ffc:
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
	beq	.Lm922_202c
	sub	r3, #1
	strh	r3, [r2]
	b	.Lm922_2082
.Lm922_202c:
	mov	r3, r5
	add	r3, #0x5a
	strb	r1, [r3]
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #4
	and	r3, r2
	ldr	r1, =.Lm922_2424
	lsl	r3, #1
	mov	r0, #1
	ldrsh	r3, [r1, r3]
	neg	r0, r0
	cmp	r3, r0
	bne	.Lm922_2054
	mov	r0, r5
	mov	r1, #9
	bl	__Actor_SetAnim
	b	.Lm922_2082
.Lm922_2054:
	ldrh	r1, [r5, #6]
	sub	r3, r1
	lsl	r3, #16
	mov	r2, #0x80
	asr	r3, #16
	lsl	r2, #5
	cmp	r3, r2
	ble	.Lm922_2066
	mov	r3, r2
.Lm922_2066:
	ldr	r2, =0xfffff000
	cmp	r3, r2
	bge	.Lm922_206e
	mov	r3, r2
.Lm922_206e:
	add	r3, r1, r3
	mov	r0, r5
	mov	r1, #2
	strh	r3, [r5, #6]
	bl	__Actor_SetAnim
	mov	r0, r5
	mov	r1, #0x30
	bl	__Actor_SetAnimSpeed
.Lm922_2082:
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
	bl	__GetFieldActor
	mov	r6, r0
.Lm922_20b4:
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #4
	and	r3, r2
	ldr	r1, =.Lm922_2464
	lsl	r3, #1
	ldrsh	r2, [r1, r3]
	str	r2, [sp, #4]
	lsl	r3, r2, #16
	ldr	r2, =0xffff0000
	cmp	r3, r2
	bne	.Lm922_20d0
	b	.Lm922_222a
.Lm922_20d0:
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
	beq	.Lm922_217c
	mov	r3, r8
	ldrb	r0, [r3]
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	bl	__Func_8011f54
	ldr	r3, [r6, #0xc]
	sub	r0, r3
	cmp	r0, r11
	bgt	.Lm922_217c
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
	b	.Lm922_21c6
.Lm922_217c:
	add	r3, sp, #4
	ldrh	r3, [r3]
	strh	r3, [r6, #6]
	b	.Lm922_2220
.Lm922_2184:
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
	bgt	.Lm922_21e4
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
	bne	.Lm922_220a
.Lm922_21c6:
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
	bne	.Lm922_2184
.Lm922_21e4:
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
	b	.Lm922_20b4
.Lm922_220a:
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
.Lm922_2220:
	mov	r0, #0xa
	bl	__WaitFrames
	bl	__CutsceneEnd
.Lm922_222a:
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
	.global .Lm922_2418
	.global .Lm922_2488
	.global gOvl_0200a8f4
	.global .Lm922_29a4
	.global .Lm922_29bc
	.global .Lm922_29ec
	.global .Lm922_2a4c
	.global .Lm922_2ac4
	.global .Lm922_2b3c
	.global .Lm922_2b9c
	.global .Lm922_2bcc
	.global .Lm922_2bd8
	.global gScript_911__0200ac08
	.global .Lm922_2d1c
	.global .Lm922_2e24
	.global .Lm922_3058
	.global .Lm922_3130
	.global .Lm922_3184
	.global .Lm922_3328
	.global .Lm922_248c
	.global .Lm922_24bc
	.global .Lm922_2504
	.global .Lm922_25f4
	.global .Lm922_263c
	.global .Lm922_26cc
	.global .Lm922_2744
	.global .Lm922_27bc

.Lm922_2418:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2418, (0x2424-0x2418)
.Lm922_2424:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2424, (0x2464-0x2424)
.Lm922_2464:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2464, (0x2488-0x2464)
.Lm922_2488:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2488, (0x248c-0x2488)
.Lm922_248c:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x248c, (0x24bc-0x248c)
.Lm922_24bc:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x24bc, (0x2504-0x24bc)
.Lm922_2504:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2504, (0x25f4-0x2504)
.Lm922_25f4:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x25f4, (0x263c-0x25f4)
.Lm922_263c:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x263c, (0x26cc-0x263c)
.Lm922_26cc:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x26cc, (0x2744-0x26cc)
.Lm922_2744:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2744, (0x27bc-0x2744)
.Lm922_27bc:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x27bc, (0x28f4-0x27bc)
gOvl_0200a8f4:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x28f4, (0x29a4-0x28f4)
.Lm922_29a4:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x29a4, (0x29bc-0x29a4)
.Lm922_29bc:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x29bc, (0x29ec-0x29bc)
.Lm922_29ec:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x29ec, (0x2a4c-0x29ec)
.Lm922_2a4c:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2a4c, (0x2ac4-0x2a4c)
.Lm922_2ac4:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2ac4, (0x2b3c-0x2ac4)
.Lm922_2b3c:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2b3c, (0x2b9c-0x2b3c)
.Lm922_2b9c:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2b9c, (0x2bcc-0x2b9c)
.Lm922_2bcc:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2bcc, (0x2bd8-0x2bcc)
.Lm922_2bd8:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2bd8, (0x2c08-0x2bd8)
gScript_911__0200ac08:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2c08, (0x2d1c-0x2c08)
.Lm922_2d1c:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2d1c, (0x2e24-0x2d1c)
.Lm922_2e24:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x2e24, (0x3058-0x2e24)
.Lm922_3058:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x3058, (0x3130-0x3058)
.Lm922_3130:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x3130, (0x3184-0x3130)
.Lm922_3184:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x3184, (0x3328-0x3184)
.Lm922_3328:
	.incbin "overlays/rom_7a8c8c/orig.bin", 0x3328
