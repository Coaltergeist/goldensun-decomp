	.include "macros.inc"

.thumb_func_start OvlFunc_959_2008bac
	push	{lr}
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0xbc
	mov	r1, #0xf8
	lsl	r2, #1
	mov	r0, #0xc
	bl	__Func_8092128
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r0, #0xd7
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	OvlFunc_959_2008b4c
	ldr	r0, =0x943
	bl	__SetFlag
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008bac

.thumb_func_start OvlFunc_959_2008bec
	push	{r5, lr}
	mov	r0, #0xc
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x16
	ble	.Lc68
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x90
	bl	__PlaySound
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r5, #0xf
	mov	r0, #0xf
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x17
	str	r3, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lc62
	mov	r1, #0
	bl	__Func_800c528
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.Lc62:
	ldr	r0, =0x943
	bl	__SetFlag
.Lc68:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008bec

.thumb_func_start OvlFunc_959_2008c78
	push	{lr}
	mov	r1, #0xf8
	mov	r2, #0xbc
	mov	r0, #0xc
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	bl	OvlFunc_959_2008b4c
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008c78

.thumb_func_start OvlFunc_959_2008c90
	push	{r5, r6, lr}
	ldr	r3, =.L7714
	lsl	r0, #3
	ldr	r6, [r3, r0]
	add	r0, #4
	ldr	r5, [r3, r0]
	sub	sp, #8
	mov	r0, #0
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	add	r3, r6, #1
	str	r3, [sp]
	mov	r0, #1
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r1, r5
	sub	r1, #0x30
	sub	r5, #0x2e
	mov	r0, r6
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008c90

.thumb_func_start OvlFunc_959_2008ce0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xea
	ldr	r5, [r3]
	bl	__CheckPartyItem
	mov	r6, #1
	neg	r6, r6
	cmp	r0, r6
	beq	.Ld40
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r7, [r3, r2]
	ldr	r0, =0x941
	mov	r5, r7
	sub	r5, #0x28
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld10
	cmp	r5, #4
	beq	.Ld40
.Ld10:
	mov	r0, r5
	bl	OvlFunc_959_2008c90
	mov	r0, #0x9d
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, r6
	mov	r1, r6
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r3, #0xca
	lsl	r3, #2
	add	r0, r7, r3
	bl	__SetFlag
.Ld40:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008ce0

.thumb_func_start OvlFunc_959_2008d54
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r2, =.L773c
	lsl	r3, r0, #3
	ldr	r7, [r2, r3]
	add	r3, #4
	ldr	r6, [r2, r3]
	sub	sp, #8
	mov	r8, r0
	mov	r1, #0x4d
	mov	r0, #0
	mov	r2, #1
	mov	r3, #3
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	add	r3, r7, #1
	str	r3, [sp]
	mov	r0, #1
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r5, r6
	mov	r1, r6
	sub	r1, #0x2d
	sub	r5, #0x2c
	mov	r0, r7
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r1, r8
	cmp	r1, #1
	bne	.Ldba
	mov	r3, r6
	sub	r3, #0x2b
	str	r3, [sp, #4]
	mov	r0, r7
	mov	r1, r5
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	bl	__Func_8010704
.Ldba:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008d54

.thumb_func_start OvlFunc_959_2008dcc
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xea
	ldr	r5, [r3]
	bl	__CheckPartyItem
	mov	r6, #1
	neg	r6, r6
	cmp	r0, r6
	beq	.Le1c
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	mov	r0, r5
	sub	r0, #0x28
	bl	OvlFunc_959_2008d54
	mov	r0, #0x9d
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, r6
	mov	r1, r6
	ldr	r2, =0xe666
	bl	__Func_8012330
	ldr	r3, =0x32d
	add	r5, r3
	mov	r0, r5
	bl	__SetFlag
.Le1c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008dcc

.thumb_func_start OvlFunc_959_2008e30
	push	{r5, r6, lr}
	ldr	r3, =.L7754
	lsl	r0, #3
	ldr	r6, [r3, r0]
	add	r0, #4
	ldr	r5, [r3, r0]
	sub	sp, #8
	mov	r0, #0x37
	mov	r1, #0x79
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	add	r3, r6, #1
	str	r3, [sp]
	mov	r0, #0x38
	mov	r1, #0x79
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r1, r5
	sub	r1, #0x3f
	sub	r5, #0x3e
	mov	r0, r6
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008e30

.thumb_func_start OvlFunc_959_2008e80
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xea
	ldr	r5, [r3]
	bl	__CheckPartyItem
	mov	r6, #1
	neg	r6, r6
	cmp	r0, r6
	beq	.Led0
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	mov	r0, r5
	sub	r0, #0x28
	bl	OvlFunc_959_2008e30
	mov	r0, #0x9d
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, r6
	mov	r1, r6
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r3, #0xcc
	lsl	r3, #2
	add	r0, r5, r3
	bl	__SetFlag
.Led0:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008e80

.thumb_func_start OvlFunc_959_2008ee0
	push	{r5, r6, lr}
	ldr	r3, =.L7764
	lsl	r0, #3
	ldr	r6, [r3, r0]
	add	r0, #4
	ldr	r5, [r3, r0]
	sub	sp, #8
	mov	r0, #1
	mov	r1, #0x50
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	add	r3, r6, #1
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0x50
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r1, r5
	sub	r1, #0x3f
	sub	r5, #0x3e
	mov	r0, r6
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008ee0

.thumb_func_start OvlFunc_959_2008f30
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xea
	ldr	r5, [r3]
	bl	__CheckPartyItem
	mov	r6, #1
	neg	r6, r6
	cmp	r0, r6
	beq	.Lf80
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	mov	r0, r5
	sub	r0, #0x28
	bl	OvlFunc_959_2008ee0
	mov	r0, #0x9d
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, r6
	mov	r1, r6
	ldr	r2, =0xe666
	bl	__Func_8012330
	ldr	r3, =0x332
	add	r5, r3
	mov	r0, r5
	bl	__SetFlag
.Lf80:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008f30

.thumb_func_start OvlFunc_959_2008f94
	push	{lr}
	mov	r0, #0xea
	bl	__CheckPartyItem
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.Lfac
	ldr	r0, =0x953
	mov	r1, #1
	bl	__Func_801776c
.Lfac:
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008f94

