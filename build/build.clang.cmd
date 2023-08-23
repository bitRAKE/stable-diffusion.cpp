@echo OFF
pushd "%~dp0.."
clang.exe -march=native -ffast-math -O3 -fno-exceptions -flto -I. -Iggml/include/ggml -Iggml/include examples/main.cpp stable-diffusion.cpp ggml/src/ggml.c -fuse-ld=lld -o build/sd.clang.exe
popd
