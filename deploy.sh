#!/bin/bash

reset
quarto render .
git add docs && git commit -m "docs commit"
git push origin main:main
