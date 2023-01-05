declare i32 @getint()
declare i32 @getch()
declare void @putint(i32)
declare void @putch(i32)
@k = global i32 0, align 4
@n = global i32 10, align 4
define i32 @main(){
B21:
  %t22 = alloca i32, align 4
  store i32 0, i32* %t22, align 4
  store i32 1, i32* @k, align 4
  br label %B25
B25:                               	; preds = %B21
  %t6 = load i32, i32* %t22, align 4
  %t7 = load i32, i32* @n, align 4
  %t8 = sub i32 %t7, 1
  %t9 = icmp sle i32 %t6, %t8
  br i1 %t9, label %B23, label %B24
B23:                               	; preds = %B25
  %t11 = load i32, i32* %t22, align 4
  %t12 = add i32 %t11, 1
  store i32 %t12, i32* %t22, align 4
  %t13 = load i32, i32* @k, align 4
  %t14 = add i32 %t13, 1
  %t16 = load i32, i32* @k, align 4
  %t17 = load i32, i32* @k, align 4
  %t18 = add i32 %t16, %t17
  store i32 %t18, i32* @k, align 4
  br i1 %t9, label %B25, label %B24
B24:                               	; preds = %B23, %B25
  %t19 = load i32, i32* @k, align 4
  call void @putint(i32 %t19)
  %t20 = load i32, i32* @k, align 4
  ret i32 %t20
}
