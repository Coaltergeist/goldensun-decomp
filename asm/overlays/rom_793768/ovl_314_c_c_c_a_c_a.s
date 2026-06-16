	.include "macros.inc"

.thumb_func_start OvlFunc_898_2008ea4
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	sub	sp, #8
	bl	__SetFlag
	mov	r3, #0x17
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x37
	mov	r1, #0x1a
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008ea4

.thumb_func_start OvlFunc_898_2008ecc
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	sub	sp, #8
	bl	__ClearFlag
	mov	r3, #0x17
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x17
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008ecc

.thumb_func_start OvlFunc_898_2008ef4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r1
	mov	r8, r2
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r5, r0
	lsl	r1, #8
	mov	r0, #0
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r2, r6
	mov	r0, #0
	mov	r1, r5
	bl	__Func_809218c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, r8
	bl	__Func_8091e9c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008ef4

.thumb_func_start OvlFunc_898_2008f3c
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L2828
	mov	r1, #0x38
	mov	r2, #0x13
	bl	__Func_8010560
	mov	r0, #0xcc
	mov	r1, #0xa0
	lsl	r0, #1
	lsl	r1, #1
	mov	r2, #5
	bl	OvlFunc_898_2008ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008f3c

.thumb_func_start OvlFunc_898_2008f64
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L283e
	mov	r1, #0x32
	mov	r2, #0x12
	bl	__Func_8010560
	mov	r0, #0x9c
	mov	r1, #0x98
	lsl	r0, #1
	lsl	r1, #1
	mov	r2, #6
	bl	OvlFunc_898_2008ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008f64

.thumb_func_start OvlFunc_898_2008f8c
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L2854
	mov	r1, #0x2c
	mov	r2, #0x11
	bl	__Func_8010560
	mov	r1, #0x90
	lsl	r1, #1
	mov	r0, #0xd8
	mov	r2, #7
	bl	OvlFunc_898_2008ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008f8c

.thumb_func_start OvlFunc_898_2008fb4
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x9e
	ldr	r6, [r5, #0x50]
	bl	__PlaySound
	ldr	r0, =.L286a
	mov	r1, #0x36
	mov	r2, #0xd
	bl	__Func_8010560
	mov	r3, #0x17
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	add	r5, #0x23
	mov	r0, #0x21
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r5]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	mov	r0, #0xbc
	strb	r3, [r6, #9]
	lsl	r0, #1
	mov	r1, #0xe0
	mov	r2, #8
	bl	OvlFunc_898_2008ef4
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008fb4

.thumb_func_start OvlFunc_898_2009010
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x9e
	ldr	r6, [r5, #0x50]
	bl	__PlaySound
	ldr	r0, =.L2880
	mov	r1, #0x31
	mov	r2, #0xa
	bl	__Func_8010560
	mov	r3, #0x12
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	add	r5, #0x23
	mov	r0, #0x21
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r5]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	mov	r0, #0x94
	strb	r3, [r6, #9]
	lsl	r0, #1
	mov	r1, #0xb0
	mov	r2, #9
	bl	OvlFunc_898_2008ef4
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2009010

.thumb_func_start OvlFunc_898_200906c
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L2896
	mov	r1, #0x26
	mov	r2, #6
	bl	__Func_8010560
	mov	r0, #0x78
	mov	r1, #0x90
	mov	r2, #0xa
	bl	OvlFunc_898_2008ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_200906c

.thumb_func_start OvlFunc_898_2009090
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r2, [r6, #0x50]
	mov	r0, #0xbc
	mov	r8, r2
	bl	__PlaySound
	mov	r5, #2
	mov	r0, #0x2a
	mov	r1, #0x21
	mov	r2, #0x22
	mov	r3, #0x10
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x23
	mov	r2, #0x24
	mov	r3, #0x10
	mov	r0, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #0x28
	mov	r1, #0x21
	mov	r2, #0x22
	mov	r3, #0x10
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x23
	mov	r2, #0x24
	mov	r3, #0x10
	mov	r0, #0x28
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	mov	r3, #3
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	add	r6, #0x23
	mov	r0, #0x21
	mov	r1, #0x15
	mov	r2, #2
	mov	r3, #2
	bl	__Func_8010704
	ldrb	r2, [r6]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, r8
	strb	r3, [r6]
	ldrb	r3, [r2, #9]
	mov	r2, #0xc
	orr	r3, r2
	mov	r1, #0x88
	mov	r2, r8
	strb	r3, [r2, #9]
	lsl	r1, #1
	mov	r0, #0x40
	mov	r2, #0xb
	bl	OvlFunc_898_2008ef4
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2009090

.thumb_func_start OvlFunc_898_200913c
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x9e
	ldr	r6, [r5, #0x50]
	bl	__PlaySound
	ldr	r0, =.L28ac
	mov	r1, #0x23
	mov	r2, #9
	bl	__Func_8010560
	mov	r3, #4
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	add	r5, #0x23
	mov	r0, #0x21
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r5]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r6, #9]
	mov	r0, #0x48
	mov	r1, #0xa0
	mov	r2, #0xc
	bl	OvlFunc_898_2008ef4
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_200913c

