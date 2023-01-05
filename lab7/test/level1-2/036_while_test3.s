	.arch armv8-a
	.arch_extension crc
	.arm
	.data
.global g
	.size g, 4
g:
	.word 0
.global h
	.size h, 4
h:
	.word 0
.global f
	.size f, 4
f:
	.word 0
.global e
	.size e, 4
e:
	.word 0
	.text
	.global EightWhile
	.type EightWhile , %function
EightWhile:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L92:
	ldr r4, =5
	str r4, [fp, #-16]
	ldr r4, =6
	str r4, [fp, #-12]
	ldr r4, =7
	str r4, [fp, #-8]
	ldr r4, =10
	str r4, [fp, #-4]
	b .L99
.L97:
	ldr r4, [fp, #-16]
	ldr r5, =3
	add r6, r4, r5
	str r6, [fp, #-16]
	b .L102
.L98:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-4]
	add r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-8]
	add r6, r5, r4
	ldr r4, addr_e
	ldr r5, [r4]
	ldr r4, [fp, #-4]
	add r7, r5, r4
	ldr r4, addr_g
	ldr r5, [r4]
	sub r4, r7, r5
	ldr r5, addr_h
	ldr r7, [r5]
	add r5, r4, r7
	sub r4, r6, r5
	mov r0, r4
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L99:
	ldr r4, [fp, #-16]
	ldr r5, =20
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L97
	b .L98
.L100:
	ldr r4, [fp, #-12]
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L105
.L101:
	ldr r4, [fp, #-12]
	ldr r5, =2
	sub r6, r4, r5
	str r6, [fp, #-12]
	b .L99
.L102:
	ldr r4, [fp, #-12]
	ldr r5, =10
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L100
	b .L101
.L103:
	ldr r4, [fp, #-8]
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-8]
	b .L108
.L104:
	ldr r4, [fp, #-8]
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L102
.L105:
	ldr r4, [fp, #-8]
	ldr r5, =7
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L103
	b .L104
.L106:
	ldr r4, [fp, #-4]
	ldr r5, =3
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L111
.L107:
	ldr r4, [fp, #-4]
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L105
.L108:
	ldr r4, [fp, #-4]
	ldr r5, =20
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L106
	b .L107
.L109:
	ldr r4, addr_e
	ldr r5, [r4]
	ldr r4, =1
	sub r6, r5, r4
	ldr r4, addr_e
	str r6, [r4]
	b .L114
.L110:
	ldr r4, addr_e
	ldr r5, [r4]
	ldr r4, =1
	add r6, r5, r4
	ldr r4, addr_e
	str r6, [r4]
	b .L108
.L111:
	ldr r4, addr_e
	ldr r5, [r4]
	ldr r4, =1
	cmp r5, r4
	movgt r4, #1
	movle r4, #0
	bgt .L109
	b .L110
.L112:
	ldr r4, addr_f
	ldr r5, [r4]
	ldr r4, =2
	sub r6, r5, r4
	ldr r4, addr_f
	str r6, [r4]
	b .L117
.L113:
	ldr r4, addr_f
	ldr r5, [r4]
	ldr r4, =1
	add r6, r5, r4
	ldr r4, addr_f
	str r6, [r4]
	b .L111
.L114:
	ldr r4, addr_f
	ldr r5, [r4]
	ldr r4, =2
	cmp r5, r4
	movgt r4, #1
	movle r4, #0
	bgt .L112
	b .L113
.L115:
	ldr r4, addr_g
	ldr r5, [r4]
	ldr r4, =10
	add r6, r5, r4
	ldr r4, addr_g
	str r6, [r4]
	b .L120
.L116:
	ldr r4, addr_g
	ldr r5, [r4]
	ldr r4, =8
	sub r6, r5, r4
	ldr r4, addr_g
	str r6, [r4]
	b .L114
.L117:
	ldr r4, addr_g
	ldr r5, [r4]
	ldr r4, =3
	cmp r5, r4
	movlt r4, #1
	movge r4, #0
	blt .L115
	b .L116
.L118:
	ldr r4, addr_h
	ldr r5, [r4]
	ldr r4, =8
	add r6, r5, r4
	ldr r4, addr_h
	str r6, [r4]
	b .L120
.L119:
	ldr r4, addr_h
	ldr r5, [r4]
	ldr r4, =1
	sub r6, r5, r4
	ldr r4, addr_h
	str r6, [r4]
	b .L117
.L120:
	ldr r4, addr_h
	ldr r5, [r4]
	ldr r4, =10
	cmp r5, r4
	movlt r4, #1
	movge r4, #0
	blt .L118
	b .L119

	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L121:
	ldr r4, =1
	ldr r5, addr_g
	str r4, [r5]
	ldr r4, =2
	ldr r5, addr_h
	str r4, [r5]
	ldr r4, =4
	ldr r5, addr_e
	str r4, [r5]
	ldr r4, =6
	ldr r5, addr_f
	str r4, [r5]
	bl EightWhile
	mov r4, r0
	mov r0, r4
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr

addr_g:
	.word g
addr_h:
	.word h
addr_f:
	.word f
addr_e:
	.word e
