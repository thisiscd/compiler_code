declare i32 @getint()
declare i32 @getch()
declare void @putint(i32)
declare void @putch(i32)
@a = global i32 0, align 4
@b = global i32 0, align 4
@c = global i32 0, align 4
@d = global i32 0, align 4
@e = global i32 0, align 4
define i32 @main(){
B45:
  %t51 = alloca i32, align 4
  %t46 = call i32 @getint()
  store i32 %t46, i32* @a, align 4
  %t47 = call i32 @getint()
  store i32 %t47, i32* @b, align 4
  %t48 = call i32 @getint()
  store i32 %t48, i32* @c, align 4
  %t49 = call i32 @getint()
  store i32 %t49, i32* @d, align 4
  %t50 = call i32 @getint()
  store i32 %t50, i32* @e, align 4
  store i32 0, i32* %t51, align 4
  %t12 = load i32, i32* @a, align 4
  %t13 = load i32, i32* @b, align 4
  %t14 = load i32, i32* @c, align 4
  %t15 = mul i32 %t13, %t14
  %t16 = sub i32 %t12, %t15
  %t17 = load i32, i32* @d, align 4
  %t18 = load i32, i32* @a, align 4
  %t19 = load i32, i32* @c, align 4
  %t20 = sdiv i32 %t18, %t19
  %t21 = sub i32 %t17, %t20
  %t59 = icmp ne i32 %t16, %t21
  br i1 %t59, label %B52, label %B58
B52:                               	; preds = %B45
  store i32 1, i32* %t51, align 4
  br label %B53
B55:                               	; preds = %B45
  %t33 = load i32, i32* @a, align 4
  %t34 = load i32, i32* @b, align 4
  %t35 = add i32 %t33, %t34
  %t36 = load i32, i32* @c, align 4
  %t37 = add i32 %t35, %t36
  %t38 = load i32, i32* @d, align 4
  %t39 = load i32, i32* @e, align 4
  %t40 = add i32 %t38, %t39
  %t57 = icmp eq i32 %t37, %t40
  br i1 %t57, label %B52, label %B53
B58:                               	; preds = %B45
  %t23 = load i32, i32* @a, align 4
  %t24 = load i32, i32* @b, align 4
  %t25 = mul i32 %t23, %t24
  %t26 = load i32, i32* @c, align 4
  %t27 = sdiv i32 %t25, %t26
  %t28 = load i32, i32* @e, align 4
  %t29 = load i32, i32* @d, align 4
  %t30 = add i32 %t28, %t29
  %t60 = icmp eq i32 %t27, %t30
  br i1 %t60, label %B52, label %B55
B53:                               	; preds = %B52
  %t44 = load i32, i32* %t51, align 4
  ret i32 %t44
}
