declare i32 @getint()
declare i32 @getch()
declare void @putint(i32)
declare void @putch(i32)
@a = global i32 3, align 4
@b = global i32 5, align 4
define i32 @main(){
B7:
  %t4 = load i32, i32* @a, align 4
  %t5 = load i32, i32* @b, align 4
  %t6 = add i32 %t4, %t5
  ret i32 %t6
}
