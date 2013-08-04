package Dist::Zilla::MintingProfile::Author::YAKEX;

use strict;
use warnings;

# ABSTRACT: Dist::Zilla minting profile the way YAKEX does it
# VERSION

use Moose;
with 'Dist::Zilla::Role::MintingProfile::ShareDir';

__PACKAGE__->meta->make_immutable;
no Moose;

1;
__END__

=head1 SYNOPSIS

  dzil new -P Author:YAKEX Your::Dist::Name

=head1 DESCRIPTION

This is a L<Dist::Zilla> MintingProfile used by YAKEX's distribution. It setups the following files:

  .gitignore
  Changes
  MANIFEST.SKIP
  dist.ini
  perlcritic.rc
  weaver.ini

in addition to the distribution main module.

=head1 SEE ALSO

=for :list
* L<Dist::Zilla::Role::MintingProfile>
* L<Dist::Zilla::PluginBundle::Author::YAKEX>
