<?php
  $n = (int) trim(fgets(STDIN));
  $a = explode(" ", trim(fgets(STDIN)));
  $b = explode(" ", trim(fgets(STDIN)));
  $c = [0];
  $d = [0];
  $mp1 = [];
  $mp2 = [];
  for($i=0; $i<$n; $i++){
    if(!isset($mp1[$a[$i]])){
      $temp = (int)floor(hexdec(substr(md5($a[$i]), 0, 12)))>>8;
      $mp1[$a[$i]] = true;
      array_push($c, $c[array_key_last($c)] + $temp);
    }else{
      array_push($c, $c[array_key_last($c)]);
    }
    if(!isset($mp2[$b[$i]])){
      $temp = (int)floor(hexdec(substr(md5($b[$i]), 0, 12)))>>8;
      $mp2[$b[$i]] = true;
      array_push($d, $d[array_key_last($d)] + $temp);
    }else{
      array_push($d, $d[array_key_last($d)]);
    }
  }
  $q = (int) trim(fgets(STDIN));
  while($q){
    fscanf(STDIN, "%d %d\n", $x, $y);
    echo $c[$x] == $d[$y]? "Yes\n": "No\n";
    $q-= 1;
  }
?>
