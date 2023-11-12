package Data::Coordinate;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_number check_required);

our $VERSION = 0.01;

has latitude => (
	is => 'ro',
);

has longitude => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check latitude.
	check_required($self, 'latitude');
	check_number($self, 'latitude');

	# Check longitude.
	check_required($self, 'longitude');
	check_number($self, 'longitude');

	return;
}

1;

__END__
