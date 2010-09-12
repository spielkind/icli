#!/usr/bin/env perl

use strict;
use warnings;
use Module::Build;

my $build = Module::Build->new(
	build_requires => {
		'Test::More' => 0,
		'Test::Compile' => 0,
		'Test::Pod' => 0,
		'Test::Command' => 0,
	},
	dist_name => 'icli',
	dist_version_from => 'bin/icli',
	license => 'unrestricted',
	requires => {
		'perl' => '5.10.0',
		'Date::Format' => 0,
		'Getopt::Long' => 0,
		'Term::ANSIColor' => 0,
	},
	script_files => 'bin/',
);
$build->create_build_script();