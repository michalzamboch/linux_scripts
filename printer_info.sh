#!/bin/bash

sudo lpinfo -l -v |  perl -ne 'print if /^Device: uri = socket:/ .. /info/'
