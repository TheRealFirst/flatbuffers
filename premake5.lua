project "flatbuffers"
   kind "StaticLib"
   language "C++"
   cppdialect "C++17"
   staticruntime "on"

   targetdir ("bin/" .. outputdir .. "/%{prj.name}")
   objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

   includedirs {
      "include",
      "src",
      "",
      "grpc"
   }

   files {
      -- "src/idl_gen_lua.cpp",
        -- "src/idl_gen_nim.cpp",
        "src/idl_gen_kotlin_kmp.cpp",
        "src/idl_gen_kotlin.cpp",
        "src/idl_gen_csharp.cpp",
        "src/idl_gen_lobster.cpp",
        "src/idl_gen_php.cpp",
        "src/idl_gen_python.cpp",
        "src/idl_gen_rust.cpp",
        "src/idl_gen_swift.cpp",
        "src/idl_gen_ts.cpp",
        "src/idl_gen_go.cpp",
        "src/idl_gen_java.cpp",
        "src/idl_gen_json_schema.cpp",
        "src/idl_gen_dart.cpp",
        "src/idl_gen_grpc.cpp",  -- For grpc generation support

        "src/bfbs_gen_lua.cpp",
        "src/bfbs_gen_nim.cpp",


        -- Existing files...
        "src/idl_parser.cpp",
        "src/idl_gen_text.cpp",
        "src/idl_gen_cpp.cpp",
        "src/idl_gen_binary.cpp",
        "src/idl_gen_fbs.cpp",
        "src/code_generators.cpp",
        "src/util.cpp",
        "src/annotated_binary_text_gen.cpp",
        "src/binary_annotator.cpp",
        "src/reflection.cpp",
        "src/compiler/*.cc",
        "src/idl_gen_*.cc",
        "src/grpc_*.cc",
        "src/python/*.cc",
        "src/*.cc",
         "grpc/src/compiler/cpp_generator.cc",
         "grpc/src/compiler/cpp_generator.h",
         "grpc/src/compiler/go_generator.cc",
         "grpc/src/compiler/go_generator.h",
         "grpc/src/compiler/java_generator.cc",
         "grpc/src/compiler/java_generator.h",
         "grpc/src/compiler/swift_generator.cc",
         "grpc/src/compiler/swift_generator.h",
         "grpc/src/compiler/ts_generator.cc",
         "grpc/src/compiler/ts_generator.h",
         "grpc/src/compiler/python_generator.cc",
         "grpc/src/compiler/python_generator.h",
         "include/codegen/python.cc"
   }

   removefiles {
      "src/flatc.cpp",
   }

project "flatc"
  kind "ConsoleApp"
     language "C++"
     cppdialect "C++17"
     staticruntime "on"

  targetdir ("bin/" .. outputdir .. "/%{prj.name}")
  objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

 includedirs {
      "include",
      "",
      "src",
      "grpc"
   }

 files {
    "src/flatc.cpp",
    "src/flatc_main.cpp",
 }

 removefiles {
 }

 links { "flatbuffers" }
