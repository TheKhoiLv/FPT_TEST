FROM ubuntu:latest

# Cài đặt Java
RUN apt-get update && apt-get install -y curl unzip

# Tải xuống và cài đặt Apache Spark 3.3.3
RUN apt-get update && apt-get install -y python3 python3-pip openjdk-11-jre

RUN pip3 install pyspark

# Cài đặt AWS CLI (phiên bản 2)
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install
    