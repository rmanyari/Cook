#!/bin/bash
set -ev

echo "Printing out all executor logs..."
while read path; do
    echo "Contents of ${path}";
    cat "${path}";
    echo "------------------------------------"
done <<< "$(find $PROJECT_DIR/../travis/.minimesos -name 'stdout' -o -name 'stderr' -o -name 'executor.log')"

while read path; do
    echo "Contents of ${path}"
    cat "${path}";
    echo "------------------------------------"
done <<< "$(find $PROJECT_DIR/../scheduler/log -name 'cook*.log')"
