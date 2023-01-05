	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global ifWhile
	.type ifWhile , %function
ifWhile:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L23:
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r4, =3
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =5
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L26
	b .L27
.L26:
	b .L31
.L27:
	b .L34
.L28:
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L29:
	ldr r4, [fp, #-4]
	ldr r5, =2
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L31
.L30:
	ldr r4, [fp, #-4]
	ldr r5, =25
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L28
.L31:
	ldr r4, [fp, #-4]
	ldr r5, =2
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L29
	b .L30
.L32:
	ldr r4, [fp, #-4]
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L34
.L33:
	b .L28
.L34:
	ldr r4, [fp, #-8]
	ldr r5, =5
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L32
	b .L33

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L35:
	bl ifWhile
	mov r4, r0
	mov r0, r4
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr

