use strict;
use warnings;

use Data::Geo::Coordinate;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::Geo::Coordinate::VERSION, 0.01, 'Version.');
