#!/usr/bin/perl
$username = "prefalo";

$filename = "/users/".$username."/perl1/apples.pl";
$newfilename = "/users/".$username."/perl1/zebras.pl";
system("cp $filename $newfilename");

if(-e $newfilename){
  open(FILE,"$newfilename");
  while(<FILE>){ print };
  close(FILE);
}else{
  print "Error:  $newfilename doesn't exist\n";
}