base:

  # everyone is cursed with java
  '*':
    - sun-java
    - sun-java.env

  # zookeeper machines    
  'roles:zookeeper':
    - match: grain
    - zookeeper.server

  # storm machines
  'roles:storm-nimbus':
    - match: grain
    - storm.nimbus

  # storm supervisors
  'roles:storm-supervisor':
    - match: grain
    - storm.supervisor

  #hadoop machines 
  'roles:hadoop*':
    - match: grain
    - hostsfile
    - hostsfile.hostname
    - hadoop
    - hadoop.hdfs  
