#!/bin/bash

mkdir -p ./test_data

while read folder; do
    if [ -d "./all_data/$folder" ]; then
        mv "./all_data/$folder" ./test_data/
    else
        echo "Папка не найдена: $folder"
    fi
done < test_ids.txt
