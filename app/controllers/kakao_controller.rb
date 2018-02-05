class KakaoController < ApplicationController
  def keyboard
   @keyboard = {:type => "buttons", buttons: ["선택 1", "선택 2", "선택 3"]}
    render json: @keyboard
  end

  def message
  end    
end
