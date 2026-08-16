	.include "macros.inc"

.thumb_func_start StartMapBattle  @ 0x08091eb0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r6, r1
	ldr	r7, [r3]
	mov	r5, r0
	bl	GetEncounterGroup
	mov	r1, #0xbe
	lsl	r1, #1
	add	r3, r7, r1
	strh	r0, [r3]
	cmp	r5, #0x62
	bne	.L91ed8
	cmp	r6, #0
	bne	.L91ed8
	ldr	r3, =gState
	ldr	r2, =0x21
	add	r1, #0x5a
	add	r3, r1
	strh	r2, [r3]
.L91ed8:
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r7, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #3
	bne	.L91ef8
	ldr	r3, =gState
	add	r2, #0x56
	add	r3, r2
	ldr	r0, [r3]
	bl	GetFieldActor
	add	r0, #8
	bl	Func_808adf0
.L91ef8:
	mov	r0, r5
	mov	r1, r6
	bl	Func_808b320
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end StartMapBattle

