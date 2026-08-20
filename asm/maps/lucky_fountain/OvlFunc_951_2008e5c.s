	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_951_2008e5c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, =.Lm951_2070
	mov	r9, r0
	mov	r1, #3
	mov	r2, r9
	sub	sp, #0x18
	mov	r8, r1
	add	r2, #0x1c
.Lm951_e74:
	ldr	r3, [r2]
	str	r3, [r2, #0xc]
	ldr	r3, [r2, #4]
	str	r3, [r2, #0x10]
	ldr	r3, [r2, #8]
	str	r3, [r2, #0x14]
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r4, r8
	sub	r2, #0xc
	cmp	r4, #0
	bne	.Lm951_e74
	mov	r1, r9
	mov	r0, #2
	ldrsh	r3, [r1, r0]
	cmp	r3, #0x1f
	bgt	.Lm951_e9a
	b	.Lm951_1224
.Lm951_e9a:
	ldr	r3, [r1, #4]
	ldr	r2, [r1, #0x40]
	add	r3, r2
	str	r3, [r1, #4]
	mov	r2, r9
	ldr	r1, [r1, #8]
	ldr	r0, [r2, #0x44]
	add	r1, r0
	ldr	r3, [r2, #0xc]
	str	r1, [r2, #8]
	ldr	r2, [r2, #0x48]
	mov	r4, r9
	add	r3, r2
	str	r3, [r4, #0xc]
	cmp	r1, #0
	ble	.Lm951_ebc
	b	.Lm951_121c
.Lm951_ebc:
	mov	r1, r8
	str	r1, [r4, #8]
	cmp	r0, #0
	beq	.Lm951_ee8
	str	r1, [r4, #0x44]
	ldr	r3, =.Lm951_20c0
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Lm951_edc
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetAnim
	b	.Lm951_ee8
.Lm951_edc:
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetAnim
.Lm951_ee8:
	mov	r2, r9
	ldr	r3, [r2, #0x4c]
	cmp	r3, #0
	ble	.Lm951_f72
	ldr	r3, [r2, #4]
	mov	r2, #0xf0
	lsl	r2, #15
	sub	r3, r2, r3
	mov	r4, r9
	asr	r7, r3, #8
	mov	r6, #0x8e
	ldr	r3, [r4, #0xc]
	lsl	r6, #15
	sub	r6, r3
	asr	r6, #8
	mov	r0, r7
	mul	r0, r7
	mov	r3, r6
	mul	r3, r6
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	mov	r10, r0
	ldr	r0, =0x1999
	mov	r8, r0
	mov	r0, r8
	mul	r0, r7
	mov	r1, r10
	bl	_divsi3_RAM
	mov	r1, r9
	ldr	r3, [r1, #0x40]
	add	r7, r3, r0
	str	r7, [r1, #0x40]
	mov	r0, r8
	mul	r0, r6
	mov	r1, r10
	bl	_divsi3_RAM
	mov	r2, r9
	ldr	r3, [r2, #0x48]
	add	r2, r3, r0
	mov	r3, r9
	str	r2, [r3, #0x48]
	lsl	r3, r7, #6
	sub	r3, r7
	lsl	r3, #2
	add	r3, r7
	cmp	r3, #0
	bge	.Lm951_f50
	add	r3, #0xff
.Lm951_f50:
	asr	r3, #8
	mov	r4, r9
	str	r3, [r4, #0x40]
	lsl	r3, r2, #6
	sub	r3, r2
	lsl	r3, #2
	add	r3, r2
	cmp	r3, #0
	bge	.Lm951_f64
	add	r3, #0xff
.Lm951_f64:
	mov	r0, r9
	asr	r3, #8
	str	r3, [r0, #0x48]
	ldr	r3, [r0, #0x4c]
	sub	r3, #1
	str	r3, [r0, #0x4c]
	b	.Lm951_109a
.Lm951_f72:
	mov	r1, r9
	ldr	r3, [r1, #0x40]
	mov	r1, #0xdc
	mul	r3, r1
	cmp	r3, #0
	bge	.Lm951_f80
	add	r3, #0xff
.Lm951_f80:
	asr	r2, r3, #8
	mov	r3, r9
	str	r2, [r3, #0x40]
	ldr	r3, [r3, #0x48]
	mul	r3, r1
	cmp	r3, #0
	bge	.Lm951_f90
	add	r3, #0xff
.Lm951_f90:
	ldr	r0, =0x3ff
	asr	r3, #8
	mov	r4, r9
	str	r3, [r4, #0x48]
	add	r3, r2, r0
	ldr	r2, =0x7fe
	cmp	r3, r2
	bhi	.Lm951_fa4
	mov	r3, #0
	str	r3, [r4, #0x40]
.Lm951_fa4:
	mov	r1, r9
	ldr	r3, [r1, #0x48]
	ldr	r4, =0x3ff
	add	r3, r4
	cmp	r3, r2
	bhi	.Lm951_fb4
	mov	r3, #0
	str	r3, [r1, #0x48]
.Lm951_fb4:
	mov	r0, r9
	ldr	r3, [r0, #0x40]
	cmp	r3, #0
	bne	.Lm951_109a
	ldr	r3, [r0, #0x48]
	cmp	r3, #0
	bne	.Lm951_109a
	ldr	r3, =.Lm951_20c0
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Lm951_ff0
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #2
	bl	__Actor_SetAnim
	mov	r0, #0xf
	mov	r1, #0
	bl	OvlFunc_951_2008e44
	mov	r0, #0xe
	mov	r1, #0
	bl	OvlFunc_951_2008e44
	mov	r0, #0xd
	mov	r1, #0
	bl	OvlFunc_951_2008e44
	b	.Lm951_1014
.Lm951_ff0:
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #2
	bl	__Actor_SetAnim
	mov	r0, #0xa
	mov	r1, #0
	bl	OvlFunc_951_2008e44
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_951_2008e44
	mov	r0, #8
	mov	r1, #0
	bl	OvlFunc_951_2008e44
.Lm951_1014:
	mov	r1, r9
	ldr	r3, [r1, #4]
	mov	r2, #0xf0
	lsl	r2, #15
	ldr	r1, [r1, #0xc]
	sub	r2, r3
	mov	r3, #0x8e
	lsl	r3, #15
	sub	r3, r1
	asr	r2, #16
	asr	r3, #16
	mov	r4, r2
	mul	r4, r2
	mov	r0, r3
	mul	r0, r3
	mov	r2, r4
	mov	r3, r0
	add	r2, r3
	ldr	r3, =.Lm951_2134
	mov	r1, #1
	str	r1, [r3]
	cmp	r2, #0xe0
	bgt	.Lm951_1048
	ldr	r2, =.Lm951_2138
	mov	r3, #0
	b	.Lm951_1098
.Lm951_1048:
	mov	r3, #0x9c
	lsl	r3, #2
	cmp	r2, r3
	bgt	.Lm951_1056
	ldr	r3, =.Lm951_2138
	str	r1, [r3]
	b	.Lm951_109a
.Lm951_1056:
	mov	r4, #0x88
	lsl	r4, #3
	cmp	r2, r4
	bgt	.Lm951_1064
	ldr	r2, =.Lm951_2138
	mov	r3, #2
	b	.Lm951_1098
.Lm951_1064:
	mov	r0, #0xd2
	lsl	r0, #3
	cmp	r2, r0
	bgt	.Lm951_1094
	ldr	r2, =.Lm951_2138
	mov	r3, #3
	b	.Lm951_1098

	.pool_aligned

.Lm951_1094:
	ldr	r2, =.Lm951_2138
	mov	r3, #4
.Lm951_1098:
	str	r3, [r2]
.Lm951_109a:
	mov	r2, #0xf0
	lsl	r2, #15
	mov	r3, r9
	mov	r1, #0xc0
	mov	r10, r2
	mov	r0, #0xa8
	ldr	r2, [r3, #0xc]
	mov	r7, #0xc0
	lsl	r1, #16
	mov	r4, #0xc0
	lsl	r0, #14
	lsl	r7, #14
	mov	r8, r1
	lsl	r4, #13
	mov	r5, r2
	cmp	r2, r0
	bge	.Lm951_10f2
	mov	r3, #0xa8
	lsl	r3, #14
	sub	r3, r2
	mov	r2, #0x2a
	mov	r0, r3
	mul	r0, r2
	mov	r1, #0x12
	str	r4, [sp, #4]
	bl	_divsi3_RAM
	mov	r1, #0xc0
	lsl	r1, #14
	mov	r3, #0xb4
	add	r7, r0, r1
	lsl	r3, #15
	ldr	r4, [sp, #4]
	cmp	r7, r3
	ble	.Lm951_10e2
	mov	r7, r3
.Lm951_10e2:
	mov	r2, r8
	sub	r2, r0
	mov	r3, #0x96
	mov	r8, r2
	lsl	r3, #16
	cmp	r8, r3
	bge	.Lm951_10f2
	mov	r8, r3
.Lm951_10f2:
	mov	r0, #0xcc
	lsl	r0, #15
	cmp	r5, r0
	ble	.Lm951_1130
	mov	r3, #0x2a
	mov	r0, r5
	mul	r0, r3
	ldr	r1, =0xef440000
	add	r0, r1
	mov	r1, #0x12
	str	r4, [sp, #4]
	bl	_divsi3_RAM
	mov	r2, #0xc0
	lsl	r2, #14
	mov	r3, #0xb4
	add	r7, r0, r2
	lsl	r3, #15
	ldr	r4, [sp, #4]
	cmp	r7, r3
	ble	.Lm951_111e
	mov	r7, r3
.Lm951_111e:
	mov	r3, #0xc0
	lsl	r3, #16
	sub	r3, r0
	mov	r8, r3
	mov	r3, #0x96
	lsl	r3, #16
	cmp	r8, r3
	bge	.Lm951_1130
	mov	r8, r3
.Lm951_1130:
	mov	r0, r9
	ldr	r5, [r0, #4]
	mov	r1, #0xb4
	lsl	r1, #15
	mov	r6, r5
	cmp	r5, r1
	bge	.Lm951_1172
	mov	r3, #0xb4
	lsl	r3, #15
	sub	r3, r5
	lsl	r0, r3, #3
	add	r0, r3
	lsl	r0, #1
	mov	r1, #0x2a
	bl	_divsi3_RAM
	mov	r2, #0xc0
	lsl	r2, #13
	mov	r3, #0xa8
	add	r4, r0, r2
	lsl	r3, #14
	cmp	r4, r3
	ble	.Lm951_1160
	mov	r4, r3
.Lm951_1160:
	mov	r3, #0xf0
	lsl	r3, #15
	sub	r3, r0
	mov	r10, r3
	mov	r3, #0xcc
	lsl	r3, #15
	cmp	r10, r3
	bge	.Lm951_1172
	mov	r10, r3
.Lm951_1172:
	mov	r0, #0x96
	lsl	r0, #16
	cmp	r6, r0
	ble	.Lm951_11ac
	lsl	r0, r6, #3
	ldr	r1, =0xf5740000
	add	r0, r6
	lsl	r0, #1
	add	r0, r1
	mov	r1, #0x2a
	bl	_divsi3_RAM
	mov	r2, #0xc0
	lsl	r2, #13
	mov	r3, #0xa8
	add	r4, r0, r2
	lsl	r3, #14
	cmp	r4, r3
	ble	.Lm951_119a
	mov	r4, r3
.Lm951_119a:
	mov	r3, #0xf0
	lsl	r3, #15
	sub	r3, r0
	mov	r10, r3
	mov	r3, #0xcc
	lsl	r3, #15
	cmp	r10, r3
	bge	.Lm951_11ac
	mov	r10, r3
.Lm951_11ac:
	cmp	r6, r7
	bge	.Lm951_11c6
	mov	r0, r9
	ldr	r3, [r0, #0x40]
	str	r7, [r0, #4]
	cmp	r3, #0
	bge	.Lm951_11c4
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r0, #0x40]
.Lm951_11c4:
	mov	r5, r7
.Lm951_11c6:
	cmp	r5, r8
	ble	.Lm951_11e2
	mov	r2, r9
	ldr	r3, [r2, #0x40]
	mov	r1, r8
	str	r1, [r2, #4]
	cmp	r3, #0
	ble	.Lm951_11e2
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r0, r9
	str	r3, [r0, #0x40]
.Lm951_11e2:
	mov	r1, r9
	ldr	r2, [r1, #0xc]
	cmp	r2, r4
	bge	.Lm951_11fe
	ldr	r3, [r1, #0x48]
	str	r4, [r1, #0xc]
	cmp	r3, #0
	bge	.Lm951_11fc
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r1, #0x48]
.Lm951_11fc:
	mov	r2, r4
.Lm951_11fe:
	cmp	r2, r10
	ble	.Lm951_1224
	mov	r3, r9
	mov	r2, r10
	str	r2, [r3, #0xc]
	ldr	r3, [r3, #0x48]
	cmp	r3, #0
	ble	.Lm951_1224
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r4, r9
	str	r3, [r4, #0x48]
	b	.Lm951_1224
.Lm951_121c:
	ldr	r1, =0xffffc000
	mov	r2, r9
	add	r3, r0, r1
	str	r3, [r2, #0x44]
.Lm951_1224:
	mov	r3, #0
	mov	r8, r3
.Lm951_1228:
	mov	r4, r8
	lsl	r3, r4, #1
	ldr	r2, =.Lm951_20d0
	add	r3, r8
	lsl	r3, #3
	add	r6, r3, r2
	mov	r0, #0x12
	ldrsh	r3, [r6, r0]
	ldrh	r2, [r6, #0x12]
	cmp	r3, #0
	ble	.Lm951_1242
	sub	r3, r2, #1
	strh	r3, [r6, #0x12]
.Lm951_1242:
	mov	r1, #0x14
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6, #0x14]
	cmp	r3, #0
	ble	.Lm951_1250
	sub	r3, r2, #1
	strh	r3, [r6, #0x14]
.Lm951_1250:
	mov	r2, r8
	cmp	r2, #1
	bgt	.Lm951_12f4
	mov	r4, #0x10
	ldrsh	r3, [r6, r4]
	mov	r5, #0x80
	lsl	r5, #9
	cmp	r3, #1
	bne	.Lm951_1264
	lsl	r5, #1
.Lm951_1264:
	cmp	r3, #2
	bne	.Lm951_126c
	lsl	r3, r5, #1
	add	r5, r3, r5
.Lm951_126c:
	mov	r0, #0x12
	ldrsh	r3, [r6, r0]
	cmp	r3, #0
	ble	.Lm951_1282
	mov	r1, r8
	cmp	r1, #0
	bne	.Lm951_127e
	mov	r0, #0x12
	b	.Lm951_131a
.Lm951_127e:
	mov	r0, #0x13
	b	.Lm951_131a
.Lm951_1282:
	mov	r2, r8
	cmp	r2, #0
	bne	.Lm951_1296
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetAnim
	b	.Lm951_12a2
.Lm951_1296:
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetAnim
.Lm951_12a2:
	mov	r4, #0xe
	ldrsh	r3, [r6, r4]
	ldrh	r2, [r6, #0xe]
	cmp	r3, #0
	bne	.Lm951_12f0
	mov	r0, #0xc
	ldrsh	r3, [r6, r0]
	cmp	r3, #0
	bne	.Lm951_12ba
	ldr	r3, [r6]
	add	r3, r5
	b	.Lm951_12be
.Lm951_12ba:
	ldr	r3, [r6]
	sub	r3, r5
.Lm951_12be:
	str	r3, [r6]
	mov	r1, #0x80
	ldr	r2, [r6]
	lsl	r1, #15
	cmp	r2, r1
	bgt	.Lm951_12d8
	mov	r3, #0
	strh	r3, [r6, #0xc]
	mov	r3, r8
	cmp	r3, #1
	bne	.Lm951_12d8
	mov	r3, #0x1e
	strh	r3, [r6, #0xe]
.Lm951_12d8:
	ldr	r4, =0xafffff
	cmp	r2, r4
	bgt	.Lm951_12e0
	b	.Lm951_1410
.Lm951_12e0:
	mov	r3, #1
	mov	r0, r8
	strh	r3, [r6, #0xc]
	cmp	r0, #1
	beq	.Lm951_12ec
	b	.Lm951_1410
.Lm951_12ec:
	mov	r3, #0x1e
	b	.Lm951_140e
.Lm951_12f0:
	sub	r3, r2, #1
	b	.Lm951_140e
.Lm951_12f4:
	mov	r1, r8
	cmp	r1, #2
	bne	.Lm951_1384
	mov	r2, #0x10
	ldrsh	r3, [r6, r2]
	mov	r5, #0x40
	neg	r5, r5
	cmp	r3, #1
	bne	.Lm951_1308
	lsl	r5, #1
.Lm951_1308:
	cmp	r3, #2
	bne	.Lm951_1310
	lsl	r3, r5, #1
	add	r5, r3, r5
.Lm951_1310:
	mov	r4, #0x12
	ldrsh	r3, [r6, r4]
	cmp	r3, #0
	ble	.Lm951_1326
	mov	r0, #0x14
.Lm951_131a:
	bl	__MapActor_GetActor
	mov	r1, #3
	bl	__Actor_SetAnim
	b	.Lm951_1410
.Lm951_1326:
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #2
	bl	__Actor_SetAnim
	mov	r1, #0xc
	ldrsh	r0, [r6, r1]
	bl	__sin
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, #0xe0
	lsl	r2, #15
	lsl	r3, #4
	add	r3, r2
	str	r3, [r6]
	mov	r3, #0xc
	ldrsh	r0, [r6, r3]
	bl	__cos
	lsl	r3, r0, #2
	add	r3, r0
	mov	r4, #0x90
	lsl	r3, #3
	lsl	r4, #15
	add	r3, r4
	str	r3, [r6, #8]
	ldrh	r3, [r6, #0xc]
	add	r2, r3, r5
	ldrh	r3, [r6, #0xe]
	add	r3, #1
	strh	r2, [r6, #0xc]
	b	.Lm951_140e

	.pool_aligned

.Lm951_1384:
	ldr	r3, =0x1ff
	ldrh	r2, [r6, #0xe]
	and	r2, r3
	mov	r0, #0x10
	ldrsh	r3, [r6, r0]
	mov	r5, #0x40
	cmp	r3, #1
	bne	.Lm951_1396
	mov	r5, #0x80
.Lm951_1396:
	cmp	r3, #2
	bne	.Lm951_13a4
	lsl	r3, r5, #1
	add	r5, r3, r5
	b	.Lm951_13a4

	.pool_aligned

.Lm951_13a4:
	mov	r1, #0x12
	ldrsh	r3, [r6, r1]
	cmp	r3, #0
	ble	.Lm951_13ba
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #3
	bl	__Actor_SetAnim
	b	.Lm951_140a
.Lm951_13ba:
	ldr	r3, =0x17f
	cmp	r2, r3
	bgt	.Lm951_13fe
	mov	r4, #0xc
	ldrsh	r0, [r6, r4]
	bl	__sin
	mov	r3, #0x34
	mul	r3, r0
	mov	r0, #0xe0
	lsl	r0, #15
	add	r3, r0
	str	r3, [r6]
	mov	r1, #0xc
	ldrsh	r0, [r6, r1]
	bl	__cos
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, #0x90
	lsl	r2, #15
	lsl	r3, #3
	add	r3, r2
	str	r3, [r6, #8]
	ldrh	r3, [r6, #0xc]
	add	r3, r5
	strh	r3, [r6, #0xc]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #2
	bl	__Actor_SetAnim
	b	.Lm951_140a
.Lm951_13fe:
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #3
	bl	__Actor_SetAnim
.Lm951_140a:
	ldrh	r3, [r6, #0xe]
	add	r3, #1
.Lm951_140e:
	strh	r3, [r6, #0xe]
.Lm951_1410:
	mov	r4, #0x14
	ldrsh	r3, [r6, r4]
	cmp	r3, #0
	bne	.Lm951_14ce
	mov	r0, r9
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bne	.Lm951_14ce
	ldr	r2, [r0, #4]
	ldr	r3, [r6]
	sub	r3, r2
	asr	r7, r3, #16
	ldr	r2, [r0, #0xc]
	ldr	r3, [r6, #8]
	sub	r3, r2
	asr	r5, r3, #16
	mov	r2, r7
	mul	r2, r7
	mov	r3, r5
	mul	r3, r5
	add	r0, r2, r3
	cmp	r0, #0x77
	bgt	.Lm951_14ce
	mov	r2, r9
	ldr	r1, [r2, #0x4c]
	cmp	r1, #0x1e
	ble	.Lm951_14ce
	mov	r4, #0xc0
	mov	r3, r8
	lsl	r4, #10
	cmp	r3, #1
	bgt	.Lm951_147a
	mov	r0, #0xc
	ldrsh	r3, [r6, r0]
	cmp	r3, #0
	bne	.Lm951_1466
	ldr	r3, [r2, #0x40]
	cmp	r3, r4
	bge	.Lm951_14b2
	mov	r3, r1
	sub	r3, #0x64
	str	r4, [r2, #0x40]
	b	.Lm951_14b0
.Lm951_1466:
	neg	r2, r4
	mov	r4, r9
	ldr	r3, [r4, #0x40]
	cmp	r3, r2
	ble	.Lm951_14b2
	mov	r3, r1
	sub	r3, #0x64
	str	r2, [r4, #0x40]
	str	r3, [r4, #0x4c]
	b	.Lm951_14b2
.Lm951_147a:
	str	r4, [sp, #4]
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	ldr	r4, [sp, #4]
	mov	r2, r0
	neg	r3, r7
	mov	r0, r3
	mul	r0, r4
	mov	r1, r2
	str	r2, [sp, #8]
	bl	_divsi3_RAM
	ldr	r2, [sp, #8]
	ldr	r4, [sp, #4]
	neg	r3, r5
	mov	r1, r9
	str	r0, [r1, #0x40]
	mov	r0, r3
	mul	r0, r4
	mov	r1, r2
	bl	_divsi3_RAM
	mov	r2, r9
	ldr	r3, [r2, #0x4c]
	sub	r3, #0x64
	str	r0, [r2, #0x48]
.Lm951_14b0:
	str	r3, [r2, #0x4c]
.Lm951_14b2:
	ldr	r0, =0x12d
	bl	__PlaySound
	mov	r3, #0x10
	ldrsh	r0, [r6, r3]
	mov	r1, #3
	add	r0, #1
	bl	_modsi3_RAM
	mov	r3, #0x24
	strh	r3, [r6, #0x12]
	mov	r3, #0x1e
	strh	r0, [r6, #0x10]
	strh	r3, [r6, #0x14]
.Lm951_14ce:
	mov	r4, r8
	cmp	r4, #1
	beq	.Lm951_14fc
	cmp	r4, #1
	bgt	.Lm951_14de
	cmp	r4, #0
	beq	.Lm951_14ea
	b	.Lm951_1556
.Lm951_14de:
	mov	r0, r8
	cmp	r0, #2
	beq	.Lm951_1516
	cmp	r0, #3
	beq	.Lm951_1538
	b	.Lm951_1556
.Lm951_14ea:
	mov	r1, #0x10
	ldrsh	r2, [r6, r1]
	ldr	r3, =.Lm951_2054
	ldrb	r3, [r3, r2]
	lsl	r2, #4
	add	r2, #0x10
	str	r2, [sp]
	mov	r0, #0x12
	b	.Lm951_150c
.Lm951_14fc:
	mov	r4, #0x10
	ldrsh	r2, [r6, r4]
	ldr	r3, =.Lm951_2054
	ldrb	r3, [r3, r2]
	lsl	r2, #4
	add	r2, #0x10
	str	r2, [sp]
	mov	r0, #0x13
.Lm951_150c:
	mov	r1, r6
	mov	r2, #0
	bl	OvlFunc_951_2008dd0
	b	.Lm951_1556
.Lm951_1516:
	mov	r0, #0xc
	ldrsh	r3, [r6, r0]
	mov	r2, #0x80
	lsl	r2, #8
	mov	r4, #0x10
	ldrsh	r1, [r6, r4]
	sub	r2, r3
	ldr	r3, =.Lm951_2057
	ldrb	r3, [r3, r1]
	lsl	r1, #4
	add	r1, #0x10
	str	r1, [sp]
	mov	r0, #0x14
	mov	r1, r6
	bl	OvlFunc_951_2008dd0
	b	.Lm951_1556
.Lm951_1538:
	mov	r0, #0xc
	ldrsh	r3, [r6, r0]
	ldr	r2, =0xffff
	mov	r4, #0x10
	ldrsh	r1, [r6, r4]
	sub	r2, r3
	ldr	r3, =.Lm951_2057
	ldrb	r3, [r3, r1]
	lsl	r1, #4
	add	r1, #0x10
	str	r1, [sp]
	mov	r0, #0x15
	mov	r1, r6
	bl	OvlFunc_951_2008dd0
.Lm951_1556:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	cmp	r1, #4
	beq	.Lm951_1562
	b	.Lm951_1228
.Lm951_1562:
	mov	r2, r9
	ldr	r3, [r2, #4]
	str	r3, [r2, #0x34]
	mov	r3, #0
	str	r3, [r2, #0x38]
	ldr	r3, [r2, #0xc]
	str	r3, [r2, #0x3c]
	ldr	r3, =.Lm951_20c0
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Lm951_15f0
	mov	r1, r9
	mov	r6, #0x10
	add	r1, #4
	mov	r0, #0x11
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r1, r9
	add	r1, #0x34
	mov	r0, #0x10
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r1, r9
	add	r1, #0x10
	mov	r0, #0xf
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r1, r9
	add	r1, #0x1c
	mov	r0, #0xe
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r1, r9
	mov	r2, #0
	mov	r3, #0
	add	r1, #0x28
	mov	r0, #0xd
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, #4
	bl	__Actor_SetAnim
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #4
	bl	__Actor_SetAnim
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r1, #4
	bl	__Actor_SetAnim
	b	.Lm951_1666
.Lm951_15f0:
	mov	r1, r9
	mov	r6, #0x10
	add	r1, #4
	mov	r0, #0xc
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r1, r9
	add	r1, #0x34
	mov	r0, #0xb
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r1, r9
	add	r1, #0x10
	mov	r0, #0xa
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r1, r9
	add	r1, #0x1c
	mov	r0, #9
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r1, r9
	mov	r2, #0
	mov	r3, #0
	add	r1, #0x28
	mov	r0, #8
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #4
	bl	__Actor_SetAnim
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #4
	bl	__Actor_SetAnim
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #4
	bl	__Actor_SetAnim
.Lm951_1666:
	mov	r3, r9
	ldrh	r2, [r3, #2]
	mov	r0, #1
	mov	r4, #2
	ldrsh	r3, [r3, r4]
	neg	r0, r0
	cmp	r3, r0
	beq	.Lm951_167c
	add	r3, r2, #1
	mov	r1, r9
	strh	r3, [r1, #2]
.Lm951_167c:
	add	sp, #0x18
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_2008e5c

