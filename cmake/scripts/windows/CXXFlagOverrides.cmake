if(MSVC)
  if(DEFINED ENV{MAXTHREADS})
    set(MP_FLAG "/MP$ENV{MAXTHREADS}")
  else()
    set(MP_FLAG "/MP")
  endif()
  set(CMAKE_CXX_FLAGS "/D_UNICODE /DUNICODE /DRPC_USE_NATIVE_WCHAR ${MP_FLAG} /DWIN32 /D_WINDOWS /W3 /GR /Zi /EHsc")
  set(CMAKE_CXX_FLAGS_DEBUG "/D_DEBUG /MDd /Ob0 /Od /RTC1 /D_ITERATOR_DEBUG_LEVEL=0")
  set(CMAKE_CXX_FLAGS_RELEASE "/MD /Ox /Ob2 /Oi /Ot /Oy /GL /DNDEBUG")
endif()

if(NOT "$ENV{Platform}" STREQUAL "x64")
  string(JOIN " " CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}" "/arch:SSE2")
endif()
