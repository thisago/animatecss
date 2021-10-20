import std/unittest
import animatecss

suite "animatecss":
  test "Can say":
    const msg = "Hello from animatecss test"
    check msg == say msg
