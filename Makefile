all: inject.dylib

inject.dylib: inject.c
	clang -dynamiclib inject.c -o inject.dylib -framework coregraphics -framework corefoundation
