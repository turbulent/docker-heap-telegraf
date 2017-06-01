#!/bin/bash

/systpl/systpl.jinja.py /systpl/telegraf.conf.tmpl > /etc/telegraf/telegraf.conf

exec telegraf --config /etc/telegraf/telegraf.conf
