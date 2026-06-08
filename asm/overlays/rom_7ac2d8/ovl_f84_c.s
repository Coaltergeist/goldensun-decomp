	.include "macros.inc"

.thumb_func_start OvlFunc_924_20097a8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x3c
	mov	r5, #1
	str	r0, [sp, #0x10]
	mov	r1, #0x3b
	mov	r0, #0x4e
	mov	r2, #0x6e
	mov	r3, #0x24
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, #0x6d
	mov	r3, #0x24
	mov	r0, #0x4c
	mov	r1, #0x3b
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	add	r2, sp, #0x14
	mov	r3, #7
	str	r3, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r3, #0
	mov	r11, r2
	mov	r10, r3
.L17f0:
	mov	r2, r10
	lsl	r2, #4
	mov	r9, r2
	mov	r2, r10
	lsl	r3, r2, #20
	mov	r2, #0xb6
	neg	r3, r3
	lsl	r2, #18
	add	r2, r3
	mov	r7, #0
	mov	r8, r2
.L1806:
	mov	r3, r7
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1868
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
	add	r5, r3
	ldr	r3, =0xffff3334
	add	r5, r3
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	ldr	r2, =0xffff3334
	add	r3, r2
	str	r3, [sp, #4]
	mov	r3, #0x90
	mov	r2, #0
	lsl	r3, #12
	str	r2, [sp]
	str	r3, [sp, #8]
	mov	r2, #0x92
	mov	r3, r11
	str	r3, [sp, #0xc]
	mov	r0, r8
	mov	r1, #0
	lsl	r2, #18
	mov	r3, r5
	bl	OvlFunc_common0_10c
	mov	r0, #1
	neg	r6, r7
	bl	__CutsceneWait
	b	.L186a
.L1868:
	neg	r6, r7
.L186a:
	mov	r2, r9
	sub	r0, r6, r2
	mov	r3, #0xb6
	lsl	r3, #18
	lsl	r0, #16
	mov	r2, #0x92
	lsl	r2, #18
	add	r0, r3
	mov	r1, #0
	bl	OvlFunc_924_200bb24
	ldr	r2, =0xffff0000
	add	r7, #1
	add	r8, r2
	cmp	r7, #7
	bls	.L1806
	mov	r3, r10
	mov	r2, #0x6c
	sub	r2, r3
	mov	r3, #2
	str	r3, [sp]
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r0, #0x4c
	mov	r1, #0x3b
	mov	r3, #0x24
	bl	__CopyMapTiles
	mov	r5, r10
	add	r5, #1
	mov	r1, r10
	ldr	r0, [sp, #0x10]
	mov	r2, r5
	bl	OvlFunc_924_20095e0
	mov	r10, r5
	cmp	r5, #1
	bls	.L17f0
	ldr	r0, [sp, #0x10]
	bl	__CutsceneWait
	add	r2, r5, #1
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_924_20095e0
	mov	r0, #0xd3
	bl	__PlaySound
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_924_2009790
	bl	__StartTask
	bl	__Func_8012350
	add	sp, #0x3c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_20097a8

.thumb_func_start OvlFunc_924_20098f8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x38
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #0x6e
	mov	r3, #0x24
	mov	r0, #0x4e
	mov	r1, #0x3a
	bl	__CopyMapTiles
	add	r2, sp, #0x10
	mov	r3, #5
	str	r3, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r3, #1
	mov	r8, r2
	mov	r7, #0
	mov	r10, r3
.L192a:
	ldr	r6, =0xfffe0000
	mov	r5, #1
.L192e:
	mov	r3, r5
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L1972
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	mov	r2, #0x92
	lsr	r3, #16
	lsl	r2, #2
	sub	r2, r3
	lsl	r0, r7, #19
	mov	r3, #0xb6
	lsl	r3, #18
	sub	r0, r6, r0
	add	r0, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	lsl	r2, #16
	mov	r1, #0
	ldr	r3, =0xffffc000
	bl	OvlFunc_common0_10c
	mov	r0, #1
	bl	__CutsceneWait
.L1972:
	ldr	r2, =0xfffe0000
	add	r5, #1
	add	r6, r2
	cmp	r5, #7
	bls	.L192e
	mov	r3, r10
	mov	r2, #0x6d
	sub	r2, r7
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x6f
	mov	r1, #0x23
	mov	r3, #0x24
	add	r7, #1
	bl	__CopyMapTiles
	cmp	r7, #2
	bls	.L192a
	ldr	r0, =OvlFunc_924_2009790
	bl	__StopTask
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_20098f8

.thumb_func_start OvlFunc_924_20099b8
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #0x20
	bl	__CutsceneStart
	add	r6, sp, #8
	mov	r0, r6
	bl	OvlFunc_924_2008758
	cmp	r0, #0
	bne	.L19d2
	b	.L1bae
.L19d2:
	ldr	r3, [r6, #4]
	cmp	r3, #8
	beq	.L19da
	b	.L1b1a
.L19da:
	ldr	r4, [r6, #8]
	asr	r3, r4, #20
	cmp	r3, #0xb
	bne	.L1a78
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	mov	r2, r4
	ldr	r3, [r6, #0xc]
	mov	r1, #8
	ldr	r0, [r6]
	bl	OvlFunc_924_20088ec
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xd3
	bl	__PlaySound
	bl	OvlFunc_924_200b860
	mov	r3, #3
	str	r3, [sp]
	mov	r5, #1
	mov	r8, r3
	mov	r0, #0x4c
	mov	r1, #0x3c
	mov	r2, #0x4a
	mov	r3, #0x26
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r6, #2
	mov	r0, #0x4d
	mov	r1, #0x3c
	mov	r2, #0x4c
	mov	r3, #0x26
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, r8
	str	r0, [sp, #4]
	mov	r1, #0x3a
	mov	r0, #0x4b
	mov	r2, #0x56
	mov	r3, #0x29
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x4b
	mov	r1, #0x3b
	mov	r2, #0x56
	mov	r3, #0x2b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x4c
	mov	r1, #0x3b
	mov	r2, #0x50
	mov	r3, #0x31
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x4d
	mov	r1, #0x3b
	mov	r2, #0x52
	mov	r3, #0x31
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	ldr	r0, =0x302
	bl	__SetFlag
	b	.L1bae
.L1a78:
	ldr	r3, =OvlFunc_924_200b948
	mov	r5, #1
	str	r3, [r6, #0x14]
	mov	r0, #0x4b
	mov	r1, #0x39
	mov	r2, #0x56
	mov	r3, #0x29
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r2, #0x56
	mov	r3, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r2, #0x56
	mov	r3, #0x2b
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r2, #0x56
	mov	r3, #0x2c
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r2, #0x50
	mov	r3, #0x31
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r2, #0x51
	mov	r3, #0x31
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r2, #0x52
	mov	r3, #0x31
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x4e
	mov	r1, #0x3a
	mov	r2, #0x53
	mov	r3, #0x31
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r6]
	ldr	r1, [r6, #4]
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0xc]
	bl	OvlFunc_924_20088ec
	ldr	r0, =0x302
	bl	__ClearFlag
	b	.L1bae
.L1b1a:
	cmp	r3, #0xa
	bne	.L1bae
	ldr	r3, [r6, #0x10]
	asr	r3, #20
	cmp	r3, #0x28
	bne	.L1b86
	mov	r3, sp
	add	r2, sp, #0x18
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	mov	r1, #0xa
	ldr	r0, [r6]
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0xc]
	bl	OvlFunc_924_20088ec
	ldr	r0, =0x307
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1b78
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0x94
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	ldr	r0, =0x2ca0000
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r0, =0x307
	bl	__SetFlag
	mov	r0, #5
	bl	OvlFunc_924_20097a8
	mov	r0, #0x32
	bl	__CutsceneWait
	b	.L1b7e
.L1b78:
	mov	r0, #5
	bl	OvlFunc_924_20097a8
.L1b7e:
	ldr	r0, =0x306
	bl	__SetFlag
	b	.L1bae
.L1b86:
	cmp	r3, #0x2a
	bne	.L1bae
	ldr	r3, =OvlFunc_924_20098f8
	str	r3, [r6, #0x14]
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	mov	r1, #0xa
	ldr	r0, [r6]
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0xc]
	bl	OvlFunc_924_20088ec
	mov	r0, #5
	bl	OvlFunc_924_20096c4
	ldr	r0, =0x306
	bl	__ClearFlag
.L1bae:
	bl	__CutsceneEnd
	add	sp, #0x20
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_20099b8

.thumb_func_start OvlFunc_924_2009bd8
	push	{lr}
	bl	__CutsceneStart
	bl	OvlFunc_924_20083a8
	bl	__CutsceneEnd
	bl	OvlFunc_924_2009bf0
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2009bd8

.thumb_func_start OvlFunc_924_2009bf0
	push	{r5, r6, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L1c04
	ldr	r2, =0xfffff
	add	r3, r2
.L1c04:
	mov	r0, #8
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L1c16
	ldr	r2, =0xfffff
	add	r3, r2
.L1c16:
	asr	r5, r3, #20
	bl	__CutsceneStart
	cmp	r6, #0xa
	bne	.L1c7e
	cmp	r5, #0x17
	bne	.L1c7e
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r2, =0xfffe0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r3, #0x17
	mov	r2, #0xa
	mov	r0, #6
	bl	__CopyMapTiles
	mov	r0, #0xd9
	bl	__PlaySound
	ldr	r0, =.L6064
	mov	r1, #0xa
	mov	r2, #0x12
	bl	__Func_8010560
	mov	r3, #0x13
	str	r3, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_8010704
	ldr	r0, =0x878
	bl	__SetFlag
.L1c7e:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2009bf0

.thumb_func_start OvlFunc_924_2009c9c
	push	{r5, lr}
	ldr	r0, =0x256
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1d28
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r0, #0
	bl	__MapActor_GetActor
	sub	r5, #0xa4
	mov	r2, #0x12
	ldrsh	r3, [r0, r2]
	cmp	r5, #7
	bhi	.L1d28
	mov	r2, #0xba
	lsl	r2, #1
	cmp	r3, r2
	blt	.L1d28
	add	r2, #8
	cmp	r3, r2
	bge	.L1d28
	bl	__CutsceneStart
	ldr	r0, =0x256
	bl	__SetFlag
	mov	r0, #5
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xfffe0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0xa
	mov	r3, #0x17
	mov	r0, #6
	bl	__CopyMapTiles
	mov	r0, #0xd9
	bl	__PlaySound
	ldr	r0, =.L6064
	mov	r1, #0xa
	mov	r2, #0x12
	bl	__Func_8010560
	bl	__CutsceneEnd
.L1d28:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2009c9c

.thumb_func_start OvlFunc_924_2009d3c
	push	{r5, lr}
	ldr	r0, =0x256
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1da2
	bl	__CutsceneStart
	ldr	r0, =0x256
	bl	__ClearFlag
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #10
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	mov	r0, #5
	str	r3, [r5, #0x3c]
	bl	__CutsceneWait
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0xa
	mov	r3, #0x17
	mov	r0, #8
	bl	__CopyMapTiles
	mov	r0, #0xd9
	bl	__PlaySound
	ldr	r0, =.L608e
	mov	r1, #0xa
	mov	r2, #0x12
	bl	__Func_8010560
	bl	__CutsceneEnd
.L1da2:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2009d3c

	.section .data
	.global .L6010
	.global .L603a

.L6010:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6010, (0x603a-0x6010)
.L603a:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x603a, (0x6064-0x603a)
.L6064:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6064, (0x608e-0x6064)
.L608e:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x608e, (0x60b8-0x608e)
