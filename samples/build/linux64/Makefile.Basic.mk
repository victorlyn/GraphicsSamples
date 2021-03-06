# Makefile generated by XPJ for linux64
-include Makefile.custom
ProjectName = Basic
Basic_cppfiles   += ./../../tutorial/Basic/Basic.cpp

Basic_cpp_debug_dep    = $(addprefix $(DEPSDIR)/Basic/debug/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.P, $(Basic_cppfiles)))))
Basic_cc_debug_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.debug.P, $(Basic_ccfiles)))))
Basic_c_debug_dep      = $(addprefix $(DEPSDIR)/Basic/debug/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.P, $(Basic_cfiles)))))
Basic_debug_dep      = $(Basic_cpp_debug_dep) $(Basic_cc_debug_dep) $(Basic_c_debug_dep)
-include $(Basic_debug_dep)
Basic_cpp_release_dep    = $(addprefix $(DEPSDIR)/Basic/release/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.P, $(Basic_cppfiles)))))
Basic_cc_release_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.release.P, $(Basic_ccfiles)))))
Basic_c_release_dep      = $(addprefix $(DEPSDIR)/Basic/release/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.P, $(Basic_cfiles)))))
Basic_release_dep      = $(Basic_cpp_release_dep) $(Basic_cc_release_dep) $(Basic_c_release_dep)
-include $(Basic_release_dep)
Basic_debug_hpaths    := 
Basic_debug_hpaths    += ./../../tutorial/Basic
Basic_debug_hpaths    += ./../../../extensions/include
Basic_debug_hpaths    += ./../../../extensions/include/NsFoundation
Basic_debug_hpaths    += ./../../../extensions/include/NvFoundation
Basic_debug_hpaths    += ./../../../extensions/externals/include
Basic_debug_hpaths    += ./../../../extensions/externals/include/GLFW
Basic_debug_lpaths    := 
Basic_debug_lpaths    += ./../../../extensions/lib/linux64
Basic_debug_lpaths    += ./../../../extensions/externals/lib/linux64
Basic_debug_defines   := $(Basic_custom_defines)
Basic_debug_defines   += LINUX=1
Basic_debug_defines   += NV_LINUX
Basic_debug_defines   += GW_APP_NAME=\"Basic\"
Basic_debug_defines   += _DEBUG
Basic_debug_libraries := 
Basic_debug_libraries += NsFoundationD
Basic_debug_libraries += NvAppBaseD
Basic_debug_libraries += NvAssetLoaderD
Basic_debug_libraries += NvModelD
Basic_debug_libraries += NvGLUtilsD
Basic_debug_libraries += NvGamepadD
Basic_debug_libraries += NvImageD
Basic_debug_libraries += NvUID
Basic_debug_libraries += HalfD
Basic_debug_libraries += glfw3
Basic_debug_libraries += GLEW
Basic_debug_libraries += GL
Basic_debug_libraries += X11
Basic_debug_libraries += Xrandr
Basic_debug_libraries += Xxf86vm
Basic_debug_libraries += Xi
Basic_debug_libraries += Xinerama
Basic_debug_libraries += Xcursor
Basic_debug_libraries += dl
Basic_debug_common_cflags	:= $(Basic_custom_cflags)
Basic_debug_common_cflags    += -MMD
Basic_debug_common_cflags    += $(addprefix -D, $(Basic_debug_defines))
Basic_debug_common_cflags    += $(addprefix -I, $(Basic_debug_hpaths))
Basic_debug_common_cflags  += -m64
Basic_debug_common_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -malign-double
Basic_debug_common_cflags  += -m64 -pthread
Basic_debug_common_cflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer
Basic_debug_cflags	:= $(Basic_debug_common_cflags)
Basic_debug_cppflags	:= $(Basic_debug_common_cflags)
Basic_debug_cppflags  += -Wno-reorder -std=c++11
Basic_debug_lflags    := $(Basic_custom_lflags)
Basic_debug_lflags    += $(addprefix -L, $(Basic_debug_lpaths))
Basic_debug_lflags    += -Wl,--start-group $(addprefix -l, $(Basic_debug_libraries)) -Wl,--end-group
Basic_debug_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs
Basic_debug_lflags  += -m64 -pthread
Basic_debug_lflags  += -m64
Basic_debug_objsdir  = $(OBJS_DIR)/Basic_debug
Basic_debug_cpp_o    = $(addprefix $(Basic_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(Basic_cppfiles)))))
Basic_debug_cc_o    = $(addprefix $(Basic_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(Basic_ccfiles)))))
Basic_debug_c_o      = $(addprefix $(Basic_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(Basic_cfiles)))))
Basic_debug_obj      =  $(Basic_debug_cpp_o) $(Basic_debug_cc_o) $(Basic_debug_c_o) 
Basic_debug_bin      := ./../../bin/linux64/BasicD

