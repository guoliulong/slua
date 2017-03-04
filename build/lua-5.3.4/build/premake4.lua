solution "lua5.3.4"
   configurations { "Debug", "Release" } 
 
   project "lua5.3.4"
     kind "SharedLib"
     language "C"
		files { "./../src/**.h", "./../src/**.c" }
		excludes { "./../src/lua.c","./../src/luac.c" }
      configuration "Debug"
         defines { "DEBUG","LUA_BUILD_AS_DLL" }
         flags { "Symbols" }
 
      configuration "Release"
         defines { "NDEBUG","LUA_BUILD_AS_DLL" }
         flags { "Optimize" }