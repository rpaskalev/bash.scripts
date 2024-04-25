#!/bin/bash

aws s3 mb s3://bucket-mike-s3bucket-5.yaml

sleep 30

aws s3 rb s3://bucket-mike-s3bucket-5.yaml