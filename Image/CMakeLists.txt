cmake_minimum_required(VERSION 3.13)
set(PROJECT_NAME ImageAnalyser)
project(${PROJECT_NAME})

set(CMAKE_CXX_STANDARD 14)
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14 -static -fext-numeric-literals")

set(SOURCE_FILES main.cpp util/ImageBMP.cpp util/ImageBMP.h util/Bitmap.cpp util/Bitmap.h util/Color.cpp util/Color.h ui/UI.cpp ui/UI.h ui/Button.cpp ui/Button.h ui/View.cpp ui/View.h ui/Window.cpp ui/Window.h MainWindow.cpp MainWindow.h ui/ImageView.cpp ui/ImageView.h util/Listeners.h util/effects/Effect.cpp util/effects/Effect.h util/effects/BlackWhiteEffect.cpp util/effects/BlackWhiteEffect.h util/effects/FlipEffect.cpp util/effects/FlipEffect.h util/effects/RotateEffect.cpp util/effects/RotateEffect.h util/effects/FrameEffect.cpp util/effects/FrameEffect.h)

set(SFML_ROOT "/home/dmitriy/Libs/SFML-2.5.1")
set(SFML_INCLUDE_DIR "${SFML_ROOT}/include")
set(SFML_LIBRARY_DIR "${SFML_ROOT}/lib")
set(SFML_DIR "${SFML_ROOT}/lib/cmake/SFML")

link_directories(SFML_LIBRARY_DIR)
include_directories(SFML_INCLUDE_DIR)

find_package(SFML 2.5.1 COMPONENTS system window graphics network audio)

if(SFML_FOUND)
    message(STATUS "SFML_INCLUDE_DIR: ${SFML_INCLUDE_DIR}")
    message(STATUS "SFML_LIBRARIES: ${SFML_LIBRARIES}")
    message(STATUS "SFML_VERSION: ${SFML_VERSION}")
endif()

add_executable(${PROJECT_NAME} ${SOURCE_FILES})
target_link_libraries (${PROJECT_NAME} sfml-graphics sfml-window sfml-system)

find_package(OpenMP)
IF(OPENMP_FOUND)
    message("Found OpenMP! ^_^")
    # add flags for OpenMP
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} ${OpenMP_SHARED_LINKER_FLAGS}")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")
ELSE()
    message("Missed OpenMP! x_x")
ENDIF()