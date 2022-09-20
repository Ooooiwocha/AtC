package main;
import "fmt"
func main(){
  a, s:= 0, "";
  fmt.Scan(&a, &s);
  fmt.Printf(s[a-1:a]);
}
