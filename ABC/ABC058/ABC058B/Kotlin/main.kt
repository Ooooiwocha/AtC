import java.util.Scanner;
//val stdin = Scanner(System.`in`);
fun main(){
  val str = readLine()!!;
  for(c in str){
    print(c.toString() + System.`in`.read().toChar());
  }
}
