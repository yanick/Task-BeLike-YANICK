package My::Builder;
use Module::Build;
@ISA = qw(Module::Build);

        sub ACTION_install {
            print "not installing the task itself...\n";
        }
    
1;
