use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile(
    'NAME'         => 'PWD::PwDigest',
    'AUTHOR'       => 'Henk Boonstra <root@widexl.com>',
    'VERSION_FROM' => 'PwDigest.pm',
    'PREREQ_PM'    => 'Digest::MD5',
);
