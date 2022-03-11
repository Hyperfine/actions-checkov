#!/bin/sh -l

pip install -r requirements.txt
checkov -d $1
