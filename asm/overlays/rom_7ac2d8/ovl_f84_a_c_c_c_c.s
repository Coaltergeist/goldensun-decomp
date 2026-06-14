	.include "macros.inc"

.thumb_func_start OvlFunc_924_2009420
	push	{r5, r6, lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L1434
	ldr	r2, =0xfffff
	add	r3, r2
.L1434:
	mov	r0, #0xb
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L1446
	ldr	r2, =0xfffff
	add	r3, r2
.L1446:
	asr	r5, r3, #20
	bl	__CutsceneStart
	cmp	r6, #5
	bne	.L14b0
	cmp	r5, #0xd
	bne	.L14b0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r2, =0xfffe0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #2
	mov	r3, #0xb
	mov	r2, #5
	mov	r0, #5
	bl	__CopyMapTiles
	mov	r0, #0xd9
	bl	__PlaySound
	ldr	r0, =.L6010
	mov	r1, #9
	mov	r2, #7
	bl	__Func_8010560
	mov	r3, #9
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #9
	mov	r1, #5
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r0, =0x874
	bl	__SetFlag
.L14b0:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2009420

.thumb_func_start OvlFunc_924_20094cc
	push	{r5, lr}
	ldr	r0, =0x256
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1552
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r0, #0
	bl	__MapActor_GetActor
	sub	r5, #0x54
	mov	r2, #0x12
	ldrsh	r3, [r0, r2]
	cmp	r5, #7
	bhi	.L1552
	cmp	r3, #0xd3
	ble	.L1552
	cmp	r3, #0xdb
	bgt	.L1552
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
	mov	r1, #2
	mov	r2, #5
	mov	r3, #0xb
	mov	r0, #5
	bl	__CopyMapTiles
	mov	r0, #0xd9
	bl	__PlaySound
	ldr	r0, =.L6010
	mov	r1, #9
	mov	r2, #7
	bl	__Func_8010560
	bl	__CutsceneEnd
.L1552:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_20094cc

.thumb_func_start OvlFunc_924_2009568
	push	{r5, lr}
	ldr	r0, =0x256
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.L15ce
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
	mov	r1, #2
	mov	r2, #5
	mov	r3, #0xb
	mov	r0, #7
	bl	__CopyMapTiles
	mov	r0, #0xd9
	bl	__PlaySound
	ldr	r0, =.L603a
	mov	r1, #9
	mov	r2, #7
	bl	__Func_8010560
	bl	__CutsceneEnd
.L15ce:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2009568

.thumb_func_start OvlFunc_924_20095e0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r8, r0
	mov	r5, r1
	mov	r9, r2
	cmp	r0, #0
	beq	.L1600
	mov	r0, #0xdb
	bl	__PlaySound
.L1600:
	mov	r6, r5
	cmp	r6, r9
	bcs	.L169a
	mov	r2, #1
	mov	r3, #4
	mov	r10, r2
	mov	r11, r3
.L160e:
	lsl	r3, r6, #1
	mov	r2, #0x2d
	sub	r0, r2, r3
	mov	r2, #0x2c
	sub	r2, r3
	mov	r3, #6
	str	r3, [sp, #4]
	mov	r1, #0x20
	mov	r3, #0x20
	add	r7, r6, #1
	str	r7, [sp]
	bl	__CopyMapTiles
	mov	r3, #0x2d
	sub	r2, r3, r6
	mov	r3, r10
	str	r3, [sp]
	mov	r3, #6
	str	r3, [sp, #4]
	mov	r0, r2
	mov	r1, #0x33
	mov	r3, #0x20
	bl	__CopyMapTiles
	mov	r5, #0x6d
	mov	r3, r10
	sub	r5, r6
	str	r3, [sp]
	mov	r2, #0x6c
	mov	r3, r11
	str	r3, [sp, #4]
	sub	r2, r6
	mov	r0, r5
	mov	r1, #0x20
	mov	r3, #0x20
	bl	__CopyMapTiles
	mov	r2, r10
	mov	r3, r11
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r2, r5
	mov	r0, r5
	mov	r1, #0x33
	mov	r3, #0x20
	bl	__CopyMapTiles
	mov	r2, r8
	cmp	r2, #0
	beq	.L1694
	mov	r0, #0xa0
	lsl	r0, #11
	mov	r2, #0x80
	mov	r1, r0
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r0, r8
	bl	__CutsceneWait
.L1694:
	mov	r6, r7
	cmp	r6, r9
	bcc	.L160e
.L169a:
	mov	r3, #0x2a
	mov	r2, #0x21
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x34
	mov	r2, #4
	mov	r3, #5
	bl	__Func_8010704
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_20095e0

.thumb_func_start OvlFunc_924_20096c4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r0, #0xdb
	sub	sp, #8
	bl	__PlaySound
	mov	r1, #6
	mov	r10, r1
	mov	r3, #0x29
	mov	r1, #2
	mov	r5, #0
	mov	r8, r3
	mov	r6, #0x28
	mov	r9, r1
.L16e8:
	mov	r3, #3
	sub	r3, r5
	str	r3, [sp]
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #0x20
	mov	r2, r8
	mov	r3, #0x20
	bl	__CopyMapTiles
	mov	r3, #1
	mov	r1, r10
	str	r3, [sp]
	str	r1, [sp, #4]
	mov	r0, #0x27
	mov	r1, #0x33
	mov	r2, r6
	mov	r3, #0x20
	bl	__CopyMapTiles
	mov	r3, #4
	mov	r1, r9
	mov	r2, r5
	str	r1, [sp]
	str	r3, [sp, #4]
	add	r2, #0x6a
	mov	r0, #0x69
	mov	r1, #0x33
	mov	r3, #0x20
	bl	__CopyMapTiles
	cmp	r7, #0
	beq	.L1750
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r0, r7
	bl	__CutsceneWait
.L1750:
	mov	r3, #2
	add	r5, #1
	add	r8, r3
	add	r6, #2
	cmp	r5, #2
	bls	.L16e8
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r3, #0x2a
	mov	r2, #0x21
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6a
	mov	r1, #0x21
	mov	r2, #4
	mov	r3, #5
	bl	__Func_8010704
	bl	__Func_8012350
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_20096c4

