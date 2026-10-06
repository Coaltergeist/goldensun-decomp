	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_200cf60
	push	{lr}
	sub	sp, #8
	bl	OvlFunc_959_200d470
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #2
	cmp	r3, #0x11
	bhi	.Lm959_5076
	ldr	r2, =.Lm959_4f84
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm959_4f84:
	.word	.Lm959_4fcc
	.word	.Lm959_4fcc
	.word	.Lm959_4fcc
	.word	.Lm959_4fcc
	.word	.Lm959_4fcc
	.word	.Lm959_4fcc
	.word	.Lm959_5076
	.word	.Lm959_5076
	.word	.Lm959_5076
	.word	.Lm959_5076
	.word	.Lm959_4ffa
	.word	.Lm959_505c
	.word	.Lm959_505c
	.word	.Lm959_505c
	.word	.Lm959_500c
	.word	.Lm959_500c
	.word	.Lm959_500c
	.word	.Lm959_4ffa
.Lm959_4fcc:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0xc8
	add	r2, #0x40
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_2009718
	bl	__StartTask
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_200975c
	bl	__StartTask
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_959_20097bc
	lsl	r1, #4
	bl	__StartTask
	b	.Lm959_5052
.Lm959_4ffa:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xc0
	add	r2, #0x49
	str	r2, [r3]
	b	.Lm959_5054
.Lm959_500c:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0xc8
	add	r2, #0x40
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_2009528
	bl	__StartTask
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_20099e8
	bl	__StartTask
	mov	r0, #1
	bl	__WaitFrames
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #0x6e
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x65
	mov	r1, #9
	mov	r2, #0xa
	mov	r3, #8
	bl	__Func_80105d4
.Lm959_5052:
	mov	r0, #0xe0
.Lm959_5054:
	lsl	r0, #4
	bl	__Func_80108c4
	b	.Lm959_508c
.Lm959_505c:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0xc8
	add	r2, #0x40
	str	r2, [r3]
	ldr	r0, =OvlFunc_959_200969c
	lsl	r1, #4
	bl	__StartTask
	b	.Lm959_508c
.Lm959_5076:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_80108c4
.Lm959_508c:
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_8092950
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_8092950
	mov	r0, #1
	bl	__WaitFrames
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cf60

