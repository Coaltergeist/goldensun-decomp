	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200a030
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	mov	r5, #1
	mov	r1, #0x39
	mov	r2, #0x71
	mov	r3, #0x2a
	mov	r6, r0
	mov	r0, #0x70
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x75
	mov	r1, #0x3a
	mov	r2, #0x70
	mov	r3, #0x2e
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, #0x74
	mov	r3, #0x2c
	mov	r0, #0x75
	mov	r1, #0x39
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	ldr	r0, =0x121
	bl	__PlaySound
	add	r2, sp, #0x10
	mov	r3, #5
	str	r3, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r3, #0x90
	mov	r8, r2
	lsl	r3, #12
	mov	r2, #0
	mov	r7, #0
	mov	r11, r3
	mov	r10, r2
	mov	r9, r5
.Lm924_2098:
	mov	r5, #1
.Lm924_209a:
	mov	r3, r5
	mov	r2, r9
	and	r3, r2
	cmp	r3, #0
	beq	.Lm924_2154
	cmp	r6, #0
	bne	.Lm924_20dc
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r0, =0x319
	lsr	r3, #16
	lsl	r2, r7, #2
	sub	r0, r3
	add	r2, r5
	ldr	r3, =0x2b70000
	lsl	r2, #17
	add	r2, r3
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [sp, #4]
	mov	r3, r11
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	lsl	r0, #16
	mov	r1, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_common0_10c
	b	.Lm924_214e
.Lm924_20dc:
	cmp	r6, #1
	bne	.Lm924_2116
	bl	__Random
	lsl	r2, r0, #2
	add	r2, r0
	lsr	r2, #16
	mov	r3, #0xba
	lsl	r3, #18
	lsl	r2, #16
	lsl	r0, r7, #2
	add	r2, r3
	add	r0, r5
	ldr	r3, =0x3120000
	lsl	r0, #17
	add	r0, r3
	mov	r3, r10
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, r11
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	mov	r3, #0x80
	mov	r1, #0
	lsl	r3, #7
	bl	OvlFunc_common0_10c
	b	.Lm924_214e
.Lm924_2116:
	bl	__Random
	lsl	r2, r0, #2
	add	r2, r0
	lsr	r2, #16
	mov	r3, #0xb2
	lsl	r3, #18
	lsl	r2, #16
	lsl	r0, r5, #17
	add	r2, r3
	neg	r0, r0
	lsl	r3, r7, #19
	sub	r0, r3
	mov	r3, #0xce
	lsl	r3, #18
	add	r0, r3
	mov	r3, r10
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, r11
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	mov	r3, #0x80
	mov	r1, #0
	lsl	r3, #7
	bl	OvlFunc_common0_10c
.Lm924_214e:
	mov	r0, #1
	bl	__CutsceneWait
.Lm924_2154:
	add	r5, #1
	cmp	r5, #7
	bls	.Lm924_209a
	cmp	r6, #0
	bne	.Lm924_2174
	mov	r2, r9
	mov	r3, r7
	str	r2, [sp]
	str	r2, [sp, #4]
	add	r3, #0x2b
	mov	r0, #0x70
	mov	r1, #0x3a
	mov	r2, #0x71
	bl	__CopyMapTiles
	b	.Lm924_21a0
.Lm924_2174:
	cmp	r6, #1
	bne	.Lm924_218c
	mov	r2, r7
	add	r2, #0x71
	mov	r0, #0x70
	mov	r1, #0x3a
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	b	.Lm924_21a0
.Lm924_218c:
	mov	r3, r9
	mov	r2, #0x73
	str	r3, [sp]
	str	r3, [sp, #4]
	sub	r2, r7
	mov	r0, #0x70
	mov	r1, #0x3a
	mov	r3, #0x2c
	bl	__CopyMapTiles
.Lm924_21a0:
	add	r7, #1
	cmp	r7, #2
	bhi	.Lm924_21a8
	b	.Lm924_2098
.Lm924_21a8:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200a030

