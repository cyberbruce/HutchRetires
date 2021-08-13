class RequeueErrorAckowledgement < Hutch::Acknowledgements::Base

  class RetryInOrder < StandardError

  end

  def handle(delivery_info, properties, broker, ex)        
    return unless ex.is_a?(RequeueErrorAckowledgement::RetryInOrder)
    #return false if delivery_info.delivery_tag > 10
    ap delivery_info.delivery_tag
    ap delivery_info
    ap ex 
    puts 'handling requeue!'
    sleep 1
    broker.requeue(delivery_info.delivery_tag)    
    true
  end

end