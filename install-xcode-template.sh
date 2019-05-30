#!/usr/bin/env sh

# Configuration
mkdir ~/Library/Developer/Xcode/Templates/File Templates/MVVM
XCODE_TEMPLATE_DIR=$HOME'/Library/Developer/Xcode/Templates/File Templates/MVVM'
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Copy MVVM file templates into the local MVVM template directory
xcodeTemplate () {
  echo "==> Copying up MVVM Xcode file templates..."

  if [ -d "$XCODE_TEMPLATE_DIR" ]; then
    rm -R "$XCODE_TEMPLATE_DIR"
  fi
  mkdir -p "$XCODE_TEMPLATE_DIR"

  cp -R $SCRIPT_DIR/*.xctemplate "$XCODE_TEMPLATE_DIR"
  cp -R $SCRIPT_DIR/MVVM.xctemplate/ownsView/* "$XCODE_TEMPLATE_DIR/MVVM.xctemplate/ownsViewwithXIB/"
  cp -R $SCRIPT_DIR/MVVM.xctemplate/ownsView/* "$XCODE_TEMPLATE_DIR/MVVM.xctemplate/ownsViewwithStoryboard/"
}

xcodeTemplate

echo "==> ... success!"
echo "==> MVVM have been set up. In Xcode, select 'New File...' to use MVVM templates."
