	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_939_2008ac4
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.Lm939_ad6
	ldr	r2, =0xfffff
	add	r3, r2
.Lm939_ad6:
	ldr	r0, =0x243
	asr	r5, r3, #20
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm939_afa
	cmp	r5, #0xa
	bne	.Lm939_afa
	ldr	r0, =0x243
	bl	__SetFlag
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x14
	strh	r2, [r3]
.Lm939_afa:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008ac4

