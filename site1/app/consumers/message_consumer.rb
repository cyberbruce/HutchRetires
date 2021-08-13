class MessageConsumer
  include Hutch::Consumer
  consume 'bruce.messages'
 
  $counter = 0
 
  #arguments 'x-dead-letter-exchange' => 'DLX'
   

  def process(message)      
    $counter +=1
    logger.info "Processing message:  --> #{message[:stuff]}"
    logger.info "Try ##{$counter}"
    
    raise RequeueErrorAckowledgement::RetryInOrder 
    
  end
end 