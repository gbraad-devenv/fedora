#!/bin/bash

# Doing this in a separate script lets us do it step by step while using a
# single docker layer.

# Installation script
curl -sSL https://raw.githubusercontent.com/gbraad/devenv/master/scripts/install.sh -o /tmp/install.sh
bash /tmp/install.sh
