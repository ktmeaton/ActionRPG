#!/bin/bash

INFILE=$1

grep -r '[0-9]\. ' $INFILE
