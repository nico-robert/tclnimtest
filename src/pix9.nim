# Copyright (c) 2024 Nicolas ROBERT.
# Distributed under MIT license. Please see LICENSE for details.

from tcl9pix as Tcl import nil


proc Pix_Init(interp: Tcl.PInterp): cint {.exportc, dynlib.} =

  # echo interp.repr

  if Tcl.InitStubs(interp, "9.0", 0) == nil:
    return Tcl.ERROR

  return Tcl.OK