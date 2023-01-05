	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global FourWhile
	.type FourWhile , %function
FourWhile:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L44:
	ldr r4, =5
	str r4, [fp, #-16]
	ldr r4, =6
	str r4, [fp, #-12]
	ldr r4, =7
	str r4, [fp, #-8]
	ldr r4, =10
	str r4, [fp, #-4]
	b .L51
.L49:
	ldr r4, [fp, #-16]
	ldr r5, =3
	add r6, r4, r5
	str r6, [fp, #-16]
	b .L54
.L50:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-4]
	add r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-8]
	add r6, r5, r4
	mov r0, r6
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L51:
	ldr r4, [fp, #-16]
	ldr r5, =20
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L49
	b .L50
.L52:
	ldr r4, [fp, #-12]
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L57
.L53:
	ldr r4, [fp, #-12]
	ldr r5, =2
	sub r6, r4, r5
	str r6, [fp, #-12]
	b .L51
.L54:
	ldr r4, [fp, #-12]
	ldr r5, =10
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L52
	b .L53
.L55:
	ldr r4, [fp, #-8]
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-8]
	b .L60
.L56:
	ldr r4, [fp, #-8]
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L54
.L57:
	ldr r4, [fp, #-8]
	ldr r5, =7
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L55
	b .L56
.L58:
	ldr r4, [fp, #-4]
	ldr r5, =3
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L60
.L59:
	ldr r4, [fp, #-4]
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L57
.L60:
	ldr r4, [fp, #-4]
	ldr r5, =20
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L58
	b .L59

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L61:
	bl FourWhile
	mov r4, r0
	mov r0, r4
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr

