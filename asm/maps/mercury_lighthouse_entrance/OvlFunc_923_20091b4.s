	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_923_20091b4
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r0, =0x35
	mov	r1, #0x1f
	bl	__Func_8091f90
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x24
	mov	r1, #1
	bl	__StartMapBattle
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_923_20091b4

