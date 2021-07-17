#!/bin/bash
cmus-remote -C clear
cmus-remote -C "add /run/media/storage/Music"
cmus-remote -C "update-cache -f"
