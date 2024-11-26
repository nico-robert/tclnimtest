const 
  OK* = 0
  ERROR* = 1
  RETURN* = 2
  BREAK* = 3
  CONTINUE* = 4

type
  TInterp*{.final.} = object
  PInterp*{.final.} = ptr TInterp

proc tclInitStubs(interp: PInterp, version: cstring, exact: cint): cstring {.cdecl, importc: "Tcl_InitStubs".}

proc InitStubs*(interp: PInterp, version: cstring, exact: cint): cstring {.cdecl.} =
  result = tclInitStubs(interp, version, exact)
  return result 
