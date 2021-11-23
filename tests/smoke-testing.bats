#!/usr/bin/env bats

fixtures=tests/fixtures

@test "should succ with php" {
  run ./quick_start.sh

  [ "$status" -eq 0 ]
  [[ $output =~ "SMOKE TESTING PASSED" ]]
}