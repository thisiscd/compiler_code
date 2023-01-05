	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global enc
	.type enc , %function
enc:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L30:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =25
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L32
	b .L33
.L32:
	ldr r4, [fp, #-4]
	ldr r5, =60
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L34
.L33:
	ldr r4, [fp, #-4]
	ldr r5, =15
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L34
.L34:
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr

	.global dec
	.type dec , %function
dec:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L35:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =85
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L37
	b .L38
.L37:
	ldr r4, [fp, #-4]
	ldr r5, =59
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L39
.L38:
	ldr r4, [fp, #-4]
	ldr r5, =14
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L39
.L39:
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L40:
	ldr r4, =400
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl enc
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl dec
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	mov r4, r0
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putch
	mov r4, r0
	mov r0, #0
	add sp, sp, #8
	pop {r4, fp, lr}
	bx lr

