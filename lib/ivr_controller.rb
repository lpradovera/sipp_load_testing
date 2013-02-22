# encoding: utf-8

class IvrController < Adhearsion::CallController

  attr_accessor :number, :attempt

  def run
    answer
    input1 = ask "hello-world", limit: 1
    logger.info "INPUT1 WAS #{input1}"
    input2 = ask "tt-weasels", limit: 4
    logger.info "INPUT2 WAS #{input2}"
    play "hello-world"
    hangup
  end
end
