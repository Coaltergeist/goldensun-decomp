	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start StartMenu  @ 0x08029504
	push	{r5, r6, lr}
.L29506:
	bl	StartMenu_Main
	mov	r6, #1
	mov	r5, r0
	neg	r6, r6
	mov	r0, r6
	cmp	r5, r6
	beq	.L29544
	cmp	r5, #0
	bne	.L29524
	bl	Menu_Save
	cmp	r0, r6
	bne	.L29542
	b	.L29506
.L29524:
	cmp	r5, #1
	bne	.L29536
	ldr	r0, =0xc2a
	mov	r1, #1
	bl	Func_801776c
	ldr	r3, =gSleepMode
	strb	r5, [r3]
	b	.L29542
.L29536:
	cmp	r5, #2
	bne	.L29542
	bl	Menu_Settings
	cmp	r0, r6
	beq	.L29506
.L29542:
	mov	r0, #0
.L29544:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end StartMenu
