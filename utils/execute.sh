#!/bin/bash

while true; do
    while read -r order; do
        jv_handle_order "$order" true
    done < $jv_execute_queue
    sleep 1 # delay between piped orders
done
