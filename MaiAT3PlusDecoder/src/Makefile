outdir=../output

so_name=libat3plusdecoder.so
target=$(outdir)/$(so_name)

objs=$(outdir)/Heap_Alloc0.o \
	$(outdir)/MaiFile.o \
	$(outdir)/MaiBufIO.o \
	$(outdir)/Mai_Sleep.o \
	$(outdir)/MaiThread.o \
	$(outdir)/MaiCriticalSection.o \
	$(outdir)/MaiString.o \
	$(outdir)/Unicode.o \
	$(outdir)/Mai_mem.o \
	$(outdir)/MaiQueue0.o \
	$(outdir)/MaiBitReader.o \
	$(outdir)/MaiAT3PlusCoreDecoder.o \
	$(outdir)/MaiAT3PlusCoreDecoder_DecFunc.o \
	$(outdir)/MaiAT3PlusCoreDecoder_StaticData.o \
	$(outdir)/MaiAT3PlusCoreDecoder_SubFunc.o \
	$(outdir)/MaiAT3PlusFrameDecoder.o \
	$(outdir)/maiatrac3plus.o

Mai_CXX_O=g++ -O2 -c "-I../include" -fno-exceptions -fno-rtti -fPIC
Mai_CXX_SO=g++ -shared -Wl,-soname,$(so_name)

Mai_RM_O=rm -f

all : $(target)

$(target) : $(objs)
	$(Mai_RM_O) $(target)
	$(Mai_CXX_SO) -o $(target) $(objs)

$(outdir)/%.o : %.cpp
	$(Mai_CXX_O) -o $@ $<
$(outdir)/%.o : ../%.cpp
	$(Mai_CXX_O) -o $@ $<
$(outdir)/%.o : base/%.cc
	$(Mai_CXX_O) -o $@ $<

clean :
	$(Mai_RM_O) $(objs)
