import java.util.*;
class Main{
  public static void main(String[] args){
    Scanner sc = new Scanner(System.in);
    int n = sc.nextInt();
    ArrayList<Long> a = new ArrayList<Long>();
    while(sc.hasNext()){
      long i = sc.nextInt();
      int bin = ~Arrays.binarySearch(a.toArray(), i);
      if(bin == a.size()){
        a.add(i);
      }else{
        a.set(bin, Math.min(a.get(bin), i));
      }
    }
    int ans = n - a.size();
    System.out.println(ans);
  }
}
