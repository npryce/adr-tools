#!/bin/sh
set -e
touch tests/$1.{sh,expected}
${VISUAL:-${EDITOR:-true}} tests/$1.{sh,expected}
echo tests/$1.{sh,expected}
