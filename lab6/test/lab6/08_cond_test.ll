declare i32 @getint()
declare i32 @getch()
declare void @putint(i32)
declare void @putch(i32)
define i32 @main(){
B25:
  %t31 = alloca i32, align 4
  %t27 = alloca i32, align 4
  %t26 = alloca i32, align 4
  store i32 0, i32* %t26, align 4
  store i32 0, i32* %t27, align 4
  br label %B30
B30:                               	; preds = %B25
  %t4 = load i32, i32* %t27, align 4
  %t5 = icmp slt i32 %t4, 10
  br i1 %t5, label %B28, label %B29
B28:                               	; preds = %B30
  store i32 10, i32* %t31, align 4
  br label %B34
B29:                               	; preds = %B28, %B30
  ret i32 0
B34:                               	; preds = %B28
  %t8 = load i32, i32* %t31, align 4
  %t35 = icmp ne i32 %t8, 0
  br i1 %t35, label %B32, label %B33
B32:                               	; preds = %B34
  %t9 = load i32, i32* %t27, align 4
B33:                               	; preds = %B32, %B34
  %t22 = load i32, i32* %t27, align 4
  %t23 = load i32, i32* %t27, align 4
  %t24 = add i32 %t22, %t23
  store i32 %t24, i32* %t27, align 4
  br i1 %t5, label %B30, label %B29
B36:                               	; preds = %B32
  %t13 = load i32, i32* %t26, align 4
  %t14 = load i32, i32* %t27, align 4
  %t15 = add i32 %t13, %t14
  %t16 = load i32, i32* %t31, align 4
  %t17 = add i32 %t15, %t16
  store i32 %t17, i32* %t26, align 4
  br label %B37
B39:                               	; preds = %B32
  %t10 = load i32, i32* %t31, align 4
B37:                               	; preds = %B36
  %t19 = load i32, i32* %t31, align 4
  %t20 = sub i32 %t19, 1
  store i32 %t20, i32* %t31, align 4
  br i1 %t35, label %B34, label %B33
}
