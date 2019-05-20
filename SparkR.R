if (nchar(Sys.getenv("SPARK_HOME")) < 1) {
  Sys.setenv(SPARK_HOME = "/opt/spark-2.2.0/")
}

library(SparkR, lib.loc = c(file.path(Sys.getenv("SPARK_HOME"), "R", "lib")))

sparkR.session(master = "local[*]", sparkConfig = list(
	spark.driver.memory = "1g"),enableHiveSupport=FALSE)




sparkR.session()

sparkR.session.stop()

myfile <- read.df("hdfs://localhost:9000/user/mp2019/5000_ECBDL14_10tst.data", source="csv")

