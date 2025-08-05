#!/bin/bash

# Masuk ke direktori proyek
cd $HOME/espresso-sequencer

# Jalankan node
./target/release/espresso-sequencer run --chain testnet

echo "🚀 Node is running..."
