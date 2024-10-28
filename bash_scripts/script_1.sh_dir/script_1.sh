#!/bin/bash

echo "Три найбільші директорії в порядку зростання розміру:"
du -sh */ 2>/dev/null | sort -rh | head -n 3
