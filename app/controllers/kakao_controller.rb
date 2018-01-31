class KakaoController < ApplicationController
  def keyboard
    keyboard = {type: "buttons", buttons: ["가슴", "어깨", "등", "팔", "하체"]}
    render json: keyboard
  end

  def message
    home_keyboard = { type: "buttons", buttons: ["처음으로"]}
    basic_keyboard = { type: "buttons", buttons: ["가슴", "어깨", "등", "팔", "하체"]}
    user_message = params[:content]
  
   if user_message == "가슴"
     keyboard = {type: "buttons", buttons: ["벤치프레스", "인클라인프레스", "케이블크로스오버", "푸쉬업", "처음으로"]}
      if user_message == "벤치프레스"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "인클라인프레스"
        url = "https://youtu.be/09kkHji5NMs"
        return_url = url
      elsif user_message == "케이블크로스오버"
        url = "https://youtu.be/N5PCCuxBWzw"
        return_url = url
      elsif user_message == "푸쉬업"
      url = "https://youtu.be/Nsu_xA02ieU"
      return_url = url
      elsif user_message == "처음으로"
      keyboard = basic_keyboard
    end
   elsif user_message == "어깨"
     keyboard = {type: "buttons", buttons: ["덤벨숄더프레스", "사이드레터럴레이즈", "벤트오버레이즈", "업라이트로우", "처음으로"]}
      if user_message == "덤벨숄더프레스"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "사이드레터럴레이즈"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "벤트오버레이즈"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "업라이트로우"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "처음으로"
      keyboard = basic_keyboard
      end
   elsif user_message =="등"
     keyboard = {type: "buttons", buttons: ["풀업", "랫풀다운", "바벨로우", "케이블풀오버", "처음으로"]}
     if user_message == "풀업"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
     elsif user_message == "랫풀다운"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
     elsif user_message == "바벨로우"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
     elsif user_message == "케이블풀오버"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
     elsif user_message == "처음으로"
      keyboard = basic_keyboard  
     end
   elsif user_message == "팔"
     keyboard = {type: "buttons", buttons: ["이두", "삼두", "처음으로"]}
     if user_message == "이두"
      keyboard = {type: "buttons", buttons: ["바벨컬", "덤벨컬", "케이블컬", "처음으로"]}
       if user_message == "바벨컬"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
       elsif user_message == "덤벨컬"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
       elsif user_message == "케이블컬"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
       elsif user_message == "처음으로"
        keyboard = basic_keyboard
      end
     elsif user_message == "삼두"
       keyboard = {type: "buttons", buttons: ["케이블프레스다운", "딥스", "라잉익스텐션", "처음으로"]}
       if user_message == "케이블프레스다운"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
       elsif user_message == "딥스"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
       elsif user_message == "라잉익스텐션"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
       elsif user_message == "처음으로"
        keyboard = basic_keyboard
      end
    end
   elsif user_message == "하체"
     keyboard = {type: "buttons", buttons: ["스쿼트", "런지", "레그익스텐션", "처음으로"]}
      if user_message == "스쿼트"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "런지"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "레그익스텐션"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "처음으로"
        keyboard = basic_keyboard  
      end  
    end
    ret urn_message = {
      message: {
          text: user_message,
          message_button: {
            label: user_message + " " + "자세 영상",
            url: return_url
           }
          },
      keyboard: keyboard
    }
    render json: return_message
  end
end