clean_Basic_debug: 
	@$(ECHO) clean Basic debug
	@$(RMDIR) $(Basic_debug_objsdir)
	@$(RMDIR) $(Basic_debug_bin)
	@$(RMDIR) $(DEPSDIR)/Basic/debug

build_Basic_debug: postbuild_Basic_debug
postbuild_Basic_debug: mainbuild_Basic_debug
mainbuild_Basic_debug: prebuild_Basic_debug $(Basic_debug_bin)
prebuild_Basic_debug:

$(Basic_debug_bin): $(Basic_debug_obj) build_NsFoundation_debug build_NvAppBase_debug build_NvAssetLoader_debug build_NvModel_debug build_NvGLUtils_debug build_NvGamepad_debug build_NvImage_debug build_NvUI_debug build_Half_debug 
	mkdir -p `dirname ./../../bin/linux64/BasicD`
	$(CCLD) $(filter %.o, $(Basic_debug_obj)) $(Basic_debug_lflags) -o $(Basic_debug_bin) 
	$(ECHO) building $@ complete!

Basic_debug_DEPDIR = $(dir $(@))/$(*F)
$(Basic_debug_cpp_o): $(Basic_debug_objsdir)/%.o:
	$(ECHO) Basic: compiling debug $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Basic_debug_objsdir),, $@))), $(Basic_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(Basic_debug_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Basic_debug_objsdir),, $@))), $(Basic_cppfiles)) -o $@
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/Basic/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Basic_debug_objsdir),, $@))), $(Basic_cppfiles))))))
	cp $(Basic_debug_DEPDIR).d $(addprefix $(DEPSDIR)/Basic/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Basic_debug_objsdir),, $@))), $(Basic_cppfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Basic_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/Basic/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Basic_debug_objsdir),, $@))), $(Basic_cppfiles))))).P; \
	  rm -f $(Basic_debug_DEPDIR).d

$(Basic_debug_cc_o): $(Basic_debug_objsdir)/%.o:
	$(ECHO) Basic: compiling debug $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Basic_debug_objsdir),, $@))), $(Basic_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(Basic_debug_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Basic_debug_objsdir),, $@))), $(Basic_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Basic_debug_objsdir),, $@))), $(Basic_ccfiles))))))
	cp $(Basic_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Basic_debug_objsdir),, $@))), $(Basic_ccfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Basic_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Basic_debug_objsdir),, $@))), $(Basic_ccfiles))))).debug.P; \
	  rm -f $(Basic_debug_DEPDIR).d

$(Basic_debug_c_o): $(Basic_debug_objsdir)/%.o:
	$(ECHO) Basic: compiling debug $(filter %$(strip $(subst .c.o,.c, $(subst $(Basic_debug_objsdir),, $@))), $(Basic_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(Basic_debug_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(Basic_debug_objsdir),, $@))), $(Basic_cfiles)) -o $@ 
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/Basic/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Basic_debug_objsdir),, $@))), $(Basic_cfiles))))))
	cp $(Basic_debug_DEPDIR).d $(addprefix $(DEPSDIR)/Basic/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Basic_debug_objsdir),, $@))), $(Basic_cfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Basic_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/Basic/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Basic_debug_objsdir),, $@))), $(Basic_cfiles))))).P; \
	  rm -f $(Basic_debug_DEPDIR).d

Basic_release_hpaths    := 
Basic_release_hpaths    += ./../../tutorial/Basic
Basic_release_hpaths    += ./../../../extensions/include
Basic_release_hpaths    += ./../../../extensions/include/NsFoundation
Basic_release_hpaths    += ./../../../extensions/include/NvFoundation
Basic_release_hpaths    += ./../../../extensions/externals/include
Basic_release_hpaths    += ./../../../extensions/externals/include/GLFW
Basic_release_lpaths    := 
Basic_release_lpaths    += ./../../../extensions/lib/linux64
Basic_release_lpaths    += ./../../../extensions/externals/lib/linux64
Basic_release_defines   := $(Basic_custom_defines)
Basic_release_defines   += LINUX=1
Basic_release_defines   += NV_LINUX
Basic_release_defines   += GW_APP_NAME=\"Basic\"
Basic_release_defines   += NDEBUG
Basic_release_libraries := 
Basic_release_libraries += NsFoundation
Basic_release_libraries += NvAppBase
Basic_release_libraries += NvAssetLoader
Basic_release_libraries += NvModel
Basic_release_libraries += NvGLUtils
Basic_release_libraries += NvGamepad
Basic_release_libraries += NvImage
Basic_release_libraries += NvUI
Basic_release_libraries += Half
Basic_release_libraries += glfw3
Basic_release_libraries += GLEW
Basic_release_libraries += GL
Basic_release_libraries += X11
Basic_release_libraries += Xrandr
Basic_release_libraries += Xxf86vm
Basic_release_libraries += Xi
Basic_release_libraries += Xinerama
Basic_release_libraries += Xcursor
Basic_release_libraries += dl
Basic_release_common_cflags	:= $(Basic_custom_cflags)
Basic_release_common_cflags    += -MMD
Basic_release_common_cflags    += $(addprefix -D, $(Basic_release_defines))
Basic_release_common_cflags    += $(addprefix -I, $(Basic_release_hpaths))
Basic_release_common_cflags  += -m64
Basic_release_common_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -malign-double
Basic_release_common_cflags  += -m64 -pthread
Basic_release_common_cflags  += -funwind-tables -O2 -fno-omit-frame-pointer
Basic_release_cflags	:= $(Basic_release_common_cflags)
Basic_release_cppflags	:= $(Basic_release_common_cflags)
Basic_release_cppflags  += -Wno-reorder -std=c++11
Basic_release_lflags    := $(Basic_custom_lflags)
Basic_release_lflags    += $(addprefix -L, $(Basic_release_lpaths))
Basic_release_lflags    += -Wl,--start-group $(addprefix -l, $(Basic_release_libraries)) -Wl,--end-group
Basic_release_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs
Basic_release_lflags  += -m64 -pthread
Basic_release_lflags  += -m64
Basic_release_objsdir  = $(OBJS_DIR)/Basic_release
Basic_release_cpp_o    = $(addprefix $(Basic_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(Basic_cppfiles)))))
Basic_release_cc_o    = $(addprefix $(Basic_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(Basic_ccfiles)))))
Basic_release_c_o      = $(addprefix $(Basic_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(Basic_cfiles)))))
Basic_release_obj      =  $(Basic_release_cpp_o) $(Basic_release_cc_o) $(Basic_release_c_o) 
Basic_release_bin      := ./../../bin/linux64/Basic

