#!/bin/sh
rm -f target/flash.bin
cargo build --release
cargo objcopy --release -- -O binary target/flash.bin
./stm32CubeProg.sh 2 target/flash.bin -g

