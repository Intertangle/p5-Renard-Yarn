#!/usr/bin/env perl

use Test::Most tests => 2;
use Modern::Perl;
use Renard::Yarn::Graphene;

subtest "Size equality operator" => sub {
	my $s = Renard::Yarn::Graphene::Size->new( width => 10, height => 20 );

	is $s, [10, 20];
};

subtest "Size stringify" => sub {
	my $s = Renard::Yarn::Graphene::Size->new( width => 10, height => 20 );

	is "$s", "[w: 10, h: 20]";
};

done_testing;
