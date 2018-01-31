class KakaoController < ApplicationController
  def keyboard
    keyboard = {
    type: "buttons",
    buttons: ["가슴", "어깨", "등", "팔", "하체"]
    }
    render json: home_keyboard
  end

  def message
    home_keyboard = { type: "buttons", buttons: ["처음으로"]}
    std_keyboard = { type: "buttons", buttons: ["가슴", "어깨", "등", "팔", "하체"]}
    user_message = params[:content]
  
  case user_message
   when "처음으로"
     keyboard = std_keyboard
   when "가슴"
     keyboard = {type: "buttons", buttons: ["벤치프레스", "인클라인프레스", "케이블크로스오버", "푸쉬업"]}
      when "벤치프레스"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      when "인클라인프레스"
        url = "https://youtu.be/09kkHji5NMs"
        return_url = url
      when "케이블크로스오버"
        url = "https://youtu.be/N5PCCuxBWzw"
        return_url = url
      when "푸쉬업"
      url = "https://youtu.be/Nsu_xA02ieU"
      return_url = url
   when "어깨"
     keyboard = {type: "buttons", buttons: ["덤벨숄더프레스", "사이드레터럴레이즈", "벤트오버레이즈", "업라이트로우"]}
      when "덤벨숄더프레스"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      when "사이드레터럴레이즈"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      when "벤트오버레이즈"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      when "업라이트로우"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
   when "등"
     keyboard = {type: "buttons", buttons: ["풀업", "랫풀다운", "바벨로우", "케이블풀오버"]}
     when "풀업"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      when "랫풀다운"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      when "바벨로우"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      when "케이블풀오버"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
   when "팔"
     keyboard = {type: "buttons", buttons: ["이두", "삼두"]}
     when "이두"
      keyboard = {type: "buttons", buttons: ["바벨컬", "덤벨컬", "케이블컬"]}
       when "바벨컬"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
       when "덤벨컬"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
       when "케이블컬"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
     when "삼두"
       keyboard = {type: "buttons", buttons: ["케이블프레스다운", "딥스", "라잉익스텐션"]}
       when "케이블프레스다운"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
       when "딥스"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
       when "라잉익스텐션"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
   when "하체"
     keyboard = {type: "buttons", buttons: ["스쿼트", "런지", "레그익스텐션"]}
     when "스쿼트"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      when "런지"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      when "레그익스텐션"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
  end
    
    return_message = {
      message: {
          text: user_message,
          message_button: {
            label: user_message + " " + "자세 영상",
            url: return_url
          }
          },
      keyboard: home_keyboard
    }

      render json: return_message
  end
end
