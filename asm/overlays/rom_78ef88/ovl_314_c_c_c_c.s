	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_896_200c260
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r10, r0
	mov	r0, #0
	mov	r8, r0
	mov	r0, #0x16
	bl	__CreateActor
	mov	r6, r0
	mov	r0, #0xe0
	bl	__CheckPartyItem
	mov	r1, #0xe0
	mov	r7, r0
	bl	__CheckItem
	mov	r9, r0
	mov	r0, r7
	cmp	r6, #0
	beq	.L4316
	ldr	r1, =gScript_881__0200cbe4
	mov	r0, r6
	bl	__Actor_SetScript
	ldr	r5, [r6, #0x50]
	mov	r3, r5
	mov	r2, r8
	add	r3, #0x26
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	mov	r3, #0x21
	ldrb	r2, [r5, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r5, #9]
	strb	r3, [r5, #5]
	mov	r3, #0xf
	and	r3, r2
	strb	r3, [r5, #9]
	mov	r3, #0xa0
	lsl	r3, #10
	str	r3, [r6, #0x28]
	mov	r3, #0x80
	lsl	r3, #7
	mov	r1, #0xc1
	str	r3, [r6, #0x48]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r8, r0
	mov	r0, r10
	bl	__LoadItemIcon
	mov	r2, #0x80
	lsl	r2, #3
	add	r2, r8
	mov	r1, #0x80
	ldrb	r0, [r5, #0x1c]
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
	mov	r0, #0x53
	bl	__PlaySound
	mov	r0, r6
	mov	r1, #3
	bl	__Func_808f140
	mov	r1, r9
	mov	r0, r7
	bl	__Func_8078948
	mov	r1, r10
	mov	r0, r7
	bl	__GiveItemTo
	mov	r0, r6
	bl	__DeleteActor
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, r7
.L4316:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_896_200c260

.thumb_func_start OvlFunc_896_200c328
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xec
	ldr	r6, [r3]
	lsl	r2, #1
	add	r3, r6, r2
	mov	r0, #0x53
	sub	sp, #8
	mov	r2, #0
	ldrsh	r7, [r3, r2]
	bl	__PlaySound
	mov	r0, #0xe0
	mov	r1, #3
	bl	__Func_808f1c0
	ldr	r0, =0x111b
	mov	r1, #1
	bl	__Func_801776c
.L4350:
	mov	r0, #0
	bl	__FindEmptyInventorySlot
	mov	r5, #0x1e
	sub	r5, r0
	mov	r0, #1
	bl	__FindEmptyInventorySlot
	sub	r5, r0
	cmp	r5, #3
	bgt	.L4388
	ldr	r0, =0x111c
	mov	r1, #1
	bl	__Func_801776c
	add	r0, sp, #4
	mov	r1, sp
	bl	__UI_SellMenu
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L4350
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	bl	__Func_8078948
	b	.L4350
.L4388:
	mov	r0, #0xe0
	bl	__GiveItem
	mov	r0, #0xe0
	bl	__GiveItem
	mov	r0, #0xe0
	bl	__GiveItem
	mov	r0, #0xe0
	bl	__GiveItem
	mov	r2, #0xec
	lsl	r2, #1
	add	r3, r6, r2
	strh	r7, [r3]
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200c328

.thumb_func_start OvlFunc_896_200c3bc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0xe
	sub	sp, #0x38
	bl	__MapActor_GetActor
	mov	r10, r0
	mov	r0, #0xbe
	bl	__PlaySound
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #1
	add	r7, sp, #0x10
	str	r3, [r7]
	mov	r3, #5
	str	r3, [r7, #4]
	mov	r3, #0x8e
	lsl	r3, #1
	strh	r3, [r7, #0x18]
	ldr	r3, =0x6666
	str	r3, [r7, #8]
	mov	r3, #0xc0
	lsl	r3, #10
	mov	r2, #0
	str	r3, [r7, #0xc]
	mov	r8, r2
.L43fe:
	mov	r0, #1
	bl	__CutsceneWait
	mov	r6, #1
	mov	r3, r8
	and	r6, r3
	cmp	r6, #0
	bne	.L4454
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, r10
	lsl	r3, #3
	ldr	r5, [r2, #8]
	lsr	r3, #16
	lsl	r3, #16
	add	r5, r3
	ldr	r3, =0xfff40000
	add	r5, r3
	bl	__Random
	mov	r2, r10
	lsl	r0, #5
	ldr	r1, [r2, #0xc]
	lsr	r0, #16
	lsl	r0, #16
	mov	r3, #0x80
	add	r1, r0
	lsl	r3, #14
	add	r1, r3
	ldr	r3, =0xfffc0000
	ldr	r2, [r2, #0x10]
	str	r3, [sp]
	mov	r3, #0xd8
	lsl	r3, #13
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r3, #0
	str	r6, [sp, #4]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
.L4454:
	mov	r2, r8
	cmp	r2, #0x14
	bne	.L4464
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_8092950
.L4464:
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0x1f
	bls	.L43fe
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092950
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Func_800c528
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200c3bc

.thumb_func_start OvlFunc_896_200c49c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0xca
	lsl	r1, #1
	mov	r0, #0x21
	sub	sp, #0x44
	bl	__galloc_ewram
	str	r0, [sp, #0x40]
	str	r0, [sp, #0x3c]
	ldr	r1, [sp, #0x40]
	mov	r0, #0
	mov	r2, #0xc8
	str	r0, [sp, #0x38]
	lsl	r2, #1
	add	r3, r1, r2
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L44ce
	b	.L4762
.L44ce:
	add	r1, #8
	ldr	r3, [sp, #0x40]
	ldr	r4, [sp, #0x40]
	str	r0, [sp, #8]
	ldr	r0, =gOvl_0200d0e4
	mov	r10, r1
	ldr	r1, =.L5102
	add	r3, #0x24
	add	r4, #0x25
	add	r0, #1
	str	r3, [sp, #0x10]
	str	r4, [sp, #0xc]
	str	r0, [sp, #4]
	str	r1, [sp]
.L44ea:
	mov	r3, r10
	ldr	r3, [r3, #8]
	ldr	r2, [sp, #0x3c]
	ldr	r5, [r2]
	str	r3, [sp, #0x34]
	mov	r4, r10
	ldr	r4, [r4, #0xc]
	str	r4, [sp, #0x30]
	mov	r0, r10
	ldr	r0, [r0, #0x10]
	str	r0, [sp, #0x2c]
	mov	r1, r10
	ldr	r1, [r1, #0x14]
	str	r1, [sp, #0x28]
	mov	r2, r10
	ldr	r2, [r2, #0x18]
	ldr	r4, [sp, #0x3c]
	str	r2, [sp, #0x24]
	ldr	r3, [sp, #0xc]
	ldr	r4, [r4, #4]
	ldrb	r3, [r3]
	ldr	r0, [sp, #0x3c]
	str	r4, [sp, #0x1c]
	ldr	r0, [r0, #8]
	ldr	r2, [sp, #0x3c]
	str	r0, [sp, #0x18]
	ldr	r2, [r2, #0xc]
	mov	r11, r3
	str	r2, [sp, #0x14]
	ldr	r3, [sp, #0x10]
	ldrb	r3, [r3]
	str	r3, [sp, #0x20]
	add	r3, #0xff
	lsl	r3, #24
	lsr	r3, #24
	mov	r1, r11
	str	r3, [sp, #0x20]
	cmp	r3, #0
	beq	.L453a
	b	.L46ee
.L453a:
	mov	r4, #3
	str	r4, [sp, #0x20]
	cmp	r1, #0
	bne	.L458e
	ldr	r0, [sp, #0x28]
	ldr	r2, [sp, #0x24]
	ldr	r4, [sp, #0x38]
	add	r0, r2
	str	r0, [sp, #0x28]
	ldr	r3, =.L5140
	lsl	r2, r4, #2
	ldr	r3, [r3, r2]
	cmp	r0, r3
	blt	.L4560
	ldr	r3, =.L5168
	ldr	r3, [r3, r2]
	neg	r3, r3
	str	r3, [sp, #0x24]
	b	.L4588
.L4560:
	ldr	r0, [sp, #0x28]
	ldr	r3, =0x1999
	cmp	r0, r3
	bgt	.L4588
	ldr	r3, =.L5168
	ldr	r4, =0x1999
	ldr	r3, [r3, r2]
	str	r4, [sp, #0x28]
	str	r3, [sp, #0x24]
	ldr	r2, [r5, #8]
	str	r2, [sp, #0x1c]
	ldr	r3, [r5, #0xc]
	str	r3, [sp, #0x18]
	ldr	r4, [r5, #0x10]
	mov	r0, #0x18
	str	r4, [sp, #0x14]
	str	r1, [r5, #8]
	str	r1, [r5, #0xc]
	str	r1, [r5, #0x10]
	mov	r11, r0
.L4588:
	ldr	r0, [sp, #0x28]
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
.L458e:
	bl	__Random
	ldr	r2, =gOvl_0200d0e4
	ldr	r1, [sp, #8]
	ldrb	r3, [r1, r2]
	mul	r3, r0
	lsr	r6, r3, #16
	bl	__Random
	ldr	r4, [sp, #4]
	ldrb	r3, [r4]
	mul	r3, r0
	lsr	r7, r3, #16
	bl	__Random
	ldr	r1, [sp, #4]
	ldrb	r3, [r1, #1]
	mul	r3, r0
	lsr	r3, #16
	mov	r8, r3
	cmp	r6, #0
	beq	.L45c8
	mov	r1, #0xfa
	lsl	r0, r6, #16
	lsl	r1, #2
	bl	_udivsi3_RAM
	mov	r6, r0
	b	.L45ca
.L45c8:
	mov	r6, #0
.L45ca:
	cmp	r7, #0
	beq	.L45dc
	mov	r1, #0xfa
	lsl	r0, r7, #16
	lsl	r1, #2
	bl	_udivsi3_RAM
	mov	r9, r0
	b	.L45e0
.L45dc:
	mov	r2, #0
	mov	r9, r2
.L45e0:
	mov	r3, r8
	cmp	r3, #0
	beq	.L45f2
	mov	r1, #0xfa
	lsl	r0, r3, #16
	lsl	r1, #2
	bl	_udivsi3_RAM
	b	.L45f4
.L45f2:
	mov	r0, #0
.L45f4:
	ldr	r2, =gScript_936__0200d120
	ldr	r4, [sp, #8]
	ldrsb	r3, [r2, r4]
	cmp	r3, #1
	bne	.L4606
	ldr	r1, [sp, #0x34]
	add	r1, r6
	str	r1, [sp, #0x34]
	b	.L4618
.L4606:
	ldr	r4, [sp, #0x34]
	mov	r1, #1
	sub	r4, r6
	neg	r1, r1
	str	r4, [sp, #0x34]
	cmp	r3, r1
	beq	.L4618
	mov	r3, #0
	str	r3, [sp, #0x34]
.L4618:
	ldr	r3, [sp, #8]
	add	r3, #1
	ldrsb	r3, [r2, r3]
	cmp	r3, #1
	bne	.L462a
	ldr	r4, [sp, #0x30]
	add	r4, r9
	str	r4, [sp, #0x30]
	b	.L463e
.L462a:
	ldr	r1, [sp, #0x30]
	mov	r4, r9
	sub	r1, r4
	str	r1, [sp, #0x30]
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	beq	.L463e
	mov	r3, #0
	str	r3, [sp, #0x30]
.L463e:
	ldr	r3, [sp, #8]
	add	r3, #2
	ldrsb	r3, [r2, r3]
	cmp	r3, #1
	bne	.L4650
	ldr	r4, [sp, #0x2c]
	add	r4, r0
	str	r4, [sp, #0x2c]
	b	.L4662
.L4650:
	ldr	r1, [sp, #0x2c]
	mov	r2, #1
	sub	r1, r0
	neg	r2, r2
	str	r1, [sp, #0x2c]
	cmp	r3, r2
	beq	.L4662
	mov	r3, #0
	str	r3, [sp, #0x2c]
.L4662:
	ldr	r4, [sp]
	ldr	r1, [sp, #0x34]
	ldrb	r3, [r4]
	mov	r0, r3
	mul	r0, r1
	bl	__sin
	ldr	r2, [sp]
	ldr	r4, [sp, #0x30]
	ldrb	r3, [r2, #1]
	lsl	r6, r0, #1
	mov	r0, r3
	mul	r0, r4
	bl	__sin
	lsl	r7, r0, #1
	ldr	r0, [sp]
	ldr	r1, [sp, #0x2c]
	ldrb	r3, [r0, #2]
	mov	r0, r3
	mul	r0, r1
	bl	__cos
	mov	r2, r11
	lsl	r0, #1
	cmp	r2, #0
	beq	.L46d0
	ldr	r3, [sp, #0x1c]
	add	r3, r6
	str	r3, [sp, #0x1c]
	mov	r3, r11
	ldr	r4, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	add	r3, #0xff
	lsl	r3, #24
	add	r4, r7
	add	r1, r0
	lsr	r3, #24
	str	r4, [sp, #0x18]
	str	r1, [sp, #0x14]
	mov	r11, r3
	cmp	r3, #0
	bne	.L46ee
	ldr	r2, [sp, #0x1c]
	mov	r3, r9
	str	r2, [r5, #8]
	str	r2, [r5, #0x38]
	cmp	r3, #0
	beq	.L46c8
	str	r4, [r5, #0xc]
	str	r4, [r5, #0x3c]
.L46c8:
	ldr	r4, [sp, #0x14]
	str	r4, [r5, #0x10]
	str	r4, [r5, #0x40]
	b	.L46ee
.L46d0:
	ldr	r3, [r5, #8]
	mov	r1, r9
	add	r3, r6
	str	r3, [r5, #8]
	str	r3, [r5, #0x38]
	cmp	r1, #0
	beq	.L46e6
	ldr	r3, [r5, #0xc]
	add	r3, r7
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
.L46e6:
	ldr	r3, [r5, #0x10]
	add	r3, r0
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x40]
.L46ee:
	ldr	r2, [sp, #0x34]
	mov	r3, r10
	str	r2, [r3, #8]
	ldr	r4, [sp, #0x30]
	str	r4, [r3, #0xc]
	ldr	r0, [sp, #0x2c]
	str	r0, [r3, #0x10]
	ldr	r1, [sp, #0x28]
	str	r1, [r3, #0x14]
	ldr	r2, [sp, #0x24]
	str	r2, [r3, #0x18]
	ldr	r4, [sp, #0xc]
	mov	r3, r11
	strb	r3, [r4]
	ldr	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x3c]
	str	r0, [r1, #4]
	ldr	r2, [sp, #0x18]
	mov	r3, r10
	str	r2, [r3]
	ldr	r4, [sp, #0x14]
	add	r0, sp, #0x20
	str	r4, [r1, #0xc]
	ldrb	r0, [r0]
	ldr	r1, [sp, #0x10]
	strb	r0, [r1]
	ldr	r1, [sp]
	ldr	r2, [sp, #8]
	add	r1, #3
	add	r2, #3
	ldr	r3, [sp, #4]
	ldr	r4, [sp, #0x38]
	str	r1, [sp]
	str	r2, [sp, #8]
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #0xc]
	add	r3, #3
	add	r4, #1
	add	r1, #0x28
	add	r2, #0x28
	str	r3, [sp, #4]
	str	r4, [sp, #0x38]
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	ldr	r3, [sp, #0x3c]
	mov	r0, #0x28
	add	r3, #0x28
	add	r10, r0
	ldr	r4, [sp, #0x40]
	mov	r0, #0xc8
	str	r3, [sp, #0x3c]
	lsl	r0, #1
	add	r3, r4, r0
	ldrh	r3, [r3]
	ldr	r1, [sp, #0x38]
	cmp	r1, r3
	beq	.L4762
	b	.L44ea
.L4762:
	add	sp, #0x44
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200c49c

.thumb_func_start OvlFunc_896_200c78c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r8, r1
	mov	r1, #0xca
	mov	r6, r0
	lsl	r1, #1
	mov	r0, #0x21
	sub	sp, #4
	bl	__galloc_ewram
	mov	r3, #0
	mov	r9, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r5, r9
	ldr	r3, =REG_DMA3SAD
	mov	r1, r9
	ldr	r2, =0x85000065
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, r8
	cmp	r2, #0xa
	bls	.L47c8
	mov	r3, #0xa
	mov	r8, r3
.L47c8:
	mov	r2, #0
	mov	r3, r8
	mov	r10, r2
	cmp	r3, #0
	beq	.L481a
	mov	r11, r2
	mov	r7, #0
.L47d6:
	mov	r0, r6
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	mov	r2, r11
	add	r3, #0x26
	str	r0, [r5]
	add	r0, #0x55
	strb	r2, [r3]
	strb	r2, [r0]
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Func_800c548
	ldr	r2, =.L5140
	ldr	r3, [r7, r2]
	str	r3, [r5, #0x1c]
	ldr	r3, =.L5168
	ldr	r3, [r3, r7]
	mov	r2, r5
	neg	r3, r3
	str	r3, [r5, #0x20]
	add	r2, #0x24
	mov	r3, #3
	strb	r3, [r2]
	mov	r3, #1
	add	r10, r3
	add	r7, #4
	add	r5, #0x28
	add	r6, #1
	cmp	r10, r8
	bne	.L47d6
.L481a:
	mov	r3, #0xc8
	lsl	r3, #1
	add	r3, r9
	mov	r2, r8
	mov	r1, #0xc8
	strh	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_896_200c49c
	bl	__StartTask
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200c78c

	.section .data
	.global gScript_896__0200cbd0
	.global .L5088
	.global gOvl_0200cd88

gScript_896__0200cbd0:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4bd0, (0x4be4-0x4bd0)
	.global gScript_881__0200cbe4
	.global gScript_896__0200cbe4
gScript_881__0200cbe4:
gScript_896__0200cbe4:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4be4, (0x4d88-0x4be4)
gOvl_0200cd88:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4d88, (0x4db8-0x4d88)
	.global gOvl_0200cdb8
gOvl_0200cdb8:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4db8, (0x4dc4-0x4db8)
	.global gOvl_0200cdc4
gOvl_0200cdc4:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4dc4, (0x4fa4-0x4dc4)
	.global gOvl_0200cfa4
gOvl_0200cfa4:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4fa4, (0x5088-0x4fa4)
.L5088:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5088, (0x50e4-0x5088)
	.global gOvl_0200d0e4
gOvl_0200d0e4:
	.incbin "overlays/rom_78ef88/orig.bin", 0x50e4, (0x5102-0x50e4)
.L5102:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5102, (0x5120-0x5102)
	.global gScript_936__0200d120
gScript_936__0200d120:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5120, (0x5140-0x5120)
.L5140:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5140, (0x5168-0x5140)
.L5168:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5168
