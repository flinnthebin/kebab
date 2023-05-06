#!/bin/bash

# TEST 1 - Backup Creation

mkdir TEST
./kebab TEST
if [ -e TEST_backup.tar.gz ]; then
  echo -e "\033[32mPASSED\033[0m"
else
  echo -e "\033[31mFAILED\033[0m"
fi
