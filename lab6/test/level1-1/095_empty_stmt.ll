declare i32 @getint()
declare i32 @getch()
declare void @putint(i32)
declare void @putch(i32)
define i32 @main(){
B5:
  %t6 = alloca i32, align 4
  store i32 10, i32* %t6, align 4
  %t2 = load i32, i32* %t6, align 4
  %t3 = mul i32 %t2, 2
  %t4 = add i32 %t3, 1
  ret i32 %t4
}
