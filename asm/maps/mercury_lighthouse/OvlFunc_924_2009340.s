	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_2009340
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r5, [r3]
	bl	__CutsceneStart
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_924_200ba64
	bl	__StartTask
	mov	r1, #0xa0
	mov	r2, #0xa0
	lsl	r2, #9
	mov	r0, #0
	lsl	r1, #10
	bl	__MapActor_SetSpeed
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0xe4
	bl	__PlaySound
	mov	r2, #0xb6
	lsl	r2, #1
	add	r5, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	bne	.Lm924_1396
	mov	r2, #0x9a
	mov	r0, #0
	mov	r1, #0xe8
	b	.Lm924_13ae
.Lm924_1396:
	cmp	r3, #3
	bne	.Lm924_13a4
	mov	r1, #0xb4
	mov	r2, #0xb6
	mov	r0, #0
	lsl	r1, #1
	b	.Lm924_13ae
.Lm924_13a4:
	cmp	r3, #4
	bne	.Lm924_13b6
	mov	r2, #0xc6
	mov	r0, #0
	mov	r1, #0xf8
.Lm924_13ae:
	lsl	r2, #2
	bl	__MapActor_TravelTo
	b	.Lm924_13d8
.Lm924_13b6:
	mov	r1, #0xae
	mov	r2, #0x94
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__MapActor_TravelToWait
	mov	r1, #0xae
	mov	r2, #0x96
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__MapActor_TravelTo
	mov	r0, #0x1e
	bl	__CutsceneWait
.Lm924_13d8:
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =OvlFunc_924_200ba64
	bl	__StopTask
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2009340

