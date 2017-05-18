# -----------------------------------------------------------------------------
# Makefile for GROOVE build.
#
# Usage:
# Adjust variables RELEASE_VERSION_DOTS and USER below and then type:
# $ make              (if you want a normal online SourceForge build)
# or
# $ make local        (if you want a local build)
#
# Requirements:
#  - Unix-like shell commands: cd, mkdir, etc
#  - SVN
#  - Java 1.8
#  - YDoc 2.0
#  - rsync
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
# Variables that need to be set before the build.
# -----------------------------------------------------------------------------

# The release number: three digits separated by dots (major.minor.bugfix).
# For the online build a tag with this version will be created in SourceForge.
# For the local build this can be any number.
RELEASE_VERSION_DOTS := 5.6.0

# User: who is making the build. Uncomment your name as appropriate.
# USER := Arend-Laptop
USER := Arend-Home
# USER := Arend-Desktop
# USER := Eduardo

# Make sure that the variables under your name are correct. They are:
# - WORK_DIR: the directory where the build will be performed. A new directory
#             with the release number will be created inside this build
#             directory.
# - JAVAC: the location of your Eclipse compiler for Java.
# - SF_USER: your SourceForge user name, for uploading the generated files.
#            Only used in the online build.
# - YDOC_HOME: the path to the YDoc booklet. Make sure to use version 2.0 with
#              the proper license file. Only used in the online build.
# - LOCAL_GROOVE: the location of the GROOVE project in your Eclipse workspace.
#                 Only used in the local build.
# - LOCAL_GROOVE_RELEASE: the location of your local release module.
#                         Only used in the local build.

ifeq ($(USER),Arend-Desktop)
	WORK_DIR := /cygdrive/d/tmp
	SF_USER := rensink
    YDOC_HOME := /cygdrive/c/Program\ Files/Java/yDoc-3.0_02
    LOCAL_GROOVE := /cygdrive/d/Eclipse/workspace/groove
	LOCAL_GROOVE_RELEASE := /cygdrive/d/Eclipse/workspace/groove-release
endif

ifeq ($(USER),Arend-Laptop)
	WORK_DIR := /cygdrive/d/tmp
	SF_USER := rensink
	YDOC_HOME := /cygdrive/c/Program\ Files/Java/ydoc-3.0_02
	LOCAL_GROOVE := /cygdrive/d/Eclipse/groove
	LOCAL_GROOVE_RELEASE := /cygdrive/d/Eclipse/groove-release
endif

ifeq ($(USER),Arend-Home)
	WORK_DIR := /cygdrive/e/tmp
	SF_USER := rensink
	YDOC_HOME := /cygdrive/c/Program\ Files/Java/ydoc-3_0
	LOCAL_GROOVE := /cygdrive/e/Eclipse/neon/groove-head
	LOCAL_GROOVE_RELEASE := /cygdrive/e/Eclipse/neon/groove-release
endif

ifeq ($(USER),Eduardo)
	WORK_DIR := /home/zambon/Temp/groove-build
	SF_USER := zambon
	YDOC_HOME := /opt/ydoc
	LOCAL_GROOVE := /home/zambon/Work/workspace_groove/groove
	LOCAL_GROOVE_RELEASE := /home/zambon/Work/groove_release
endif

# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
# From this point on nothing needs to be changed.
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
# Characters that Make doesn't like very much...
# -----------------------------------------------------------------------------

EMPTY :=
SPACE := $(EMPTY) $(EMPTY)
ENTER := \n

# -----------------------------------------------------------------------------
# Special variables for Cygwin.
# -----------------------------------------------------------------------------

CYG_PATH_CMD := cygpath -w

ifeq ($(OS),Windows_NT)
    CYG_PATH_F = $(subst \,\\,$(shell $(CYG_PATH_CMD) $(1) 2> /dev/null))
    PATH_CONV_CMD := $(CYG_PATH_CMD) -f -
    PATH_SEP := ;
else
#   We are not in Windows so nothing to do.
    CYG_PATH_F = $(1)
    PATH_CONV_CMD := cat
    PATH_SEP := :
endif

# IMPORTANT: Variables converted with CYG_PATH_F command have the NAT_FS_
# prefix (Native file system).

# -----------------------------------------------------------------------------
# Other release variables.
# -----------------------------------------------------------------------------

