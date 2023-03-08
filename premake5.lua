project "ImGui"
    kind "StaticLib"
    language "C++"
    
    targetdir ("bin/" .. dirname .. "/%{prj.name}")
    objdir ("bin-int/" .. dirname .. "/%{prj.name}")

    includedirs
    {
        "./",
        "../GLFW/include",
        "../Glad/include"
    }

    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp",
        "examples/imgui_impl_glfw.cpp",
        "examples/imgui_impl_glfw.h",
        "examples/imgui_impl_opengl3.cpp",
        "examples/imgui_impl_opengl3.h"
    }
    defines{
        "IMGUI_IMPL_OPENGL_LOADER_GLAD"
    }
    
    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"
        
    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
