# Package

version       = "0.1.1"
author        = "Thiago Ferreira"
description   = "Easily use Animate.css classes"
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim >= 1.0.0"

task gen_docs, "Generates the documentation":
  exec "nim doc --project --out:docs src/animatecss.nim"