RELEASE_VERSION_UNDER := $(subst .,_,$(RELEASE_VERSION_DOTS))
RELEASE_TAG := release-$(RELEASE_VERSION_UNDER)
NAT_FS_YDOC_HOME := $(call CYG_PATH_F,$(YDOC_HOME))

# -----------------------------------------------------------------------------
# Default directory names.
# -----------------------------------------------------------------------------

GROOVE := groove
SAMPLES := samples
RELEASE := release

# -----------------------------------------------------------------------------
# Build paths.
# -----------------------------------------------------------------------------

BUILD_ROOT := $(WORK_DIR)/$(RELEASE_TAG)

BUILD_GROOVE := $(BUILD_ROOT)/$(GROOVE)
NAT_FS_BUILD_GROOVE := $(call CYG_PATH_F,$(BUILD_GROOVE))

BUILD_SAMPLES := $(BUILD_ROOT)/$(SAMPLES)
NAT_FS_BUILD_SAMPLES := $(call CYG_PATH_F,$(BUILD_SAMPLES))

BUILD_RELEASE := $(BUILD_ROOT)/$(RELEASE)
NAT_FS_BUILD_RELEASE := $(call CYG_PATH_F,$(BUILD_RELEASE))

GROOVE_BIN := $(BUILD_GROOVE)/bin
NAT_FS_GROOVE_BIN := $(call CYG_PATH_F,$(GROOVE_BIN))

GROOVE_DOC := $(BUILD_GROOVE)/doc
NAT_FS_GROOVE_DOC := $(call CYG_PATH_F,$(GROOVE_DOC))

GROOVE_SRC := $(BUILD_GROOVE)/src
NAT_FS_GROOVE_SRC := $(call CYG_PATH_F,$(GROOVE_SRC))

GROOVE_TEST := $(BUILD_GROOVE)/test
NAT_FS_GROOVE_TEST := $(call CYG_PATH_F,$(GROOVE_TEST))

GROOVE_LIB := $(BUILD_GROOVE)/lib
NAT_FS_GROOVE_LIB := $(call CYG_PATH_F,$(GROOVE_LIB))

GROOVE_RES := $(BUILD_GROOVE)/resources
NAT_FS_GROOVE_RES := $(call CYG_PATH_F,$(GROOVE_RES))

# Instrumentation
GROOVE_INSTR := $(BUILD_GROOVE)/instr
NAT_FS_GROOVE_INSTR := $(call CYG_PATH_F,$(GROOVE_INSTR))

GROOVE_LIB := $(BUILD_GROOVE)/lib

LOCAL_GROOVE_BIN := $(LOCAL_GROOVE)/bin
LOCAL_GROOVE_SRC := $(LOCAL_GROOVE)/src
LOCAL_GROOVE_RES := $(LOCAL_GROOVE)/resources
LOCAL_GROOVE_INSTR := $(LOCAL_GROOVE)/instr
LOCAL_GROOVE_LIB := $(LOCAL_GROOVE)/lib
LOCAL_GROOVE_SAMPLES := $(LOCAL_GROOVE)/junit/$(SAMPLES)

EXTRA_RES := groove/control/parse/Ctrl.g groove/io/conceptual/configuration/ConfigSchema.xsd

# -----------------------------------------------------------------------------
# Java commands.
# -----------------------------------------------------------------------------

JAVAC := java -jar $(NAT_FS_GROOVE_LIB)/org.eclipse.jdt.core_3.11.1.v20150902-1521.jar -nowarn
JAVA := java
JAR := jar
JAVADOC := javadoc

# -----------------------------------------------------------------------------
# Variables related to SVN.
# -----------------------------------------------------------------------------

SVN_ROOT := https://svn.code.sf.net/p/groove/code
SVN_GROOVE := $(SVN_ROOT)/$(GROOVE)
SVN_SAMPLES := $(SVN_ROOT)/$(SAMPLES)
SVN_RELEASE := $(SVN_ROOT)/$(RELEASE)
TRUNK := trunk/
TAGS := tags
SVN_RELEASE_TAG := $(TAGS)/$(RELEASE_TAG)
COMMIT_MSG := "Preparation for the new release."
FAIL_MSG := "Removing tag on build fail."

