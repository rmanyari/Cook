#!/bin/bash
set -ev

echo "what logs are there"
ls $PROJECT_DIR/../scheduler/log
echo "Printing out all executor logs..."
while read path; do
    echo "Contents of ${path}";
    cat "${path}";
    echo "------------------------------------"
done <<< "$(find $PROJECT_DIR/../travis/.minimesos -name 'stdout' -o -name 'stderr' -o -name 'executor.log')"

echo "what logs are there"

while read path; do
    echo "Contents of ${path}"
    cat "${path}";
    echo "------------------------------------"
done <<< "$(find $PROJECT_DIR/../scheduler/log -name 'cook*.log')"
