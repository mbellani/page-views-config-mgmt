zookeeper:
    source_url: 'http://www.us.apache.org/dist/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz'
    version: 3.4.6
    prefix: /usr/lib
    uid: 6030
    targeting_method: grain # [compound, glob] also supported
    node_count: 1
    config:
      data_dir: /var/lib/zookeeper/data
      port: 2181
      jmx_port: 2183
      snap_count: None
      snap_retain_count: 3
      purge_interval: None
      max_client_cnxns: None
      max_perm_size: 128
      max_heap_size: 1024
      initial_heap_size: 256
      jvm_opts: None
      log_level: INFO

mine_functions:
  network.interfaces: []
  test.ping: []