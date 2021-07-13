#!/usr/local/bin/perl

use strict;
use warnings;

use lib './';
use challenge1;

use Test::More tests => 3;

my $pwc_string   = 'Perl Weekly Challenge';
my $pwc_modified = 'PErl Weekly Challenge';

# Positive Tests
is( _update_first_occurrences($pwc_string), 'PErl Weekly Challenge', 'String modified successfully' );
is( _get_total_occurrences($pwc_modified), 4, 'Correct number of letters returned returned');

# Negative Tests
like( _update_first_occurrences('wat'), qr{^Invalid string:}, 'method bails properly when invalid string is present' );
