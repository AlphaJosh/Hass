#!/bin/bash
URL=$1
pip install catt
catt -d TV cast "$URL"