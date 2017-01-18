# Makefile Template

## Introduction

A generic makefile template/framework for C and C++ projects. The template helps simplify the build process and does not require building tools such as CMake, qmake, etc. Only a few lines of information are needed to create each Makefile, which is based on the information in a project file. Project files are created by the developer, and are usually simple.

## Features

1. Automatically finds and compiles all source files within the source directory.
2. Automatically generates dependecies as files are compiled, ensuring that files are correctly recompiled when dependecies have updated.

## Usage

1. Add makefile template (in directory `modules`) into your project path.

2. Define project file (e.g. helloworld.pro) which will be included in `Makefile`. You can define some built-in variables of GNU make in this file, such as `CFLAGS`, `CXXFLAGS`, `CPPFLAGS`, `LDFLAGS`, etc. Moveover, you should define the following specific variables:

     **TARGET**
     Specifies target name. `TARGET = helloworld`

     **INCLUDEPATH**
     Specifies the #include directories which should be searched when compiling the project. `INCLUDEPATH = include`

     **DEPENDPATH**
     Specifies the source directories which should be searched when compiling the project. `DEPENDPATH = src`

     **HEADERS**
     Defines the header files for the project.`HEADERS = message.h`

     **SOURCES**
     Defines the source files for the project. `SOURCES = main.cpp message.cpp`

## References
1. Robert Mecklenburg, [Managing Projects with GNU Make, 3rd edition](http://shop.oreilly.com/product/9780596006105.do), O'Reilly, 2004
2. https://netbeans.org/kb/docs/cnd/depchecking.html
3. http://make.mad-scientist.net/papers/advanced-auto-dependency-generation
