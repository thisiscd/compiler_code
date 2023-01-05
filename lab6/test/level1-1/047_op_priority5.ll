declare i32 @getint()
declare i32 @getch()
declare void @putint(i32)
declare void @putch(i32)
@a = global i32 1, align 4
@b = global i32 0, align 4
@c = global i32 1, align 4
@d = global i32 2, align 4
@e = global i32 4, align 4
define i32 @main(){
B48:
  %t49 = alloca i32, align 4
  store i32 0, i32* %t49, align 4
  %t12 = load i32, i32* @a, align 4
  %t13 = load i32, i32* @b, align 4
  %t14 = mul i32 %t12, %t13
  %t15 = load i32, i32* @c, align 4
  %t16 = sdiv i32 %t14, %t15
  %t17 = load i32, i32* @e, align 4
  %t18 = load i32, i32* @d, align 4
  %t19 = add i32 %t17, %t18
  %t57 = icmp eq i32 %t16, %t19
  br i1 %t57, label %B56, label %B53
B50:                               	; preds = %B48
  store i32 1, i32* %t49, align 4
  br label %B51
B53:                               	; preds = %B48
  %t33 = load i32, i32* @a, align 4
  %t34 = load i32, i32* @b, align 4
  %t35 = load i32, i32* @c, align 4
  %t36 = mul i32 %t34, %t35
  %t37 = sub i32 %t33, %t36
  %t38 = load i32, i32* @d, align 4
  %t39 = load i32, i32* @a, align 4
  %t40 = load i32, i32* @c, align 4
  %t41 = sdiv i32 %t39, %t40
  %t42 = sub i32 %t38, %t41
  %t55 = icmp eq i32 %t37, %t42
  br i1 %t55, label %B50, label %B51
B56:                               	; preds = %B48
  %t21 = load i32, i32* @a, align 4
  %t22 = load i32, i32* @a, align 4
  %t23 = load i32, i32* @b, align 4
  %t24 = add i32 %t22, %t23
  %t25 = mul i32 %t21, %t24
  %t26 = load i32, i32* @c, align 4
  %t27 = add i32 %t25, %t26
  %t28 = load i32, i32* @d, align 4
  %t29 = load i32, i32* @e, align 4
  %t30 = add i32 %t28, %t29
  %t58 = icmp sle i32 %t27, %t30
  br i1 %t58, label %B50, label %B53
B51:                               	; preds = %B50
  %t46 = load i32, i32* %t49, align 4
  call void @putint(i32 %t46)
  %t47 = load i32, i32* %t49, align 4
  ret i32 %t47
}
