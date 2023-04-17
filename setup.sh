#!/bin/bash

yarn install

cd node_modules/@nomicfoundation/
for package in ./*
do
  if [[ ${package} == ./ethereumjs* ]]
  then
    rm -rf ${package}
    ln -s ~/.config/yarn/link/@nomicfoundation/${package} ./${package}
  fi
done
