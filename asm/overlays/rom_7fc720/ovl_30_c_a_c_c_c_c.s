.include "macros.inc"
.include "gba.inc"

.thumb_func_start OvlFunc_973_200871c
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x44
	str	r3, [r2]
	sub	r3, #0x3c
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r5, =0x19999
	str	r5, [r0, #0x1c]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #5
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_973_200871c

.thumb_func_start OvlFunc_973_2008768
	push	{r5, lr}
	sub	sp, #0x24
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0xd
	mov	r2, #0x1e
	mov	r3, #6
	mov	r0, #0
	bl	__CreateUIBox
	mov	r5, r0
	mov	r1, r5
	ldr	r0, =gOvl_02008920
	mov	r2, #0
	mov	r3, #0
	bl	__UIDrawText
	mov	r1, r5
	ldr	r0, =.L93c
	mov	r2, #0
	mov	r3, #8
	bl	__UIDrawText
	ldr	r0, =.L958
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0x10
	bl	__UIDrawText
	add	sp, #0x24
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_973_2008768
