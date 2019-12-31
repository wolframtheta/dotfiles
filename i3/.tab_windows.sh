#!/bin/bash

id=`python ~/.id_list.py`
i3-msg [id="$id"] focus > /dev/null
