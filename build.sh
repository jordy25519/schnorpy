#!/bin/sh

cargo build --release
MODULE_NAME="schnorpy.so"

if [[ "$OSTYPE" == "darwin"* ]]; then
  mv target/release/libschnorpy.dylib ./$MODULE_NAME
else [[ "$OSTYPE" == "linux-gnu"* ]];
  mv target/release/libschnorpy.so ./$MODULE_NAME
fi
