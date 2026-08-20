	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ElementalStars_MapInit
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	sub	sp, #8
	bl	__Func_8091220
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
	mov	r5, #0xf
	mov	r6, #0
.Lm896_3f4a:
	mov	r0, r5
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r6, [r0]
	mov	r1, #1
	mov	r0, r5
	add	r5, #1
	bl	__Func_8092b08
	cmp	r5, #0x18
	bls	.Lm896_3f4a
	mov	r0, #0xf
	mov	r1, #0x10
	bl	OvlFunc_896_200c78c
	ldr	r0, =0x83b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm896_3f90
	mov	r1, #0xe4
	mov	r2, #0xb4
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xdc
	mov	r2, #0xad
	mov	r0, #5
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
.Lm896_3f90:
	ldr	r0, =0x83c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm896_405e
	mov	r5, #3
	mov	r0, #0
	mov	r1, #0x28
	mov	r2, #0x2b
	mov	r3, #0x42
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, #4
	str	r2, [sp, #4]
	mov	r10, r2
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x60
	mov	r3, #0x1d
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0x29
	mov	r2, #0x1d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r11, r3
	mov	r9, r2
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r6, #1
	mov	r8, r3
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x29
	mov	r3, #0x1f
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r2, r10
	str	r2, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x4a
	mov	r3, #0x1d
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0x13
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x13
	mov	r3, #0x1f
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x60
	mov	r3, #0xa
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0xa
	mov	r2, r11
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x29
	mov	r3, #0xc
	str	r6, [sp]
	bl	__CopyMapTiles
.Lm896_405e:
	ldr	r0, =0x83d
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm896_412c
	mov	r6, #3
	mov	r0, #0
	mov	r1, #0x28
	mov	r2, #0x2b
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, #4
	str	r2, [sp, #4]
	mov	r8, r2
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x54
	mov	r3, #4
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r3, #0x1d
	mov	r2, r8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r11, r3
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r10, r3
	mov	r9, r2
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x1d
	mov	r3, #6
	bl	__CopyMapTiles
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x4c
	mov	r3, #0x15
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r5, #0x15
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r2, r10
	mov	r3, r9
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x15
	mov	r3, #0x17
	bl	__CopyMapTiles
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x4c
	mov	r3, #0x1d
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r3, r11
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r2, r10
	mov	r3, r9
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x15
	mov	r3, #0x1f
	bl	__CopyMapTiles
.Lm896_412c:
	ldr	r0, =0x83e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm896_41fe
	mov	r5, #3
	mov	r0, #0
	mov	r1, #0x28
	mov	r2, #0xd
	mov	r3, #0x42
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, #4
	str	r2, [sp, #4]
	mov	r10, r2
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x41
	mov	r3, #0x1f
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0xa
	mov	r9, r3
	mov	r2, r9
	mov	r3, #0x1f
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r6, #1
	mov	r8, r3
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0xa
	mov	r3, #0x21
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r2, r10
	str	r2, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x4f
	mov	r3, #9
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0x18
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x18
	mov	r3, #0xb
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r2, r10
	str	r2, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x5b
	mov	r3, #0xa
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0x24
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x24
	mov	r3, #0xc
	str	r6, [sp]
	bl	__CopyMapTiles
	bl	OvlFunc_896_200a27c
.Lm896_41fe:
	ldr	r0, =0x83b
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm896_421c
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	bne	.Lm896_421c
	bl	OvlFunc_896_200a7f8
.Lm896_421c:
	mov	r0, #0
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end ElementalStars_MapInit

