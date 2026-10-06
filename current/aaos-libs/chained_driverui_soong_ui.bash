#!/bin/bash
set -e

# Run script to copy chained artifacts to source tree before building
# Chained artifacts are not available in ABTD custom builds,
# so ignore errors and proceed with build
prebuilts/sdk/current/aaos-libs/copy_driverui_chained_artifacts.sh || true

# Run soong_ui.bash, forward all args
build/soong/soong_ui.bash "$@"
