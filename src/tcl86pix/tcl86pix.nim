const 
  OK* = 0
  ERROR* = 1
  RETURN* = 2
  BREAK* = 3
  CONTINUE* = 4

type
  TFreeProc* = proc (theBlock: pointer){.cdecl.}
  TInterp*{.final.} = object  #  Event Definitions
    result*: cstring # Do not access this directly. Use
                     # Tcl_GetStringResult since result
                     # may be pointing to an object
    freeProc*: TFreeProc
    errorLine*: int
  PInterp* = ptr TInterp

proc tclInitStubs(interp: PInterp, version: cstring, exact: cint): cstring {.cdecl, importc: "Tcl_InitStubs".}

proc InitStubs*(interp: PInterp, version: cstring, exact: cint): cstring {.cdecl.} =
  result = tclInitStubs(interp, version, exact)
  return result 
