#!/bin/sh

# This script is competitive helper to easily initiate a new file

template_dir=$HOME/scripts/assets/templates

current_dir=$PWD

filename=$1

create() {

    if [ -z "$filename" ]
    then
        echo "Please provide filename as input..."
        return
    fi
    cp $template_dir/template.cpp $current_dir/$filename
}
create
