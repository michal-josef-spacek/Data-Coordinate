use strict;
use warnings;

use Data::Coordinate;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::Coordinate::VERSION, 0.01, 'Version.');
