#!/usr/bin/perl
use strict;
use warnings;
use autodie;

#first we'll create some variables from user input:
print "Welcome to my APR calculator!\n";
print "It will require some input from you.\n";
print "Let's get started!\n";
print "\nPlease enter the principal amount: \n";
my $principal = <STDIN>;
print "\nThank you! Now, please enter your APR: \n";
my $apr = <STDIN>;
print "\nExcellent! Now enter how many paymentsn you expect to make in a year.\n";
print "for most people this is 12: \n";
my $divisor = <STDIN>;
print "\n\nThank You!\n\n";
#here begin math operations to perform the formula apr/number of yearly payments * principal.
my $formattedapr = $apr/100;
my $interest = ($formattedapr/$divisor)*$principal;
my $roundinterest = sprintf("%.2f", $interest);
print "The amount of interest for the next payment is ", '$', $roundinterest, "\n";
#here calculate the daily interest.
my $dailyinterest = ($formattedapr*$principal)/365;
my $printfdaily = sprintf("%.2f", $dailyinterest);
print "Daily interest ammounts to ", '$', $printfdaily, "\n";
exit;