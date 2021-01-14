string(REGEX REPLACE " [^ ]*valhalla[^ ]+" "" deplibs "${deplibs}")
string(REGEX REPLACE " [^ ]*lib([^/ ]+).so.[a-zA-Z0-9_.-]*" " -l\\1 " deplibs "${deplibs}")
string(REGEX REPLACE " [^ ]*lib([^/ ]+).so" " -l\\1 " deplibs "${deplibs}")
configure_file(${INPUT} ${OUTPUT} @ONLY)
