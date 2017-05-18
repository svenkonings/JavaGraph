#!/bin/bash

ROOT_DIR=/home/zambon/Work/groove_extensions/gcompiler
BIN_DIR=$ROOT_DIR/bin
CLASSES_DIR=$ROOT_DIR/classes
LIB_DIR=$ROOT_DIR/lib
TESTS_DIR=$ROOT_DIR/tests

# Clear all dirs
rm -rf $BIN_DIR/*
rm -rf $CLASSES_DIR/*
rm -rf $LIB_DIR/*

# Remove .class dirs
find $TESTS_DIR -name *.class -print0 | xargs -0 rm -rf

