	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #408
.L21:
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-4]
	b .L27
.L25:
	bl getint
	mov r4, r0
	ldr r5, [fp, #-8]
	ldr r6, =-408
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	add r6, fp, r5
	str r4, [r6]
	ldr r4, [fp, #-8]
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L27
.L26:
	b .L32
.L27:
	bl getint
	mov r4, r0
.L30:
	ldr r4, [fp, #-8]
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-8]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	ldr r6, =-408
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	add r6, fp, r5
	ldr r5, [r6]
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L32
.L31:
	ldr r4, [fp, #-4]
	ldr r5, =79
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	mov r0, r6
	add sp, sp, #408
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L32:
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movne r4, #1
	moveq r4, #0
	bne .L30
	b .L31

