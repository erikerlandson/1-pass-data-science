#!/bin/bash

set -x
set -e

# Aim at spark distro
export SPARK_HOME=/home/eje/spark/spark-2.2.0-bin-hadoop2.7

# Persuade pyspark to run a jupyter notebook as its application
export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS=notebook

# Invoke pyspark with access to the isarn-sketches-spark package
$SPARK_HOME/bin/pyspark \
    --packages 'org.isarnproject:isarn-sketches-spark_2.11:0.3.0-sp2.2-py2.7'
