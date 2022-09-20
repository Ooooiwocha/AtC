my ($n, $dx, @a) = lines();
my ($d, $x) = split(" ", $dx);
my $ans = $x.Int;
for @a {
  $ans+= ($d.Int div $_.Int) + ($d.Int%%$_.Int?? 0!!1);
}
$ans.say;
