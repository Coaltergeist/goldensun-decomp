	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_939_20087f4
	push	{lr}
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm939_81e
	ldr	r0, =0x85a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm939_80e
	ldr	r0, =0x1be2
	b	.Lm939_810
.Lm939_80e:
	ldr	r0, =0x1ba5
.Lm939_810:
	bl	__MessageID
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm939_82c
.Lm939_81e:
	ldr	r0, =0x250c
	bl	__MessageID
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
.Lm939_82c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20087f4

