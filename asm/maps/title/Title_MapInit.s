	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Title_MapInit
	push	{r5, r6, lr}
	ldr	r2, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r5, r2, r1
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	cmp	r3, #0xa
	bne	.Lb4
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r2, r1
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x4b
	bl	__PlaySound
	mov	r0, #0
	bl	OvlFunc_879_20082e8
	mov	r0, #0x78
	bl	__WaitFrames
	ldr	r2, =gKeyPress
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #0
	bne	.Laa
	mov	r6, r2
.L96:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r2, =0xe0f
	add	r5, #1
	cmp	r5, r2
	bgt	.Laa
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L96
.Laa:
	ldr	r0, =0
	mov	r1, #2
	bl	__SetDestMap
	b	.L196
.Lb4:
	cmp	r3, #9
	bne	.Lea
	mov	r0, #0x43
	bl	__PlaySound
	mov	r0, #0
	bl	__StartGS1Credits
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__Func_8003b70
	bl	__Func_8003ce0
	mov	r0, #0xf0
	bl	__CutsceneWait
	mov	r0, #0x13
	bl	__PlaySound
	ldr	r0, =1
	mov	r1, #2
	bl	__SetDestMap
	b	.L196
.Lea:
	ldr	r0, =0xb
	bl	__Func_8002f3c
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	cmp	r3, #2
	bne	.L15c
.Lf8:
	mov	r0, #0x13
	bl	__PlaySound
	mov	r0, #0
	bl	__NintendoLogo
	mov	r0, #0
	bl	__CamelotLogo
	bl	__Func_801f77c
	cmp	r0, #0
	ble	.L152
	mov	r0, #0x46
	bl	__PlaySound
	mov	r0, #1
	bl	__StartTitleScreen
	cmp	r0, #0
	bne	.L152
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__Func_8003b70
	bl	__Func_8003ce0
	ldr	r2, =gKeyHeld
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #0
	bne	.Lf8
	mov	r6, r2
.L13e:
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x77
	bgt	.Lf8
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L13e
	b	.Lf8
.L152:
	ldr	r0, =1
	mov	r1, #1
	bl	__SetDestMap
	b	.L17a
.L15c:
	mov	r0, #0x40
	bl	__PlaySound
	mov	r0, #0
	bl	__StartTitleScreen
	bl	__Func_8077f70
	ldr	r0, =4
	mov	r1, #0x10
	bl	__SetDestMap
	mov	r0, #0x11
	bl	__PlaySound
.L17a:
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__Func_8003b70
	bl	__Func_8003ce0
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x13
	bl	__PlaySound
.L196:
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Title_MapInit

