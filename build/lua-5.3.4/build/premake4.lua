solution "lua5.3.4"
   configurations { "Release" } 
 
   project "lua5.3.4"
     kind "SharedLib"
     language "C"
		files { "./../src/**.h", "./../src/**.c",
		"./../luasocket.git/src/**.h","./../luasocket.git/src/**.c",
		"./../lua-cjson.git/*.h","./../lua-cjson.git/*.c"}
		excludes { 
			"./../src/lua.c",
			"./../src/luac.c",
			"./../luasocket.git/src/serial.c",
			"./../luasocket.git/src/usocket.c",
			"./../luasocket.git/src/unixstream.c",
			"./../luasocket.git/src/unixdgram.c",
			"./../luasocket.git/src/unix.c",
			"./../lua-cjson.git/g_fmt.c",
			"./../lua-cjson.git/dtoa.c"
			}
		includedirs { "./../src/" }
      configuration "Release"
		 links { "ws2_32" }
         defines { "NDEBUG","LUA_BUILD_AS_DLL" ,"LUA_LIB" }
         flags { "Symbols" }
		 architecture "x86_64"