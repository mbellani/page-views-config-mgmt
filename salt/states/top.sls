base:
  '*':
    - base.sanity
  'roles:zookeeper':
    - match: grain
    - zookeeper.server
  'roles:storm-nimbus':
    - match: grain
    - storm.nimbus
  'roles:storm-supervisor':
    - match: grain
    - storm.supervisor