clean_Basic_release: 
	@$(ECHO) clean Basic release
	@$(RMDIR) $(Basic_release_objsdir)
	@$(RMDIR) $(Basic_release_bin)
	@$(RMDIR) $(DEPSDIR)/Basic/release

build_Basic_release: postbuild_Basic_release
postbuild_Basic_release: mainbuild_Basic_release
mainbuild_Basic_release: prebuild_Basic_release $(Basic_release_bin)
prebuild_Basic_release:

$(Basic_release_bin): $(Basic_release_obj) build_NsFoundation_release build_NvAppBase_release build_NvAssetLoader_release build_NvModel_release build_NvGLUtils_release build_NvGamepad_release build_NvImage_release build_NvUI_release build_Half_release 
	mkdir -p `dirname ./../../bin/linux64/Basic`
	$(CCLD) $(filter %.o, $(Basic_release_obj)) $(Basic_release_lflags) -o $(Basic_release_bin) 
	$(ECHO) building $@ complete!

Basic_release_DEPDIR = $(dir $(@))/$(*F)
$(Basic_release_cpp_o): $(Basic_release_objsdir)/%.o:
	$(ECHO) Basic: compiling release $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Basic_release_objsdir),, $@))), $(Basic_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(Basic_release_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Basic_release_objsdir),, $@))), $(Basic_cppfiles)) -o $@
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/Basic/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Basic_release_objsdir),, $@))), $(Basic_cppfiles))))))
	cp $(Basic_release_DEPDIR).d $(addprefix $(DEPSDIR)/Basic/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Basic_release_objsdir),, $@))), $(Basic_cppfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Basic_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/Basic/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Basic_release_objsdir),, $@))), $(Basic_cppfiles))))).P; \
	  rm -f $(Basic_release_DEPDIR).d

$(Basic_release_cc_o): $(Basic_release_objsdir)/%.o:
	$(ECHO) Basic: compiling release $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Basic_release_objsdir),, $@))), $(Basic_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(Basic_release_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Basic_release_objsdir),, $@))), $(Basic_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Basic_release_objsdir),, $@))), $(Basic_ccfiles))))))
	cp $(Basic_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Basic_release_objsdir),, $@))), $(Basic_ccfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Basic_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Basic_release_objsdir),, $@))), $(Basic_ccfiles))))).release.P; \
	  rm -f $(Basic_release_DEPDIR).d

$(Basic_release_c_o): $(Basic_release_objsdir)/%.o:
	$(ECHO) Basic: compiling release $(filter %$(strip $(subst .c.o,.c, $(subst $(Basic_release_objsdir),, $@))), $(Basic_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(Basic_release_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(Basic_release_objsdir),, $@))), $(Basic_cfiles)) -o $@ 
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/Basic/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Basic_release_objsdir),, $@))), $(Basic_cfiles))))))
	cp $(Basic_release_DEPDIR).d $(addprefix $(DEPSDIR)/Basic/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Basic_release_objsdir),, $@))), $(Basic_cfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Basic_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/Basic/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Basic_release_objsdir),, $@))), $(Basic_cfiles))))).P; \
	  rm -f $(Basic_release_DEPDIR).d

clean_Basic:  clean_Basic_debug clean_Basic_release
	rm -rf $(DEPSDIR)

export VERBOSE
ifndef VERBOSE
.SILENT:
endif
