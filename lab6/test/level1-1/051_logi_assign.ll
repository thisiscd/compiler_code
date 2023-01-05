declare i32 @getint()
declare i32 @getch()
declare void @putint(i32)
declare void @putch(i32)
@a = global i32 0, align 4
@b = global i32 0, align 4
define i32 @main(){
B14:
  %t17 = alloca i32, align 4
  %t15 = call i32 @getint()
  store i32 %t15, i32* @a, align 4
  %t16 = call i32 @getint()
  store i32 %t16, i32* @b, align 4
  %t5 = load i32, i32* @a, align 4
  %t6 = load i32, i32* @b, align 4
  %t22 = icmp eq i32 %t5, %t6
  br i1 %t22, label %B21, label %B19
B18:                               	; preds = %B14
  store i32 1, i32* %t17, align 4
  br label %B20
B19:                               	; preds = %B14
  store i32 0, i32* %t17, align 4
  br label %B20
B21:                               	; preds = %B14
  %t8 = load i32, i32* @a, align 4
  %t23 = icmp ne i32 %t8, 3
  br i1 %t23, label %B18, label %B19
B20:                               	; preds = %B18, %B19
  %t13 = load i32, i32* %t17, align 4
  ret i32 %t13
}
