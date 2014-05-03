# NAME

Dist::Zilla::PluginBundle::Author::YAKEX - Dist::Zilla configuration the way YAKEX does it

# VERSION

version v0.1.5

# SYNOPSIS

    # in dist.ini
    [@Author::YAKEX]

# DESCRIPTION

This is a [Dist::Zilla](https://metacpan.org/pod/Dist::Zilla) PluginBundle used by YAKEX's distribution. It is equivalent to the following dist.ini

    [@Basic]
    
    [NextRelease]
    filename = Changes
    
    [@Git]
    commit_msg = Released as %v%n%n%c
    tag_format = %v
    tag_message = Released as %v
    allow_dirty = Changes
    allow_dirty = README.md
    allow_dirty = dist.ini
    
    [ReadmeAnyFromPod]
    type = markdown
    filename = README.md
    location = root
    
    [GithubMeta]
    [MetaJSON]
    [PodWeaver]
    [OurPkgVersion]
    [CheckVersionIncrement]
    [PodSyntaxTests]
    [PodCoverageTests]
    [Test::Perl::Critic]
    [Test::Compile]
    [Test::Kwalitee::Extra]
    arg = !has_example
    arg = !build_prereq_matches_use
    
    [Twitter]
    url_shortener = none
    hash_tags = #perl
    
    [MinimumPerl]

This PluginBundle also supports PluginRemover, so dropping a plugin is as easy as this:

    [@YAKEX]
    -remove = PluginDontUse

# METHODS

## `configure`

See [Dist::Zilla::Role::PluginBundle::Easy](https://metacpan.org/pod/Dist::Zilla::Role::PluginBundle::Easy)

# AUTHOR

Yasutaka ATARASHI <yakex@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Yasutaka ATARASHI.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
