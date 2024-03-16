use strict;
use warnings;

use Data::Geo::Coordinate;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 6;
use Test::NoWarnings;

# Test.
my $obj = Data::Geo::Coordinate->new(
	'latitude' => 49.8304878,
	'latitude_pos' => 'north',
	'longitude' => 14.5929047,
	'longitude_pos' => 'east',
);
isa_ok($obj, 'Data::Geo::Coordinate');

# Test.
eval {
	Data::Geo::Coordinate->new(
		'latitude_pos' => 'north',
		'longitude' => 14.5929047,
		'longitude_pos' => 'east',
	);
};
is($EVAL_ERROR, "Parameter 'latitude' is required.\n",
	"Parameter 'latitude' is required.");
clean();

# Test.
eval {
	Data::Geo::Coordinate->new(
		'latitude' => 49.8304878,
		'latitude_pos' => 'bad',
		'longitude' => 14.5929047,
		'longitude_pos' => 'east',
	);
};
is($EVAL_ERROR, "Parameter 'latitude_pos' must be one of defined strings.\n",
	"Parameter 'latitude_pos' must be one of defined strings.");
clean();

# Test.
eval {
	Data::Geo::Coordinate->new(
		'latitude' => 49.8304878,
		'latitude_pos' => 'north',
		'longitude_pos' => 'east',
	);
};
is($EVAL_ERROR, "Parameter 'longitude' is required.\n",
	"Parameter 'longitude' is required.");
clean();

# Test.
eval {
	Data::Geo::Coordinate->new(
		'latitude' => 49.8304878,
		'latitude_pos' => 'north',
		'longitude' => 14.5929047,
		'longitude_pos' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'longitude_pos' must be one of defined strings.\n",
	"Parameter 'longitude_pos' must be one of defined strings.");
clean();
