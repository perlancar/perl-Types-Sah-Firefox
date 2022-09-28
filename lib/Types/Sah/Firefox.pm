package Types::Sah::Firefox;

use strict;
use warnings;
use Type::Library -base;

use Data::Sah;
use Sah::Schema::firefox::profile_name;
use Sah::Schema::firefox::local_profile_name;

# AUTHORITY
# DATE
# DIST
# VERSION

my $sah = Data::Sah->new;

__PACKAGE__->add_type(
    name => 'FirefoxProfileName',
    constraint => $sah->gen_validator("firefox::profile_name*"),
);
__PACKAGE__->add_type(
    name => 'FirefoxLocalProfileName',
    constraint => $sah->gen_validator("firefox::local_profile_name*"),
);

1;
# ABSTRACT: Type constraints related to Firefox

=head1 SYNOPSIS

 package MyApp;
 use Moose;
 use Types::Sah::Firefox -all;

 has firefox_profile_name => (
     is => 'rw',
     isa => FirefoxProfileName,
 );


=head1 DESCRIPTION

This module provides type constraints from L<Sah::Schemas::Firefox>:

=over

=item * FirefoxProfileName

From L<Sah::Schema::firefox::profile_name>. Firefox profile name.

=item * FirefoxLocalProfileName

From L<Sah::Schema::firefox::profile_name>. Firefox profile name, must exist in
local Firefox installation.

=back


=head1 SEE ALSO

L<Type::Tiny>, L<Sah>
