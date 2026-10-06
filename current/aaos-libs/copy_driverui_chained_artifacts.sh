#!/bin/bash
set -e # Exit on error

echo "ls"
ls .
echo ""

echo "ls ./out"
ls ./out
echo ""

echo "ls ./out/prebuilt_cached"
ls ./out/prebuilt_cached
echo ""

echo "ls ./out/prebuilt_cached/artifacts"
ls ./out/prebuilt_cached/artifacts
echo ""

echo "ls ./out/prebuilt_cached/artifacts/car_apps_gradle"
ls ./out/prebuilt_cached/artifacts/car_apps_gradle
echo ""

SOURCE_FILE="out/prebuilt_cached/artifacts/car_apps_gradle/DriverUI.apk"
DEST_FILE="vendor/auto/embedded/prebuilts/DriverUI/DriverUI.apk"
if [ ! -f "$SOURCE_FILE" ]; then
    echo "WARNING: Prebuilt artifact from car_apps_gradle chained build not found. Failed to replace apk for DriverUIPrebuilt." >&2
fi
cp -v "$SOURCE_FILE" "$DEST_FILE"
echo ""
