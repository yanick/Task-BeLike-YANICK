package Task::BeLike::YANICK;
BEGIN {
  $Task::BeLike::YANICK::AUTHORITY = 'cpan:yanick';
}
BEGIN {
  $Task::BeLike::YANICK::VERSION = '0.6.0';
}
# ABSTRACT: like Yanick? Be like Yanick!

use warnings;
use strict;



1; # End of Task::BeLike::YANICK

__END__
=pod

=head1 NAME

Task::BeLike::YANICK - like Yanick? Be like Yanick!

=head1 VERSION

version 0.6.0

=head1 SYNOPSIS

    $ cpan Task::BeLike::YANICK

=head1 DESCRIPTION

This L<Task> module installs the modules that I use on
a regular basis.

Wait, there is more! 
It can also B<update> the modules that I use on a regular basis! 
To do that, do

    TASK_UPGRADE=1 cpan -f Task::BeLike::YANICK

=head1 MODULES INSTALLED BY THIS TASK

=head2 General

=over

=item L<Task::Kensho>

Might not use'em all, but I want them all near me, just in case.

=back

=head2 Object-Oriented Frameworks

=over

=item L<Moose>

=item L<MooseX::Declare>

=back

=head2 XML Processing

=over

=item L<XML::LibXML>

=item L<XML::Writer>

Because writing XML should be left to
professionals.

=item L<XML::Simple>

Useful for quick'n'dirty XML creation or slurping.

=item L<XML::XPathScript>

Can't leave out my baby, now, can I?

=back

=head2 Applications

=over

=item L<App::Ack>

C<grep> is nice, but C<ack> is just nicer.

=item L<App::HTTPThis>

Want to share a directory over http?

    $ cd /path/to/dir/we/wanna/share
    $ http_this

=item L<Module::Info>

Want to know where the module is?

    module_info Task::BeLike::YANICK

=back

=head2 Web Development

=over

=item L<Catalyst::Runtime>

=item L<HTML::Mason>

My templating system of choice.

=item L<Template>

I prefer L<HTML::Mason>, but C<TT> is used in an awful lot 
of applications.

=item L<WWW::Mechanize>

A must for testing and small web hacks.  Plus, this module name always 
reminds me of I<Battletech>.

=back

=head2 Version Control Systems

=over

=item L<Git::CPAN::Patch>

Effortlessly import CPAN distros in a Git repository.

=back

=head2 Testing

=over

=item L<Test::Class>

Add some class to your testing.

=item L<Test::Perl::Critic>

=item L<Test::Perl::Critic::Progressive>

Raise the bar, millimeter by millimeter.

=back

=head2 Development

=over

=item L<Carp::Always>

"You're going to tell me what you know. EVERYTHING you know..."

=item L<autodie>

Because my minions should know that their missions should
always either end in success, or death...

Part of the core as of 5.10.1.

=item L<Const::Fast>

First, there was L<constant>, then L<Readonly>, and now L<Const::Fast>.

=item L<Perl::Tidy>

Because tidy code is so easier to read.

=item L<Perl::Critic>

=item L<Module::Which>

Which version of I<Foo::Bar> am I running, and in which lib directory
is it hidding?

=item L<Pod::POM::Web>

Because search.cpan.org doesn't deserved to be poked every
five minutes.

=back

=head2 CPAN

=over

=item L<App::cpanminus>

Slam, bang, thank you CPAN.

=item L<CPAN::SQLite>

CPAN asks for it, so there it is.

=item L<App::cpanoutdated>

    cpan-outdated | cpanm

=back

=head2 Dist::Zilla

=over

=item L<Dist::Zilla>

Rooooar!

=item L<Dist::Zilla::PluginBundle::YANICK>

One bundle to configure'em all...

=item L<Dist::Zilla::Plugin::Git>

Git-related Dist::Zilla actions.

=item L<Dist::Zilla::Plugin::GithubMeta>

Github actions.

=back

=head1 AUTHOR

Yanick Champoux, C<< <yanick at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to
C<bug-task-belike-yanick at rt.cpan.org>, or through the web
interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Task-BeLike-YANICK>.
I will be notified, and then you'll automatically be notified of
progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Task::BeLike::YANICK

You can also look for information at:

=over 4

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Task-BeLike-YANICK>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Task-BeLike-YANICK>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Task-BeLike-YANICK>

=item * Search CPAN

L<http://search.cpan.org/dist/Task-BeLike-YANICK>

=back

=head1 ACKNOWLEDGEMENTS

=head1 COPYRIGHT & LICENSE

Copyright 2009 Yanick Champoux, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=head1 AUTHOR

Yanick Champoux <yanick@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Yanick Champoux.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

