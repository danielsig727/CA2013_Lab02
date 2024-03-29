#!/bin/bash
PATH+=:/opt/m2s42/bin
m2s \
--x86-config ${CONFIG_NAME}/cpu-config --x86-sim detailed \
--net-config ${CONFIG_NAME}/net-config \
--mem-config ${CONFIG_NAME}/mem-config \
--x86-report ${REPORT_NAME}/cpu-report \
--net-report ${REPORT_NAME}/net-report \
--mem-report ${REPORT_NAME}/mem-report \
--trace ${REPORT_NAME}/trace.gz \
./HelloWorld