# -----------------------------------------------------------------------------
# Variables related to target [version].
# -----------------------------------------------------------------------------

VERSION_FILE := $(GROOVE_SRC)/groove/util/Version.java
DATE := $(shell date +%d.%m.%Y)
TIMESTAMP := $(shell date +%Y%m%d%H%M%S)

# -----------------------------------------------------------------------------
# Variables related to target [compile].
# -----------------------------------------------------------------------------

# Black magic sed command to get the libraries from Eclipse configuration.
# Kudos to Mike for helping out with this one... :P
ECLIPSE_LIB_ENTRY := <classpathentry kind="lib" path="lib/
LIB_JAR_NAMES = $(shell sed -ne 's%.*$(ECLIPSE_LIB_ENTRY)\([^"]*\).*%\1%p' $(BUILD_GROOVE)/.classpath 2> /dev/null)

FULL_PATH_LIBS = $(subst $(SPACE),$(PATH_SEP),$(call CYG_PATH_F,$(addprefix $(GROOVE_LIB)/, $(LIB_JAR_NAMES))))
CLASSPATH = $(NAT_FS_GROOVE_SRC)$(PATH_SEP)$(NAT_FS_GROOVE_RES)$(PATH_SEP)$(FULL_PATH_LIBS)$(EXTRA_CLASSPATH)
TESTPATH = $(NAT_FS_GROOVE_RES)$(PATH_SEP)$(FULL_PATH_LIBS)
COPTIONS = -source 1.8 -target 1.8 -g -deprecation -classpath $(CLASSPATH) -d $(NAT_FS_GROOVE_BIN)
SRC_FILES = $(call CYG_PATH_F,$(shell find $(GROOVE_SRC) -name "*.java"))
COMP_FILE_NAME = compilation_options

# -----------------------------------------------------------------------------
# Variables related to target [test].
# -----------------------------------------------------------------------------

TEST_DIR := $(BUILD_ROOT)/groove
JUNIT_CLASS := org.junit.runner.JUnitCore
GROOVE_TEST_CLASS := groove.test.CheckinTests

# For the coverage tool:
# We have a dependency on the name 'emma.jar' in the build.xml file
EMMA_JAR = $(GROOVE_LIB)/emma.jar
ANT_BUILD_FILE := $(BUILD_RELEASE)/build.xml

# -----------------------------------------------------------------------------
# Variables related to target [doc].
# -----------------------------------------------------------------------------

NAT_FS_YDOC_JAR := $(call CYG_PATH_F,$(YDOC_HOME)/lib/ydoc.jar)
NAT_FS_SVG_JAR := $(call CYG_PATH_F,$(YDOC_HOME)/lib/class2svg.jar)
NAT_FS_YDOC_RES := $(call CYG_PATH_F,$(YDOC_HOME)/resources/)

DOC_OPTIONS =\
-d $(NAT_FS_GROOVE_DOC)\
-classpath '$(FULL_PATH_LIBS)'\
-sourcepath $(NAT_FS_GROOVE_SRC)\
-subpackages groove\
-version\
-use\
-windowtitle "Groove Tool Set API"\
-tag invariant:a:"Invariant:"\
-tag ensure:a:"Ensure:"\
-tag require:a:"Require:"\
-Xdoclint:none\
-J-Xmx1G
# Deprecated DOC_OPTIONS, as the YWorks doclet does not support Java 1.8
# -doclet ydoc.doclets.YStandard\
# -docletpath '$(NAT_FS_YDOC_JAR)$(PATH_SEP)$(NAT_FS_SVG_JAR)$(PATH_SEP)$(NAT_FS_YDOC_RES)$(PATH_SEP)$(CLASSPATH)$(PATH_SEP)$(NAT_FS_GROOVE_BIN)'\
# -filterpath '$(NAT_FS_YDOC_HOME)/'\
# -filter filters.ExcludeDeprecatedFilter\
# -tagletpath '$(NAT_FS_YDOC_JAR)'\
# -generic\
# -umlautogen\

# -----------------------------------------------------------------------------
# Variables related to target [jars].
# -----------------------------------------------------------------------------

JARS_DIR := $(BUILD_ROOT)/jars

