# Workshop Material for HDFS, Hadoop and Spark

## How to connect

From linux/MacOs machines: 

```
ssh <your account>@hadoop.ugr.es
```
From Windows machine:

```Use Putty/SSH ``` 

Download link: https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html

- Host: ``hadoop.ugr.es``
- Port: ``22``
- Click "Open" -> Write your login credentials and password.

## What is hadoop.ugr.es

Hadoop.ugr.es is a computing infrastructure or cluster with 15 nodes and a header node containing the data processing platforms Hadoop and Spark and their libraries for Data Mining and Machine Learning (Mahout and MLLib). It also has HDFS installed for working with distributed data. 

## Working with HDFS

### HDFS basics

The management of the files in HDFS works in a different way of the files of the local system. The file system is stored in a special space for HDFS. The directory structure of HDFS is as follows:

```
/tmp     Temp storage
/user    User storage
/usr     Application storage
/var     Logs storage
```

### HDFS storage space

Each user has in HDFS a folder in ``/user/mp2019/`` with the username, for example for the user with login mcc50600265 in HDFS have:

```
/user/mp2019/mpXXXXXX/
```

!! The HDFS storage space is different from the user's local storage space in hadoop.ugr.es

```
/user/mp2019/mpXXXXXX/  NOT EQUAL /home/mcc506000265/
```

### Usage HDFS

```
hdfs dfs <options>
```

or 


```
hadoop fs <options>
```

Check the following command to see all options:

```
hdfs dfs -help
```

Options are (simplified):

```
-ls         List of files 
-cp         Copy files
-rm         Delete files
-rmdir      Remove folder
-mv         Move files or rename
-cat        Similar to Cat
-mkdir      Create a folder
-tail       Last lines of the file
-get        Get a file from HDFS to local
-put        Put a file from local to HDFS
```



List the content of your HDFS folder:

```
hdfs dfs -ls /user/mp2019/mpXXXXXX/

```

Create a test file:

```
echo “HOLA HDFS” > fichero.txt
```

Move the local file ``fichero.txt`` to HDFS:

```
hdfs dfs -put fichero.txt /user/mp2019/mpXXXXXX/

```

or, the same:

```
hdfs dfs -put fichero.txt /user/mp2019/mpXXXXXX/
```

List again your folder:

```
hdfs dfs -ls /user/mp2019/mpXXXXXX/

```

Create a folder:

```
hdfs dfs -mkdir /user/mp2019/mpXXXXXX/test
```

Move ``fichero.txt`` to test folder:

```
hdfs dfs -mv fichero.txt /user/mp2019/mpXXXXXX/test
```

Show the content:

```
hdfs dfs -cat /user/mp2019/mpXXXXXX/test/fichero.txt
```

or, the same:

```
hdfs dfs -cat /user/mp2019/mpXXXXXX/test/fichero.txt
```

Delete file and folder:

```
hdfs dfs -rm /user/mp2019/mpXXXXXX/test/fichero.txt
```

and 

```
hdfs dfs -rmdir /user/mp2019/mpXXXXXX/test
```

Create two files:

```
echo “HOLA HDFS 1” > f1.txt
```

```
echo “HOLA HDFS 2” > f2.txt
```

Store in HDFS:

```
hdfs dfs -put /user/mp2019/mpXXXXXX/f1.txt
```

```
hdfs dfs -put /user/mp2019/mpXXXXXX/f2.txt
```

Cocatenate both files (this option is very usefull, because you will need merge the results of the Hadoop Algorithms  execution):

```
hdfs dfs -getmerge /user/mp2019/mpXXXXXX/ merged.txt
```

Delete folder recursively:

```
hdfs dfs -rmr
```



## Exercice

- Create 5 files in yout local account with the following names:
  - part1.dat ,part2.dat, part3.dat. part4.dat. part5.dat 
- Copy files to HDFS
- Create the following HDFS folder structure:
  - /test/p1/
  - /train/p1/
  - /train/p2/ 
- Copy part1 in /test/p1/ and part2 in /train/p2/ 
- Move part3, and part4 to /train/p1/
- Finally merge folder /train/p2 and store as data_merged.txt



## Working with Hadoop Map-Reduce



# References:

- http://www.glennklockwood.com/data-intensive/hadoop/overview.html



cp /tmp/lorem.txt /home/mp<DNI>/lorem.txt
hdfs dfs -put lorem.txt /user/mp2019/mp<DNI>/
hdfs dfs -put /home/mp<DNI>/lorem.txt /user/mp2019/mp<DNI>/

hdfs dfs -ls /user/mp2019/mp<DNI>/lorem.txt
cat lorem.txt
hdfs dfs -cat /user/mp2019/mp<DNI>/lorem.txt













