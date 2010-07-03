package MyBuild;

use 5.10.0;

use strict;
use warnings;

use Getopt::Long;

use base qw/ Module::Build /;

# no need to waste testers' time
say "automated testing detected, aborting build" and exit 0 
    if $ENV{AUTOMATED_TESTING};


GetOptions( 
    upgrade => \my $opt_upgrade,
);

$opt_upgrade ||= $ENV{TASK_UPGRADE};

sub new {
    my ( $self, %args ) = @_;

    my %extra = get_requirements( 'lib/Task/BeLike/YANICK.pm' );

    $args{requires}{$_} = $extra{$_} for keys %extra;

    return $self->SUPER::new( %args );
}


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

1;
