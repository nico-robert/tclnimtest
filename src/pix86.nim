from tcl86pix as Tcl import nil

proc Pix_Init(interp: Tcl.PInterp): cint {.exportc, dynlib.} =

  if interp == nil:
    return Tcl.ERROR

  if Tcl.InitStubs(interp, "8.6", 0) == nil:
    return Tcl.ERROR

  return Tcl.OK