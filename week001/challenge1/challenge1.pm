#!/usr/local/bin/perl

use strict;
use warnings;

main() if not caller();

sub main {
    my $pwc_string      = 'Perl Weekly Challenge';
    my $pwc_modified    = _update_first_occurrences($pwc_string);
    my $pwc_occurrences = _get_total_occurrences($pwc_modified);

    print "There are '$pwc_occurrences' occurrences of the letter 'e' in '$pwc_modified'\n";
}

sub _update_first_occurrences {
    my $string = shift;

    $string =~ s/e/E/;

    return $string;
}

sub _get_total_occurrences {
    my $string = shift;
    my @e_array = ();

    for my $char (split('', $string)){
        push(@e_array, $char) if $char eq 'e';
    }

    return scalar(@e_array);
}

1;