JAR_CLASSES_DIR := $(JARS_DIR)/classes
NAT_FS_JAR_CLASSES_DIR :=$(call CYG_PATH_F,$(JAR_CLASSES_DIR))

JAR_BIN_DIR := $(JARS_DIR)/bin

MAIN_JAR_NAME := groove-$(RELEASE_VERSION_UNDER).jar
NAT_FS_MAIN_JAR_NAME := $(call CYG_PATH_F,$(JAR_BIN_DIR)/$(MAIN_JAR_NAME))

GENERATOR_JAR_NAME := Generator.jar
NAT_FS_GENERATOR_JAR_NAME := $(call CYG_PATH_F,$(JAR_BIN_DIR)/$(GENERATOR_JAR_NAME))

IMAGER_JAR_NAME := Imager.jar
NAT_FS_IMAGER_JAR_NAME := $(call CYG_PATH_F,$(JAR_BIN_DIR)/$(IMAGER_JAR_NAME))

VIEWER_JAR_NAME := Viewer.jar
NAT_FS_VIEWER_JAR_NAME := $(call CYG_PATH_F,$(JAR_BIN_DIR)/$(VIEWER_JAR_NAME))

MODELCHECKER_JAR_NAME := ModelChecker.jar
NAT_FS_MODELCHECKER_JAR_NAME := $(call CYG_PATH_F,$(JAR_BIN_DIR)/$(MODELCHECKER_JAR_NAME))

PROLOGCHECKER_JAR_NAME := PrologChecker.jar
NAT_FS_PROLOGCHECKER_JAR_NAME := $(call CYG_PATH_F,$(JAR_BIN_DIR)/$(PROLOGCHECKER_JAR_NAME))

SIMULATOR_JAR_NAME := Simulator.jar
NAT_FS_SIMULATOR_JAR_NAME := $(call CYG_PATH_F,$(JAR_BIN_DIR)/$(SIMULATOR_JAR_NAME))

DOT_DOT_LIBS = $(addprefix $(ENTER) ../lib/, $(LIB_JAR_NAMES))

MANIFEST_FILE := $(JARS_DIR)/manifest
NAT_FS_MANIFEST_FILE := $(call CYG_PATH_F,$(MANIFEST_FILE))

MANIFEST_STR_MAIN = Manifest-Version: 1.0$(ENTER)Class-Path: $(DOT_DOT_LIBS)$(ENTER)
MANIFEST_STR_DERIVED = $(MANIFEST_STR_MAIN)  $(MAIN_JAR_NAME)$(ENTER)
MANIFEST_STR_GENERATOR = $(MANIFEST_STR_DERIVED)Main-Class: groove.Generator$(ENTER)
MANIFEST_STR_IMAGER = $(MANIFEST_STR_DERIVED)Main-Class: groove.Imager$(ENTER)
MANIFEST_STR_VIEWER = $(MANIFEST_STR_DERIVED)Main-Class: groove.Viewer$(ENTER)
MANIFEST_STR_MODELCHECKER = $(MANIFEST_STR_DERIVED)Main-Class: groove.ModelChecker$(ENTER)
MANIFEST_STR_PROLOGCHECKER = $(MANIFEST_STR_DERIVED)Main-Class: groove.PrologChecker$(ENTER)
MANIFEST_STR_SIMULATOR = $(MANIFEST_STR_DERIVED)Main-Class: groove.Simulator$(ENTER)

# -----------------------------------------------------------------------------
# Variables related to target [zip].
# -----------------------------------------------------------------------------

TEMP_DIR := $(BUILD_ROOT)/temp/groove-$(RELEASE_VERSION_UNDER)
BIN_FILENAME := groove-$(RELEASE_VERSION_UNDER)-bin.zip
BINJAVADOC_FILENAME := groove-$(RELEASE_VERSION_UNDER)-bin+javadoc.zip
SRC_FILENAME := groove-$(RELEASE_VERSION_UNDER)-src.zip
SAMPLES_FILENAME := groove-$(RELEASE_VERSION_UNDER)-samples.zip

# -----------------------------------------------------------------------------
# Variables related to target [upload].
# -----------------------------------------------------------------------------

RSYNC := rsync -e ssh
SF_PATH := @web.sourceforge.net:/home/frs/project/g/gr/groove/

# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
# TARGETS
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------

all: prepare tag checkout version compile test doc jars zip upload
	@echo Build complete.

