#!/bin/bash

VAR1=5
VAR2=7

echo $VAR1

function FUN()

{
echo "before changing"
echo $VAR1 
echo $VAR2

local VAR1=10 VAR2=20

echo "after change"
echo $VAR1
echo $VAR2
}


FUN

echo $VAR1
echo $VAR2


