	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global ifElseIf
	.type ifElseIf , %function
ifElseIf:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L29:
	ldr r4, =5
	str r4, [fp, #-8]
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =6
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L32
	b .L35
.L32:
	ldr r4, [fp, #-8]
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
	b .L34
.L33:
	ldr r4, [fp, #-4]
	ldr r5, =10
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L41
	b .L39
.L34:
	ldr r4, [fp, #-8]
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L35:
	ldr r4, [fp, #-4]
	ldr r5, =11
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L32
	b .L33
.L38:
	ldr r4, =25
	str r4, [fp, #-8]
	b .L40
.L39:
	ldr r4, [fp, #-4]
	ldr r5, =10
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L47
	b .L45
.L40:
	b .L34
.L41:
	ldr r4, [fp, #-8]
	ldr r5, =1
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L38
	b .L39
.L44:
	ldr r4, [fp, #-8]
	ldr r5, =15
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L46
.L45:
	ldr r4, [fp, #-8]
	ldr r5, =0
	sub r6, r5, r4
	str r6, [fp, #-8]
	b .L46
.L46:
	b .L40
.L47:
	ldr r4, [fp, #-8]
	ldr r5, =0
	ldr r6, =5
	sub r7, r5, r6
	cmp r4, r7
	moveq r4, #1
	movne r4, #0
	beq .L44
	b .L45

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L50:
	bl ifElseIf
	mov r4, r0
	mov r0, r4
	bl putint
	mov r4, r0
	mov r0, #0
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr

