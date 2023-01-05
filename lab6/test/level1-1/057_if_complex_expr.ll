declare i32 @getint()
declare i32 @getch()
declare void @putint(i32)
declare void @putch(i32)
define i32 @main(){
B42:
  %t47 = alloca i32, align 4
  %t46 = alloca i32, align 4
  %t45 = alloca i32, align 4
  %t44 = alloca i32, align 4
  %t43 = alloca i32, align 4
  store i32 5, i32* %t43, align 4
  store i32 5, i32* %t44, align 4
  store i32 1, i32* %t45, align 4
  %t9 = sub i32 0, 2
  store i32 %t9, i32* %t46, align 4
  store i32 2, i32* %t47, align 4
  %t11 = load i32, i32* %t46, align 4
  %t12 = mul i32 %t11, 1
  %t13 = sdiv i32 %t12, 2
  %t52 = icmp slt i32 %t13, 0
  br i1 %t52, label %B48, label %B51
B48:                               	; preds = %B42
  %t25 = load i32, i32* %t47, align 4
  call void @putint(i32 %t25)
  br label %B49
B51:                               	; preds = %B42
  %t15 = load i32, i32* %t43, align 4
  %t16 = load i32, i32* %t44, align 4
  %t17 = sub i32 %t15, %t16
  %t55 = icmp ne i32 %t17, 0
  br i1 %t55, label %B54, label %B49
B49:                               	; preds = %B48
  %t26 = load i32, i32* %t46, align 4
  %t27 = srem i32 %t26, 2
  %t28 = add i32 %t27, 67
  %t62 = icmp slt i32 %t28, 0
  br i1 %t62, label %B58, label %B61
B54:                               	; preds = %B51
  %t19 = load i32, i32* %t45, align 4
  %t20 = add i32 %t19, 3
  %t21 = srem i32 %t20, 2
  %t56 = icmp ne i32 %t21, 0
  br i1 %t56, label %B48, label %B49
B58:                               	; preds = %B49
  store i32 4, i32* %t47, align 4
  %t41 = load i32, i32* %t47, align 4
  call void @putint(i32 %t41)
  br label %B59
B61:                               	; preds = %B49
  %t30 = load i32, i32* %t43, align 4
  %t31 = load i32, i32* %t44, align 4
  %t32 = sub i32 %t30, %t31
  %t65 = icmp ne i32 %t32, 0
  br i1 %t65, label %B64, label %B59
B59:                               	; preds = %B58
  ret i32 0
B64:                               	; preds = %B61
  %t34 = load i32, i32* %t45, align 4
  %t35 = add i32 %t34, 2
  %t36 = srem i32 %t35, 2
  %t66 = icmp ne i32 %t36, 0
  br i1 %t66, label %B58, label %B59
}
