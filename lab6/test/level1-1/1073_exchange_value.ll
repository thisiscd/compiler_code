declare i32 @getint()
declare i32 @getch()
declare void @putint(i32)
declare void @putch(i32)
@n = global i32 0, align 4
define i32 @main(){
B18:
  %t23 = alloca i32, align 4
  %t20 = alloca i32, align 4
  %t19 = alloca i32, align 4
  %t21 = call i32 @getint()
  store i32 %t21, i32* %t19, align 4
  %t22 = call i32 @getint()
  store i32 %t22, i32* %t20, align 4
  %t7 = load i32, i32* %t19, align 4
  store i32 %t7, i32* %t23, align 4
  %t9 = load i32, i32* %t20, align 4
  store i32 %t9, i32* %t19, align 4
  %t11 = load i32, i32* %t23, align 4
  store i32 %t11, i32* %t20, align 4
  %t12 = load i32, i32* %t19, align 4
  call void @putint(i32 %t12)
  store i32 10, i32* %t23, align 4
  %t14 = load i32, i32* %t23, align 4
  call void @putch(i32 %t14)
  %t15 = load i32, i32* %t20, align 4
  call void @putint(i32 %t15)
  store i32 10, i32* %t23, align 4
  %t17 = load i32, i32* %t23, align 4
  call void @putch(i32 %t17)
  ret i32 0
}
