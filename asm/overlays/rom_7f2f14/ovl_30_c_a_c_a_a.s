	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_2008e88
	push	{r5, lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb5
	cmp	r2, r3
	bne	.Lea0
	ldr	r0, =gScript_945__0200e904
	b	.Ledc
.Lea0:
	ldr	r3, =0xb6
	cmp	r2, r3
	bne	.Leaa
	ldr	r5, =.L69c4
	b	.Led0
.Leaa:
	ldr	r3, =0xb7
	cmp	r2, r3
	bne	.Leb4
	ldr	r5, =.L6b74
	b	.Led0
.Leb4:
	ldr	r3, =0xb8
	cmp	r2, r3
	bne	.Lebe
	ldr	r5, =.L6c04
	b	.Led0
.Lebe:
	ldr	r3, =0xb9
	cmp	r2, r3
	bne	.Lec8
	ldr	r5, =.L6c64
	b	.Led0
.Lec8:
	ldr	r3, =0xba
	cmp	r2, r3
	bne	.Leda
	ldr	r5, =.L6cf4
.Led0:
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	b	.Ledc
.Leda:
	ldr	r0, =.L68ec
.Ledc:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_2008e88

.thumb_func_start OvlFunc_968_2008f1c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x953
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2008f1c

.thumb_func_start OvlFunc_968_2008f38
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r1, #3
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0x266d
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	mov	r6, #0xa
	mov	r5, #8
	bl	__Func_8093040
.Lf5c:
	mov	r1, #0xf
	mov	r0, #8
	bl	__Func_8092950
	mov	r0, #2
	bl	__Func_80030f8
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, r5
	bl	__Func_80030f8
	cmp	r5, #3
	bls	.Lf7e
	sub	r5, #1
.Lf7e:
	sub	r6, #1
	cmp	r6, #0
	bne	.Lf5c
	ldr	r0, =0x981
	bl	__Func_8079358
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r3, #7
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #7
	mov	r1, #0x11
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
	bl	__Func_8091750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2008f38

.thumb_func_start OvlFunc_968_2008fbc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x2670
	bl	__Func_8092b94
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2008fbc

