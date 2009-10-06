use 5.10.0;

use strict;
use warnings;

use Getopt::Long;
use Module::Build;

GetOptions( 
    upgrade => \my $opt_upgrade,
);

$opt_upgrade ||= $ENV{TASK_UPGRADE};

my $builder = Module::Build->new(
    module_name       => 'Task::BeLike::YANICK',
    license           => 'perl',
    dist_author       => 'Yanick Champoux <yanick@cpan.org>',
    dist_version_from => 'lib/Task/BeLike/YANICK.pm',
    requires          => {
        get_requirements( 'lib/Task/BeLike/YANICK.pm' )
    },
    build_requires => {
        'Module::Build'       => 0,
    },
    create_makefile_pl => 'passthrough',
);

$builder->create_build_script();

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

sub get_requirements {
    my $file = shift;

    open my $pod_fh, '<', $file or die;

    my %requirements;

    while ( <$pod_fh> ) {
        chomp;

        next unless /^=for install/../^=for end_install/;

        next unless /^=item \s+/x;

        my ( $module, $version ) = split ' ' => $';
        $module =~ s/^ L< (.*?) > $/$1/x;

        if ( $opt_upgrade and not $version ) {
            require CPANPLUS::Backend;
            state $cb = CPANPLUS::Backend->new;

            $version = $cb->module_tree( $module )->package_version;
        }

        $requirements{$module} = $version || 0;
    }

    return %requirements;
}
