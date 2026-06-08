	.include "macros.inc"

.thumb_func_start OvlFunc_886_20080d8
	push	{lr}
	ldr	r0, =0x834
	bl	__GetFlag
	cmp	r0, #0
	beq	.Le8
	ldr	r0, =.L1590
	b	.Lea
.Le8:
	ldr	r0, =.L1568
.Lea:
	pop	{r1}
	bx	r1
.func_end OvlFunc_886_20080d8

.thumb_func_start OvlFunc_886_20080fc
	push	{r5, lr}
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L10c
	ldr	r5, =.L18b8
	b	.L11c
.L10c:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.L11a
	ldr	r5, =.L1738
	b	.L11c
.L11a:
	ldr	r5, =.L15b8
.L11c:
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_886_20080fc

.thumb_func_start OvlFunc_886_2008140
	push	{lr}
	ldr	r0, =0x834
	bl	__GetFlag
	cmp	r0, #0
	beq	.L150
	ldr	r0, =gOvl_02009ac8
	b	.L16e
.L150:
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L15e
	ldr	r0, =.L1ffc
	b	.L16e
.L15e:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.L16c
	ldr	r0, =.L1da4
	b	.L16e
.L16c:
	ldr	r0, =ActorCmd_ARRAY_918__02009c00
.L16e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_886_2008140

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

.thumb_func_start OvlFunc_886_2008258
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x11be
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8093054
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_2008258

.thumb_func_start OvlFunc_886_2008278
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1c3d
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8093054
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_2008278

.thumb_func_start OvlFunc_886_2008298
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1c40
	bl	__MessageID
	ldr	r0, =0x800b
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_2008298

