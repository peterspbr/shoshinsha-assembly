#!/usr/bin/env bash

nasm -f elf64 -o $1.o $1.asm && \
    ld $1.o -o $1

rm $1.o