local: prepare copybin jars zip
	@echo - Removing $(BINJAVADOC_FILENAME). Local build does not create docs.
	@rm -f $(BUILD_ROOT)/$(BINJAVADOC_FILENAME)
	@echo Local build complete.

prepare:
	@echo Making target [prepare]
	@echo - Building GROOVE release $(RELEASE_VERSION_DOTS).
	@rm -rf $(BUILD_ROOT)
	@mkdir -p $(BUILD_ROOT)
	@echo

tag:
	@echo Making target [tag]
	@echo - Creating release tag $(RELEASE_TAG) in the SVN repository.
	@echo - Tagging src
	@svn copy $(SVN_GROOVE)/$(TRUNK) $(SVN_GROOVE)/$(SVN_RELEASE_TAG) -m $(COMMIT_MSG)
	@echo - Tagging samples
	@svn copy $(SVN_SAMPLES)/$(TRUNK) $(SVN_SAMPLES)/$(SVN_RELEASE_TAG) -m $(COMMIT_MSG)
	@echo - Tagging release
	@svn copy $(SVN_RELEASE)/$(TRUNK) $(SVN_RELEASE)/$(SVN_RELEASE_TAG) -m $(COMMIT_MSG)
	@echo - Tag created.
	@echo

checkout:
	@echo Making target [checkout]
	@echo - Checking out a fresh copy from the SVN repository.
	@echo - Checking out src
	@svn checkout $(SVN_GROOVE)/$(SVN_RELEASE_TAG) $(BUILD_GROOVE)  > /dev/null
	@echo - Checking out samples
	@svn checkout $(SVN_SAMPLES)/$(SVN_RELEASE_TAG) $(BUILD_SAMPLES) > /dev/null
	@echo - Checking out release
	@svn checkout $(SVN_RELEASE)/$(SVN_RELEASE_TAG) $(BUILD_RELEASE) > /dev/null
	@echo - Checkout complete.
	@echo

version:
	@echo Making target [version]
	@echo - Updating version constants in file $(VERSION_FILE).
	@sed -i.back -e "s/BUILD = [^a]*;/BUILD = \"$(TIMESTAMP)\";/g" -e "s/DATE = [^a]*;/DATE = \"$(DATE)\";/g" -e "s/NUMBER = [^a]*;/NUMBER = \"$(RELEASE_VERSION_DOTS)\";/g" $(VERSION_FILE)
	@echo

compile:
	@echo Making target [compile]
	@echo - Creating $(GROOVE_BIN) directory.
	@rm -rf $(GROOVE_BIN)
	@mkdir -p $(GROOVE_BIN)
	@echo - Collecting source files.
	@echo '$(COPTIONS)' > $(COMP_FILE_NAME)
	@find $(GROOVE_SRC) -name "*.java" | $(PATH_CONV_CMD) >> $(COMP_FILE_NAME)
	@echo - Compiling source files.
	@$(JAVAC) @$(COMP_FILE_NAME)
	@rm -f $(COMP_FILE_NAME)
	@echo - Adding additional resource files.
	@for F in $(EXTRA_RES); do\
		cp $(GROOVE_SRC)/$${F} $(GROOVE_BIN)/$${F};\
	done
	@echo - Compilation finished.
	@echo

instrument:
	@echo Making target [instrument]
	@echo - Cleaning away possible existing coverage-related files.
	@rm -f $(TEST_DIR)/coverage.ec \
		coverage.em \
		coverage.txt \
		coverage.xml
	@rm -rf coverage
	@mkdir coverage
	@echo - Instrumenting compiled class files.
	java -cp $(EMMA_JAR) emma instr -verbose -m copy -d $(GROOVE_INSTR) \
		-ix "-groove.control.parse.*" \
		-ix "-groove.test" \
		-ix "-groove.test.*" \
		-ix "-groove.gui" \
		-ix "-groove.gui.*" \
		-ix "-groove.abstraction.neigh.gui" \
		-ix "-groove.abstraction.neigh.gui.*" \
		-ix "-groove.samples" \
		-ix "-groove.samples.*" \
		-ip $(GROOVE_BIN)  ; \
	cp $(EMMA_JAR) $(GROOVE_INSTR)/emma.jar
	@echo - Instrumenting finished.
	@echo

