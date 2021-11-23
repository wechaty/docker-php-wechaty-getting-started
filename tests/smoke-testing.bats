#!/usr/bin/env bats

fixtures=tests/fixtures

@test "should succ with php" {
  run ./bin/docker-run.sh "$fixtures/test.php"

  [ "$status" -eq 0 ]
  [[ $output =~ "SMOKE TESTING PASSED" ]]
}