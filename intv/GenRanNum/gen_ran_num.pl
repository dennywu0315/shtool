#!/usr/bin/perl

$| =1;

my @random ;

while ($#random < 9999){
    my $num = int(rand(30000));
    unless (grep {/^"$num"$/} @random){
        push @random, $num;
        print $num."\n";
    }
}