test:
	@echo Making target [test]
	@echo - Collecting test files.
	@echo '$(COPTIONS)' > $(COMP_FILE_NAME)
	@find $(BUILD_GROOVE) -name "*.java" | $(PATH_CONV_CMD) >> $(COMP_FILE_NAME)
	@echo - Compiling test files.
	@$(JAVAC) @$(COMP_FILE_NAME)
	@echo - Running tests.
	@cd $(TEST_DIR) && $(JAVA) -ea -classpath '$(CLASSPATH)$(PATH_SEP)$(NAT_FS_GROOVE_BIN)' $(JUNIT_CLASS) $(GROOVE_TEST_CLASS)
	@echo - Tests passed.
	@echo

testcover:
	@echo Making target [testcover]
	@echo - Cleaning away possible previous test results.
	# NOTE: use of directory test-reports to store test results is defined in  build.xml
	@rm -rf $(WORK_DIR)/test-reports
	@mkdir $(WORK_DIR)/test-reports
	@echo - Running tests.
	@-cd $(TEST_DIR) && ant -f $(ANT_BUILD_FILE) -Dbasedir=$(WORK_DIR) test -v -v -v
	@echo - Tests passed.
	@echo

report:
	@echo Making target [report]
	@echo - Reporting test coverage.
	java -cp $(EMMA_JAR) emma report -verbose -r txt,html,xml -in coverage.em -in $(TEST_DIR)/coverage.ec
	@echo - Reporting coverage finished.
	@echo

doc:
	@echo Making target [doc]
	@echo - Creating JavaDoc files.
	@$(JAVADOC) $(DOC_OPTIONS) > /dev/null
	@echo - JavaDoc finished.
	@echo

