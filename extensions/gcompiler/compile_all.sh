ROOT_DIR=/home/zambon/Work/groove_extensions
CC=$ROOT_DIR/gcompiler/bin/GraphCompiler.jar
GRAMMAR=$ROOT_DIR/java_semantics/java-control-flow-build.gps/
SOURCES=$ROOT_DIR/gcompiler/tests/src/main/classes

for FILE in `ls $SOURCES/*.java`; do
    FILE_NAME=$(basename $FILE)
    FILE_NAME=${FILE_NAME%.*}
    java -jar $CC $FILE $GRAMMAR/$FILE_NAME.gst
done