# Copyright (c) 2011 The Foundry Visionmongers Ltd. All Rights Reserved.
# See README for instructions on how to use this Makefile
#

OUTDIR = ./out
OUTFILENAME = LightViewerModifier.so
OUTFILEPATH = $(OUTDIR)/$(OUTFILENAME)
KATANA_HOME = /mnt/work/software/katana/katana2.1v5
PLUGIN_SRC = $(KATANA_HOME)/plugin_apis/src

INCLUDES = -Iinclude -I$(KATANA_HOME)/plugin_apis/include
LIBSRC = $(PLUGIN_SRC)/FnPluginSystem/FnPlugin.cpp
LIBSRC += $(PLUGIN_SRC)/FnAttribute/client/FnAttribute.cpp
LIBSRC += $(PLUGIN_SRC)/FnAttribute/client/FnDataBuilder.cpp
LIBSRC += $(PLUGIN_SRC)/FnViewerModifier/plugin/FnViewerModifier.cpp
LIBSRC += $(PLUGIN_SRC)/FnViewerModifier/plugin/FnViewerModifierInput.cpp
LIBSRC += $(PLUGIN_SRC)/FnLogging/client/FnLogging.cpp
LIBSRC += $(PLUGIN_SRC)/FnAsset/client/FnDefaultAssetPlugin.cpp
LIBSRC += $(PLUGIN_SRC)/FnAsset/client/FnDefaultFileSequencePlugin.cpp

LDFLAGS = -lGL -lGLU

CXXFLAGS =	-fPIC -shared $(INCLUDES)
.so.cpp:	$(CC) $(LDFLAGS) $< $@

all:	$(OUTFILEPATH)

$(OUTFILEPATH):	src/LightViewerModifier.cpp $(LIBSRC)
	@mkdir -p $(OUTDIR)
	$(CXX) $(CXXFLAGS) -o $@ src/LightViewerModifier.cpp $(LIBSRC) $(LDFLAGS)
install:
	@echo "Install LightViewerModifier.so"
	cp -f ${OUTFILEPATH} /home/xukai/Git/git_repo/katana/resource/2.1/Libs
	@echo "Done!"
clean:
	rm $(OUTFILEPATH)
