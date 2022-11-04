#!/bin/sh
rustup target install thumbv7em-none-eabihf

openocd -f interface/stlink.cfg -f target/stm32f4x.cfg&
cargo run
killall openocd

