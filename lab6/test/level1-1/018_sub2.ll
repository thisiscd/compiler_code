declare i32 @getint()
declare i32 @getch()
declare void @putint(i32)
declare void @putch(i32)
@a = global i32 10, align 4
define i32 @main(){
B7:
  %t8 = alloca i32, align 4
  store i32 2, i32* %t8, align 4
  %t4 = load i32, i32* %t8, align 4
  %t5 = load i32, i32* @a, align 4
  %t6 = sub i32 %t4, %t5
  ret i32 %t6
}