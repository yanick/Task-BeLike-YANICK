
use strict;
use warnings;

use Module::Build 0.3601;
use lib 'inc'; use MyBuild;

my %module_build_args = (
  'build_requires' => {
    'Module::Build' => '0.3601'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'like Yanick? Be like Yanick!',
  'dist_author' => [
    'Yanick Champoux <yanick@cpan.org>'
  ],
  'dist_name' => 'Task-BeLike-YANICK',
  'dist_version' => '0.4.0',
  'license' => 'perl',
  'module_name' => 'Task::BeLike::YANICK',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {},
  'script_files' => []
);


my $build = MyBuild->new(%module_build_args);

$build->create_build_script;
