#!/usr/bin/env bats

fixtures=tests/fixtures

@test "should succ with php" {
  run ./quick_start.sh

  [[ $output =~ "SMOKE TESTING PASSED" ]]
}