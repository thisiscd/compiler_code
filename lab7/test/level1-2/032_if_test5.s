	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global if_if_Else
	.type if_if_Else , %function
if_if_Else:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L13:
	ldr r4, =5
	str r4, [fp, #-8]
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =5
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L16
	b .L17
.L16:
	ldr r4, [fp, #-4]
	ldr r5, =10
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L19
	b .L20
.L17:
	ldr r4, [fp, #-8]
	ldr r5, =15
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L18
.L18:
	ldr r4, [fp, #-8]
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L19:
	ldr r4, =25
	str r4, [fp, #-8]
	b .L20
.L20:
	b .L18

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L22:
	bl if_if_Else
	mov r4, r0
	mov r0, r4
	add sp, sp, #0
	pop {r4, fp, lr}
	bx lr

