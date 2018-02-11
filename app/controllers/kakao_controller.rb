class KakaoController < ApplicationController
def keyboard
    home_keyboard = {
    type: "buttons",
    buttons: ["벤치프레스", "데드리프트", "레터럴레이즈", "스쿼트", "런지"]
    }
    render json: home_keyboard
  end

  def message
    user_message = params[:content]

    return_text = "테스트"
    if user_message == "벤치프레스"
      url = "https://youtu.be/KyQiUIBvutI"
      return_url = url
    elsif user_message == "데드리프트"
      url = "https://youtu.be/MJerfdJzki4"
      return_url = url
    elsif user_message == "레터럴레이즈"
      url = "https://youtu.be/mOp2D0cvUxM"
      return_url = url
    elsif user_message == "스쿼트"
      url = "https://youtu.be/ARGOv5eQk50"
      return_url = url
    elsif user_message == "런지"
      url = "https://youtu.be/oCwiMnnhiX8"
      return_url = url
    else
      return_text = "현재 볼 수 있는 운동 동작은 벤치프레스, 데드리프트, 레터럴레이즈, 스쿼트, 런지 입니다."
    end

    home_keyboard = {
      type: "buttons",
      buttons: ["벤치프레스", "데드리프트", "레터럴레이즈", "스쿼트", "런지"]
    }

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