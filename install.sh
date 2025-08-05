#!/bin/bash

# Update system
sudo apt update && sudo apt upgrade -y

# Install dependencies
sudo apt install -y git build-essential curl wget unzip tmux

# Install Rust (stable)
curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env

# Clone Espresso zkVM node repo
git clone https://github.com/EspressoSystems/espresso-sequencer.git
cd espresso-sequencer

# Build the project
cargo build --release

echo "✅ Espresso zkVM node install complete!"
