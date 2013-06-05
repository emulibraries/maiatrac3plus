#ifdef _WIN32

#include "stdafx.h"

#endif

#include "maiatrac3plus.h"


#include "include/MaiAT3PlusFrameDecoder.h"

extern "C" void* Atrac3plusDecoder_openContext()
{
	return new MaiAT3PlusFrameDecoder;
}

extern "C" int Atrac3plusDecoder_closeContext(void* context)
{
	MaiAT3PlusFrameDecoder *frame_decoder =(MaiAT3PlusFrameDecoder*)context;
	if (frame_decoder)
		delete frame_decoder;
	return 0;
}

extern "C" int Atrac3plusDecoder_decodeFrame(void* context, void* inbuf, int inbytes, int* channels, void** outbuf)
{
	MaiAT3PlusFrameDecoder *frame_decoder = (MaiAT3PlusFrameDecoder*)context;
	return frame_decoder->decodeFrame((Mai_I8*)inbuf, inbytes, channels, (Mai_I16**)outbuf);
}