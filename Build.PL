use 5.006; #warnings.pm;

use strict;
use warnings;

use Module::Build;

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

        $requirements{$module} = $version || 0;
    }

    return %requirements;
}
