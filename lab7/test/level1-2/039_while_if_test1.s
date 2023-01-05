	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global whileIf
	.type whileIf , %function
whileIf:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L19:
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-4]
	b .L24
.L22:
	ldr r4, [fp, #-8]
	ldr r5, =5
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L25
	b .L26
.L23:
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L24:
	ldr r4, [fp, #-8]
	ldr r5, =100
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L22
	b .L23
.L25:
	ldr r4, =25
	str r4, [fp, #-4]
	b .L27
.L26:
	ldr r4, [fp, #-8]
	ldr r5, =10
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L28
	b .L29
.L27:
	ldr r4, [fp, #-8]
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L24
.L28:
	ldr r4, =42
	str r4, [fp, #-4]
	b .L30
.L29:
	ldr r4, [fp, #-8]
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-4]
	b .L30
.L30:
	b .L27

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L31:
	bl whileIf
	mov r4, r0
	mov r0, r4
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr

