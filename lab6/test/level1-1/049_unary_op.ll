declare i32 @getint()
declare i32 @getch()
declare void @putint(i32)
declare void @putch(i32)
define i32 @main(){
B14:
  %t15 = alloca i32, align 4
  store i32 10, i32* %t15, align 4
  %t2 = load i32, i32* %t15, align 4
  %t19 = icmp ne i32 %t2, 0
  %t3 = xor i1 %t19, true
  %t20 = icmp ne i1 %t3, 0
  %t4 = xor i1 %t20, true
  %t21 = icmp ne i1 %t4, 0
  %t5 = xor i1 %t21, true
  %t22 = zext i1 %t5 to i32
  %t6 = sub i32 0, %t22
  %t7 = add i32 0, %t6
  %t23 = icmp ne i32 %t7, 0
  br i1 %t23, label %B16, label %B17
B16:                               	; preds = %B14
  %t9 = sub i32 0, 1
  %t10 = sub i32 0, %t9
  %t11 = sub i32 0, %t10
  store i32 %t11, i32* %t15, align 4
  br label %B18
B17:                               	; preds = %B14
  store i32 0, i32* %t15, align 4
  br label %B18
B18:                               	; preds = %B16, %B17
  %t13 = load i32, i32* %t15, align 4
  ret i32 %t13
}
