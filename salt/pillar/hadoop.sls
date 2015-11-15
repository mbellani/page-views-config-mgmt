hadoop:
  version: apache-2.5.2
  targeting_method: grain
  users:
    hadoop: 6000
    hdfs: 6001
    mapred: 6002
    yarn: 6003
  config:
    directory: /etc/hadoop/conf
    core-site:
      io.native.lib.available:
        value: true
      io.file.buffer.size:
        value: 65536
      fs.trash.interval:
        value: 60

hdfs:
  namenode_target: "roles:hadoop_master"
  datanode_target: "roles:hadoop_slave" # Specify compound matching string to match all your datanodes e.g. if you were to use pillar I@datanode:true
  config:
    namenode_port: 8020
    namenode_http_port: 50070
    secondarynamenode_http_port: 50090
    # the number of hdfs replicas is normally auto-configured for you in hdfs.settings
    # according to the number of available datanodes
    # replication: 1
    hdfs-site:
      dfs.permission:
        value: false
      dfs.durable.sync:
        value: true
      dfs.datanode.synconclose:
        value: true