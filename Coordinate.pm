package Data::Geo::Coordinate;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_number check_required check_strings);
use Readonly;

Readonly::Array our @LATITUDE_POSITIONS => qw(north south);
Readonly::Array our @LONGITUDE_POSITIONS => qw(east west);

our $VERSION = 0.01;

has latitude => (
	is => 'ro',
);

has latitude_pos => (
	is => 'ro',
);

has longitude => (
	is => 'ro',
);

has longitude_pos => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check latitude.
	check_required($self, 'latitude');
	check_number($self, 'latitude');

	# Check latitude_pos.
	if (! defined $self->{'latitude_pos'}) {
		$self->{'latitude_pos'} = 'north';
	}
	check_strings($self, 'latitude_pos', \@LATITUDE_POSITIONS);

	# Check longitude.
	check_required($self, 'longitude');
	check_number($self, 'longitude');

	# Check longitude_pos.
	if (! defined $self->{'longitude_pos'}) {
		$self->{'longitude_pos'} = 'east';
	}
	check_strings($self, 'longitude_pos', \@LONGITUDE_POSITIONS);

	return;
}

1;

__END__
