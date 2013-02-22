# encoding: utf-8

class ActController < Adhearsion::CallController

  attr_accessor :number, :attempt

  def run
    @input_counter = 0
    answer
    #5443030000000994 1472  0123456789  0123456789  0 23104.37  1234567.89  12/1/2050 99944.00
    get_input 1  #1 to continue to acct
    get_input 16 #5443030000000994 acct number
    get_input 4  #1472 social
    get_input 1  #9 to choose to end call
    hangup
  end

  def get_input(limit=1)
    input = ask "Simple Input", limit: limit
    @input_counter += 1
    logger.info "INPUT#{@input_counter} WAS #{input1}"
  end

end
