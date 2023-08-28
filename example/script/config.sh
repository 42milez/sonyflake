#!/usr/bin/env bash
set -eu

readonly TAG=$(cat < go.mod | grep -E 'github.com/sony/sonyflake\sv[0-9.]+' | grep -Eo '(\d+\.)?(\d+\.)?(\*|\d+)$')
