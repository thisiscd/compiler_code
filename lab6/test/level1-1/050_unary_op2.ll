declare i32 @getint()
declare i32 @getch()
declare void @putint(i32)
declare void @putch(i32)
define i32 @main(){
B26:
  %t28 = alloca i32, align 4
  %t27 = alloca i32, align 4
  store i32 56, i32* %t27, align 4
  store i32 4, i32* %t28, align 4
  %t5 = load i32, i32* %t27, align 4
  %t6 = sub i32 0, 4
  %t7 = sub i32 %t5, %t6
  %t8 = load i32, i32* %t28, align 4
  %t9 = add i32 0, %t8
  %t10 = add i32 %t7, %t9
  store i32 %t10, i32* %t27, align 4
  %t11 = load i32, i32* %t27, align 4
  %t32 = icmp ne i32 %t11, 0
  %t12 = xor i1 %t32, true
  %t33 = icmp ne i1 %t12, 0
  %t13 = xor i1 %t33, true
  %t34 = icmp ne i1 %t13, 0
  %t14 = xor i1 %t34, true
  %t35 = zext i1 %t14 to i32
  %t15 = sub i32 0, %t35
  %t16 = add i32 0, %t15
  %t36 = icmp ne i32 %t16, 0
  br i1 %t36, label %B29, label %B30
B29:                               	; preds = %B26
  %t18 = sub i32 0, 1
  %t19 = sub i32 0, %t18
  %t20 = sub i32 0, %t19
  store i32 %t20, i32* %t27, align 4
  br label %B31
B30:                               	; preds = %B26
  %t22 = load i32, i32* %t28, align 4
  %t23 = add i32 0, %t22
  %t24 = add i32 0, %t23
  store i32 %t24, i32* %t27, align 4
  br label %B31
B31:                               	; preds = %B29, %B30
  %t25 = load i32, i32* %t27, align 4
  call void @putint(i32 %t25)
  ret i32 0
}
