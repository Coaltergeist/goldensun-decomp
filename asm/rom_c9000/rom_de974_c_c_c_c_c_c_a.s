	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_CuttingEdge
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r0, [r6, #8]
	bl	_Func_80b7dd0
	ldr	r5, [r0]
	mov	r1, #2
	mov	r0, r5
	bl	_Actor_SetAnim
	mov	r0, r5
	mov	r1, #0x30
	bl	_Actor_SetAnimSpeed
	mov	r0, r6
	mov	r1, #5
	bl	BaseAnim_ParticleSpray
	mov	r0, r5
	mov	r1, #0x10
	bl	_Actor_SetAnimSpeed
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Anim_CuttingEdge

.thumb_func_start Anim_HeatWave
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r0, [r6, #8]
	bl	_Func_80b7dd0
	ldr	r5, [r0]
	mov	r1, #2
	mov	r0, r5
	bl	_Actor_SetAnim
	mov	r0, r5
	mov	r1, #0x30
	bl	_Actor_SetAnimSpeed
	mov	r0, r6
	mov	r1, #6
	bl	BaseAnim_ParticleSpray
	mov	r0, r5
	mov	r1, #0x10
	bl	_Actor_SetAnimSpeed
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Anim_HeatWave

