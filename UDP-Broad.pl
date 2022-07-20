#!/usr/bin/env perl

use strict;
use warnings;
use IO::Socket;

my $sock = IO::Socket::INET->new(
	Proto => 'udp',
	PeerPort => '5555',
	PeerAddr => '255.255.255.255',
	LocalAddr => '192.168.1.110',
	Broadcast => 1,
	autoflush => 1,
) or die "Error opening socket: $!\n";

my $data = "Sending a UDP Broadcast in Perl!";

$sock->send($data);
