	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global deepWhileBr
	.type deepWhileBr , %function
deepWhileBr:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L32:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-16]
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L38
.L36:
	ldr r4, =42
	str r4, [fp, #-8]
	ldr r4, [fp, #-12]
	ldr r5, =100
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L40
	b .L41
.L37:
	ldr r4, [fp, #-12]
	mov r0, r4
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L38:
	ldr r4, [fp, #-12]
	ldr r5, =75
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L36
	b .L37
.L40:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	str r6, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, =99
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L43
	b .L44
.L41:
	b .L38
.L43:
	ldr r4, [fp, #-8]
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-4]
	ldr r4, =1
	ldr r5, =1
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L47
	b .L48
.L44:
	b .L41
.L47:
	ldr r4, [fp, #-4]
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-12]
	b .L48
.L48:
	b .L44

	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L50:
	ldr r4, =2
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r4
	mov r1, r5
	bl deepWhileBr
	mov r4, r0
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr

