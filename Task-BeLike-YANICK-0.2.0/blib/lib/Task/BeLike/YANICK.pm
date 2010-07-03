package Task::BeLike::YANICK;

use warnings;
use strict;

=head1 NAME

Task::BeLike::YANICK - like Yanick? Be like Yanick!

=head1 SYNOPSIS

    $ cpan Task::BeLike::YANICK

=head1 DESCRIPTION

This L<Task> module installs the modules that I use on
a regular basis.

=head1 MODULES INSTALLED BY THIS TASK

=head2 Object-Oriented Frameworks

=for install

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

=back

=head2 Development

=over

=item L<autodie>

Because my minions should know that their missions should
always either end in success, or death...

Part of the core as of 5.10.1.

=item L<Perl::Tidy>

Because tidy code is so easier to read.

=item L<Perl::Critic>


=back

=for end_install

=head1 VERSION

Version 0.2.0

=cut

our $VERSION = '0.2.0';

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

=cut

1; # End of Task::BeLike::YANICK