jars:
	@echo Making target [jars]
	@echo - Creating JAR directories.
	@rm -rf $(JARS_DIR)
	@mkdir -p $(JARS_DIR)
	@mkdir -p $(JAR_CLASSES_DIR)
	@mkdir -p $(JAR_BIN_DIR)
	@echo - Copying content files.
	@cp -rf $(GROOVE_BIN)/groove $(JAR_CLASSES_DIR)
	@rm -rf $(JAR_CLASSES_DIR)/groove/test/
	@cp -rf $(GROOVE_RES)/* $(JAR_CLASSES_DIR)
	@echo - Creating $(MAIN_JAR_NAME)
	@printf '$(MANIFEST_STR_MAIN)' > $(MANIFEST_FILE)
	@$(JAR) cfm $(NAT_FS_MAIN_JAR_NAME) $(NAT_FS_MANIFEST_FILE) -C $(NAT_FS_JAR_CLASSES_DIR) .
	@echo - Creating $(GENERATOR_JAR_NAME)
	@printf '$(MANIFEST_STR_GENERATOR)' > $(MANIFEST_FILE)
	@$(JAR) cfm $(NAT_FS_GENERATOR_JAR_NAME) $(NAT_FS_MANIFEST_FILE)
	@echo - Creating $(VIEWER_JAR_NAME)
	@printf '$(MANIFEST_STR_VIEWER)' > $(MANIFEST_FILE)
	@$(JAR) cfm $(NAT_FS_VIEWER_JAR_NAME) $(NAT_FS_MANIFEST_FILE)
	@echo - Creating $(IMAGER_JAR_NAME)
	@printf '$(MANIFEST_STR_IMAGER)' > $(MANIFEST_FILE)
	@$(JAR) cfm $(NAT_FS_IMAGER_JAR_NAME) $(NAT_FS_MANIFEST_FILE)
	@echo - Creating $(MODELCHECKER_JAR_NAME)
	@printf '$(MANIFEST_STR_MODELCHECKER)' > $(MANIFEST_FILE)
	@$(JAR) cfm $(NAT_FS_MODELCHECKER_JAR_NAME) $(NAT_FS_MANIFEST_FILE)
	@echo - Creating $(PROLOGCHECKER_JAR_NAME)
	@printf '$(MANIFEST_STR_PROLOGCHECKER)' > $(MANIFEST_FILE)
	@$(JAR) cfm $(NAT_FS_PROLOGCHECKER_JAR_NAME) $(NAT_FS_MANIFEST_FILE)
	@echo - Creating $(SIMULATOR_JAR_NAME)
	@printf '$(MANIFEST_STR_SIMULATOR)' > $(MANIFEST_FILE)
	@$(JAR) cfm $(NAT_FS_SIMULATOR_JAR_NAME) $(NAT_FS_MANIFEST_FILE)

	@echo - JAR files created.
	@echo

zip:
	@echo Making target [zip]
	@echo - Creating $(BIN_FILENAME)
	@rm -rf $(TEMP_DIR)
	@mkdir -p $(TEMP_DIR)
	@cp $(BUILD_RELEASE)/README $(TEMP_DIR)
	@cp $(BUILD_RELEASE)/CHANGES $(TEMP_DIR)
	@cp $(BUILD_RELEASE)/quick-reference.pdf $(TEMP_DIR)
	@cp $(BUILD_RELEASE)/usermanual.pdf $(TEMP_DIR)
	@cp $(BUILD_RELEASE)/groove-green-g.ico $(TEMP_DIR)
	@cp $(BUILD_RELEASE)/groove2tikz.sty $(TEMP_DIR)
	@cp -r $(JAR_BIN_DIR) $(TEMP_DIR)
	@cp -r $(GROOVE_LIB) $(TEMP_DIR)
	@rm -f $(TEMP_DIR)/lib/junit*.jar
	@rm -f $(TEMP_DIR)/lib/emma.jar
	@rm -rf $(TEMP_DIR)/lib/src/
	@find $(TEMP_DIR) -name .svn -print0 | xargs -0 rm -rf
	@rm -f $(BUILD_ROOT)/$(BIN_FILENAME)
	@cd $(BUILD_ROOT)/temp/ && zip -rq9 $(BUILD_ROOT)/$(BIN_FILENAME) groove-$(RELEASE_VERSION_UNDER)/
	@echo - Creating $(BINJAVADOC_FILENAME)
	@cp -r $(GROOVE_DOC)/ $(TEMP_DIR)
	@rm -f $(BUILD_ROOT)/$(BINJAVADOC_FILENAME)
	@cd $(BUILD_ROOT)/temp/ && zip -rq9 $(BUILD_ROOT)/$(BINJAVADOC_FILENAME) groove-$(RELEASE_VERSION_UNDER)/
	@echo - Creating $(SRC_FILENAME)
	@rm -rf $(TEMP_DIR)
	@mkdir -p $(TEMP_DIR)
	@cp $(BUILD_RELEASE)/README $(TEMP_DIR)
	@cp $(BUILD_RELEASE)/CHANGES $(TEMP_DIR)
	@mkdir -p $(TEMP_DIR)/src/
	@cp -r $(GROOVE_SRC)/groove $(TEMP_DIR)/src/
	@rm -rf $(TEMP_DIR)/src/groove/test
	@cp -r $(GROOVE_RES) $(TEMP_DIR)
	@find $(TEMP_DIR) -name .svn -print0 | xargs -0 rm -rf
	@rm -f $(BUILD_ROOT)/$(SRC_FILENAME)
	@cd $(BUILD_ROOT)/temp/ && zip -rq9 $(BUILD_ROOT)/$(SRC_FILENAME) groove-$(RELEASE_VERSION_UNDER)/
	@echo - Creating $(SAMPLES_FILENAME)
	@rm -rf $(TEMP_DIR)
	@mkdir -p $(TEMP_DIR)
	@cp $(BUILD_RELEASE)/README $(TEMP_DIR)
	@cp $(BUILD_RELEASE)/CHANGES $(TEMP_DIR)
	@cp -r $(BUILD_SAMPLES) $(TEMP_DIR)
	@find $(TEMP_DIR) -name .svn -print0 | xargs -0 rm -rf
	@rm -f $(BUILD_ROOT)/$(SAMPLES_FILENAME)
	@cd $(BUILD_ROOT)/temp/ && zip -rq9 $(BUILD_ROOT)/$(SAMPLES_FILENAME) groove-$(RELEASE_VERSION_UNDER)/
	@rm -rf $(TEMP_DIR)
	@echo - Zip files created.
	@echo

upload:
	@echo Making target [upload]
	@echo - Uploading files to SourceForge.
	@echo - Uploading binaries and source.
	$(RSYNC) $(BUILD_ROOT)/$(BIN_FILENAME) $(BUILD_ROOT)/$(BINJAVADOC_FILENAME) $(BUILD_ROOT)/$(SRC_FILENAME) $(SF_USER)$(SF_PATH)groove/$(RELEASE_VERSION_DOTS)/
	@echo - Uploading samples.
	$(RSYNC) $(BUILD_ROOT)/$(SAMPLES_FILENAME) $(SF_USER)$(SF_PATH)groove-samples/$(RELEASE_VERSION_DOTS)/
	@echo - Uploading README.
	$(RSYNC) $(BUILD_RELEASE)/README $(SF_USER)$(SF_PATH)groove-samples/$(RELEASE_VERSION_DOTS)/README.md
	@echo - Upload complete.
	@echo

copybin:
	@echo Making target [copybin]
	@echo - Copying files from Eclipse local directory.
	@mkdir -p $(NAT_FS_BUILD_GROOVE)
	@cp -r $(LOCAL_GROOVE_BIN)/ $(GROOVE_BIN)
	@chmod -R a+rwx $(GROOVE_BIN) # workaround for cygwin behaviour
	@for F in $(EXTRA_RES); do\
		cp $(LOCAL_GROOVE_SRC)/$${F} $(GROOVE_BIN)/$${F};\
		chmod a+rwx $(GROOVE_BIN)/$${F} # workaround for cygwin behaviour\
	done
	@find $(GROOVE_BIN) -name .svn -print0 | xargs -0 rm -rf
	@cp -r $(LOCAL_GROOVE_SRC)/ $(GROOVE_SRC)
	@chmod -R a+rwx $(GROOVE_SRC) # workaround for cygwin behaviour
	@find $(GROOVE_SRC) -name .svn -print0 | xargs -0 rm -rf
	@cp -r $(LOCAL_GROOVE_RES)/ $(GROOVE_RES)
	@chmod -R a+rwx $(GROOVE_RES) # workaround for cygwin behaviour
	@find $(GROOVE_RES) -name .svn -print0 | xargs -0 rm -rf
	@cp -r $(LOCAL_GROOVE_LIB)/ $(GROOVE_LIB)
	@chmod -R a+rwx $(GROOVE_LIB) # workaround for cygwin behaviour
	@find $(GROOVE_LIB) -name .svn -print0 | xargs -0 rm -rf
	@mkdir -p $(GROOVE_DOC)
	@cp -r $(LOCAL_GROOVE_RELEASE)/ $(NAT_FS_BUILD_RELEASE)
	@find $(BUILD_RELEASE) -name .svn -print0 | xargs -0 rm -rf
	@cp -r $(LOCAL_GROOVE_SAMPLES)/ $(NAT_FS_BUILD_SAMPLES)
	@find $(BUILD_SAMPLES) -name .svn -print0 | xargs -0 rm -rf
	@cp $(LOCAL_GROOVE)/.classpath $(NAT_FS_BUILD_GROOVE)
	@echo - Copy done.
	@echo

cleanerror:
	@echo Making target [cleanerror]
	@echo This target will completely remove $(SVN_RELEASE_TAG) from the SVN repository. Use it with care!;\
	 echo Continue? [y/N];\
	 read USER_CHOICE;\
	 if [ "$$USER_CHOICE" = "y" ]; then\
		echo - Removing tag from the SVN repository.;\
		echo - Removing src;\
		svn delete -m $(FAIL_MSG) $(SVN_GROOVE)/$(SVN_RELEASE_TAG) > /dev/null;\
		echo - Removing samples;\
		svn delete -m $(FAIL_MSG) $(SVN_SAMPLES)/$(SVN_RELEASE_TAG) > /dev/null;\
		echo - Removing release;\
		svn delete -m $(FAIL_MSG) $(SVN_RELEASE)/$(SVN_RELEASE_TAG) > /dev/null;\
		echo - Removing temporary compilation file.;\
		rm -f $(COMP_FILE_NAME);\
		echo - Cleaning errors done.;\
	 else\
	    echo - Aborting target.;\
	 fi
	@echo

cleanall: 
	@echo Making target [cleanall]
	@echo - Cleaning all build directories.
	@rm -rf $(BUILD_ROOT)
	@echo - Clean done.
	@echo
