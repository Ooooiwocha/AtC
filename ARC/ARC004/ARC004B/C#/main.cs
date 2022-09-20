class Program{
  public static void Main(string[] args){
    int[] Arr = new int[System.Int32.Parse(System.Console.ReadLine())];
    for(int i=0; i<Arr.Length; i++){
      Arr[i] = int.Parse(System.Console.ReadLine());
    }
    System.Array.Sort(Arr);
    System.Array.Reverse(Arr);
    long ans0 = 0;
    long ans1 = 0;
    for(int i=0; i<Arr.Length; i++){
      ans0+= Arr[i];
      ans1+= i==0? +Arr[i]: -Arr[i];
    }
    System.Console.WriteLine(ans0 + "\n" + System.Math.Max(0, ans1));
  }
}
