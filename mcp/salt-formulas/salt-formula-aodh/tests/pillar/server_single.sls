aodh:
  server:
    region: RegionOne
    enabled: true
    version: mitaka
    cluster: true
    ttl: 86400
    event_alarm_topic: alarm.all
    bind:
      host: 127.0.0.1
      port: 8042
    identity:
      engine: keystone
      host: 127.0.0.1
      port: 35357
      tenant: service
      user: ceilometer
      password: password
      endpoint_type: internalURL
    logging:
      log_appender: false
      log_handlers:
        watchedfile:
          enabled: true
        fluentd:
          enabled: false
    message_queue:
      engine: rabbitmq
      host: 127.0.0.1
      port: 5672
      user: openstack
      password: password
      virtual_host: '/openstack'
    database:
      engine: mysql
      host: 127.0.0.1
      port: 3306
      name: aodh
      user: aodh
      password: test
    notifications:
      store_events: default
    configmap:
      DEFAULT:
        rest_notifier_max_retries: 0
        notifier_topic: alarming
      api:
        user_alarm_quota: 10
        project_alarm_quota: 10
        alarm_max_actions: -1
apache:
  server:
    enabled: true
    default_mpm: event
    mpm:
      prefork:
        enabled: true
        servers:
          start: 5
          spare:
            min: 2
            max: 10
        max_requests: 0
        max_clients: 20
        limit: 20
