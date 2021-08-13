

 
#Hutch::Config.set(:mq_exchange, 'BRUCE')
  
Hutch::Config.set(:mq_host, 'rabbit')
Hutch::Config.set(:mq_api_host, 'rabbit')
#Hutch::Config.set(:consumer_pool_size, 1)
Hutch::Config.set(:force_publisher_confirms, true)
Hutch::Config.set(:error_acknowledgements, [RequeueErrorAckowledgement.new])

 