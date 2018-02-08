#!/bin/bash

pushd BCN3D_Cura.app/Contents/MacOS

dirs=`find . -type d -depth 1`

for dir in $dirs; do
    filename="$(basename "${dir}")"
    mv "${dir}" "../Resources/"
    ln -s "../Resources/${filename}" .
done

popd
