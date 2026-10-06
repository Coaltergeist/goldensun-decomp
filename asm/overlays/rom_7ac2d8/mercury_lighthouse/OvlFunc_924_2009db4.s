	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_2009db4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r0, #0xd3
	sub	sp, #0x40
	bl	__PlaySound
	cmp	r6, #0
	bne	.Lm924_1df4
	mov	r5, #1
	mov	r0, #0x6f
	mov	r1, #0x39
	mov	r2, #0x71
	mov	r3, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x6f
	mov	r1, #0x3b
	mov	r2, #0x71
	mov	r3, #0x2b
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	b	.Lm924_1e3c
.Lm924_1df4:
	cmp	r6, #1
	bne	.Lm924_1e1a
	mov	r0, #0x71
	mov	r1, #0x3a
	mov	r2, #0x70
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x73
	mov	r1, #0x3a
	mov	r2, #0x71
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	b	.Lm924_1e3c
.Lm924_1e1a:
	mov	r5, #1
	mov	r0, #0x73
	mov	r1, #0x39
	mov	r2, #0x74
	mov	r3, #0x2c
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x71
	mov	r1, #0x39
	mov	r2, #0x73
	mov	r3, #0x2c
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
.Lm924_1e3c:
	mov	r2, sp
	add	r2, #0x18
	mov	r3, #7
	str	r2, [sp, #0x10]
	str	r3, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r3, #0
	ldr	r2, =0xffff3334
	mov	r10, r3
	mov	r3, #1
	mov	r11, r2
	mov	r9, r3
.Lm924_1e5a:
	mov	r2, #0
	mov	r3, r10
	str	r2, [sp, #0x14]
	lsl	r2, r3, #20
	mov	r3, #0xcb
	lsl	r3, #18
	sub	r3, r2
	mov	r8, r3
	mov	r3, #0xb0
	lsl	r3, #18
	add	r7, r2, r3
.Lm924_1e70:
	ldr	r3, [sp, #0x14]
	mov	r2, r9
	and	r3, r2
	cmp	r3, #0
	beq	.Lm924_1f68
	cmp	r6, #0
	bne	.Lm924_1ec8
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
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
	add	r3, r11
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	str	r3, [sp, #8]
	ldr	r3, [sp, #0x10]
	add	r5, r11
	mov	r0, #0xc6
	str	r3, [sp, #0xc]
	lsl	r0, #18
	mov	r1, #0
	mov	r2, r7
	mov	r3, r5
	str	r6, [sp]
	bl	OvlFunc_common0_10c
	b	.Lm924_1f62
.Lm924_1ec8:
	cmp	r6, #1
	bne	.Lm924_1f1a
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
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
	add	r3, r11
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	mov	r2, #0xc0
	lsl	r2, #15
	str	r3, [sp, #8]
	ldr	r3, [sp, #0x10]
	add	r5, r11
	add	r0, r7, r2
	mov	r2, #0
	str	r2, [sp]
	str	r3, [sp, #0xc]
	mov	r1, #0
	ldr	r2, =0x2ea0000
	mov	r3, r5
	bl	OvlFunc_common0_10c
	b	.Lm924_1f62
.Lm924_1f1a:
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
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
	add	r3, r11
	mov	r2, #0
	str	r2, [sp]
	str	r3, [sp, #4]
	ldr	r2, [sp, #0x10]
	mov	r3, #0x90
	lsl	r3, #12
	add	r5, r11
	str	r3, [sp, #8]
	str	r2, [sp, #0xc]
	mov	r0, r8
	mov	r1, #0
	ldr	r2, =0x2ca0000
	mov	r3, r5
	bl	OvlFunc_common0_10c
.Lm924_1f62:
	mov	r0, #1
	bl	__CutsceneWait
.Lm924_1f68:
	ldr	r3, =0xffff0000
	add	r8, r3
	ldr	r3, [sp, #0x14]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, #1
	add	r7, r2
	str	r3, [sp, #0x14]
	cmp	r3, #7
	bhi	.Lm924_1f7e
	b	.Lm924_1e70
.Lm924_1f7e:
	cmp	r6, #0
	bne	.Lm924_1fac
	mov	r2, r9
	mov	r3, r10
	add	r3, #0x2b
	str	r2, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6f
	mov	r1, #0x3a
	mov	r2, #0x71
	bl	__CopyMapTiles
	mov	r2, r9
	mov	r3, r10
	str	r2, [sp]
	str	r2, [sp, #4]
	add	r3, #0x2c
	mov	r0, #0x6f
	mov	r1, #0x3b
	mov	r2, #0x71
	bl	__CopyMapTiles
	b	.Lm924_2002
.Lm924_1fac:
	cmp	r6, #1
	bne	.Lm924_1fd6
	mov	r2, r10
	add	r2, #0x71
	mov	r0, #0x72
	mov	r1, #0x3a
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, r10
	add	r2, #0x72
	mov	r0, #0x73
	mov	r1, #0x3a
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	b	.Lm924_2002
.Lm924_1fd6:
	mov	r3, r10
	mov	r2, #0x73
	sub	r2, r3
	mov	r3, r9
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x72
	mov	r1, #0x39
	mov	r3, #0x2c
	bl	__CopyMapTiles
	mov	r3, r10
	mov	r2, #0x72
	sub	r2, r3
	mov	r3, r9
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x71
	mov	r1, #0x39
	mov	r3, #0x2c
	bl	__CopyMapTiles
.Lm924_2002:
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	cmp	r3, #1
	bhi	.Lm924_200e
	b	.Lm924_1e5a
.Lm924_200e:
	add	sp, #0x40
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2009db4

