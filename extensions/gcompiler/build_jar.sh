#!/bin/bash

ROOT_DIR=/home/zambon/Work/groove_extensions/gcompiler
BIN_DIR=$ROOT_DIR/bin
CLASSES_DIR=$ROOT_DIR/classes
CONFIG_DIR=$ROOT_DIR/config
LIB_DIR=$ROOT_DIR/lib

WORKSPACE=/home/zambon/Work/groove_extensions/aspectj
LIB_WORKSPACE=$WORKSPACE/lib

# Clear all dirs
rm -rf $BIN_DIR/*
rm -rf $CLASSES_DIR/*
rm -rf $LIB_DIR/*

# Copy the necessary libraries
cp -f $LIB_WORKSPACE/bcel/bcel.jar $LIB_DIR/
cp -f $LIB_WORKSPACE/groove/groove-3_3_1/bin/groove-3_3_1.jar $LIB_DIR/
cp -f $LIB_WORKSPACE/groove/groove-3_3_1/lib/castor-0_9_5_2.jar $LIB_DIR/
cp -f $LIB_WORKSPACE/groove/groove-3_3_1/lib/groove-gxl-1_0.jar $LIB_DIR/
cp -f $LIB_WORKSPACE/groove/groove-3_3_1/lib/xerces-2_6_0-xercesImpl.jar $LIB_DIR/
cp -f $WORKSPACE/org.eclipse.jdt.core/jdtcore-for-aspectj.jar $LIB_DIR/

# Copy the byte-code files
cp -rf $WORKSPACE/asm/bin/org/ $CLASSES_DIR/
cp -rf $WORKSPACE/aspectj5rt/bin/org/ $CLASSES_DIR/
cp -rf $WORKSPACE/bridge/bin/org/ $CLASSES_DIR/
cp -rf $WORKSPACE/org.aspectj.ajdt.core/bin/graphbuilder/ $CLASSES_DIR/
cp -rf $WORKSPACE/org.aspectj.ajdt.core/bin/org/ $CLASSES_DIR/
cp -rf $WORKSPACE/runtime/bin/org/ $CLASSES_DIR/
cp -rf $WORKSPACE/util/bin/org/ $CLASSES_DIR/
cp -rf $WORKSPACE/weaver/bin/org/ $CLASSES_DIR/

# Remove .svn dirs
find $CLASSES_DIR -name .svn -print0 | xargs -0 rm -rf

jar cfm $BIN_DIR/GraphCompiler.jar $CONFIG_DIR/MANIFEST.MF -C $CLASSES_DIR .
