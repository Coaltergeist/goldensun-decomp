	.include "macros.inc"

.thumb_func_start OvlFunc_959_2008fc8
	push	{lr}
	mov	r0, #8
	mov	r1, #8
	bl	OvlFunc_959_2009038
	cmp	r0, #0
	beq	.Lfdc
	ldr	r0, =0xf2a
	bl	__SetFlag
.Lfdc:
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008fc8

.thumb_func_start OvlFunc_959_2008fe4
	push	{lr}
	mov	r0, #9
	mov	r1, #7
	bl	OvlFunc_959_2009038
	cmp	r0, #0
	beq	.Lff8
	ldr	r0, =0xf2b
	bl	__SetFlag
.Lff8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008fe4

.thumb_func_start OvlFunc_959_2009000
	push	{lr}
	mov	r0, #0xa
	mov	r1, #6
	bl	OvlFunc_959_2009038
	cmp	r0, #0
	beq	.L1014
	ldr	r0, =0xf2c
	bl	__SetFlag
.L1014:
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009000

.thumb_func_start OvlFunc_959_200901c
	push	{lr}
	mov	r0, #0xb
	mov	r1, #5
	bl	OvlFunc_959_2009038
	cmp	r0, #0
	beq	.L1030
	ldr	r0, =0xf2d
	bl	__SetFlag
.L1030:
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200901c

.thumb_func_start OvlFunc_959_2009038
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0
	mov	r5, r1
	mov	r6, r0
	mov	r8, r3
	bl	__CutsceneStart
	mov	r1, r6
	mov	r2, r5
	mov	r0, #0
	bl	__Func_808e078
	mov	r1, #0
	mov	r7, r0
	mov	r0, r5
	bl	__Func_8091a58
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L1074
	mov	r0, r6
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r3, #1
	mov	r8, r3
	b	.L1082
.L1074:
	mov	r0, #0x7d
	bl	__PlaySound
	mov	r0, r6
	mov	r1, #5
	bl	__MapActor_SetAnim
.L1082:
	mov	r0, r7
	bl	__DeleteActor
	bl	__Func_8091750
	mov	r0, r8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_2009038

