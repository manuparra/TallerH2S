# Workshop Material for HDFS, Hadoop and Spark

## How to connect

From linux/MacOs machines: 

```
ssh <your account>@hadoop.ugr.es
```
From Windows machine:

```Use Putty/SSH ```  Download link: https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html

- Host: ``hadoop.ugr.es``
- Port: ``22``
- Click "Open" -> Write your login credentials and password.

## What is Hadoop.ugr.es

Hadoop.ugr.es is a computing infrastructure or cluster with 15 nodes and a header node containing the data processing platforms Hadoop and Spark and their libraries for Data Mining and Machine Learning (Mahout and MLLib). It also has HDFS installed for working with distributed data. 

## Working with HDFS



cp /tmp/lorem.txt /home/mp<DNI>/lorem.txt
hdfs dfs -put lorem.txt /user/mp2019/mp<DNI>/
hdfs dfs -put /home/mp<DNI>/lorem.txt /user/mp2019/mp<DNI>/

hdfs dfs -ls /user/mp2019/mp<DNI>/lorem.txt
cat lorem.txt
hdfs dfs -cat /user/mp2019/mp<DNI>/lorem.txt













