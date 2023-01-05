declare i32 @getint()
declare i32 @getch()
declare void @putint(i32)
declare void @putch(i32)
@a = global i32 5, align 4
define i32 @main(){
B4:
  %t2 = load i32, i32* @a, align 4
  %t3 = mul i32 %t2, 5
  ret i32 %t3
}
