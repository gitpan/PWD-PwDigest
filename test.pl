# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'
sleep 1;

BEGIN { $^W = 1; $test = 1; $| = 1; print "1..3\n"; }
END {print "There are $err_pw errors from the $test tests\n" unless $loaded;}

eval {print "Loading PWD::PwDigest\n";require PWD::PwDigest;};
sleep 1;
if ($@) {print "Can not load PWD::PwDigest.\n";$err_pw++;$test++;}
else {&print_ok;}
sleep 1;

eval {print "require Digest::MD5\n";require Digest::MD5;};
sleep 1;
if ($@) {print "Can not find Digest::MD5. You can not use AuthType Digest.\n";$err_pw++;$test++;}
else {&print_ok;}
sleep 1;

if (!$err_pw) {$loaded = 1;print "All Looks OK ",$test++,"\n";}
else {$loaded = 0;}

sub print_ok {print "looks ok ", $test++, "\n";}

