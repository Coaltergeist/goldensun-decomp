	.include "macros.inc"

.thumb_func_start OvlFunc_886_2008190
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0xf6d
	bl	__MessageID
	mov	r2, #6
	mov	r0, #0
	mov	r1, #0xf
	bl	__Func_8092848
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8093054
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_2008190

.thumb_func_start OvlFunc_886_20081bc
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0xf73
	bl	__MessageID
	mov	r2, #6
	mov	r0, #0
	mov	r1, #0x13
	bl	__Func_8092848
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_8093054
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_20081bc

.thumb_func_start OvlFunc_886_20081e8
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x81b
	bl	__GetFlag
	cmp	r0, #0
	beq	.L214
	ldr	r0, =0x11a6
	bl	__MessageID
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	ldr	r2, =ActorCmd_ARRAY_886__020092fc
	mov	r0, #0x14
	lsl	r1, #9
	bl	__Func_8092a1c
	b	.L23e
.L214:
	ldr	r5, =0x11a4
	mov	r0, r5
	bl	__MessageID
	add	r5, #1
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, r5
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #0xb4
	mov	r1, #0
	bl	__Func_8091a58
	ldr	r0, =0x81b
	bl	__SetFlag
.L23e:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_20081e8

