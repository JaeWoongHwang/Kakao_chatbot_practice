class WorkoutController < ApplicationController
 def keyboard
    home_keyboard = {
    type: "buttons",
    buttons: ["Chest", "Back", "Shoulder", "Arms", "Lower"]
    }
    render json: home_keyboard
 end

  def message
    user_message = params[:content]
    return_text = "Test"
    if user_message == "Chest"
     home_keyboard = {type: "buttons", buttons: ["Bench Press", "Push Up"]}
      if user_message == "Bench Press"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      elsif user_message == "Push Up"
        url = "https://youtu.be/KyQiUIBvutI"
        return_url = url
      end
    elsif user_message == "Back"
      url = "https://youtu.be/MJerfdJzki4"
      return_url = url
    elsif user_message == "Shoulder"
      url = "https://youtu.be/mOp2D0cvUxM"
      return_url = url
    elsif user_message == "Arms"
      url = "https://youtu.be/ARGOv5eQk50"
      return_url = url
    elsif user_message == "Lower"
      url = "https://youtu.be/oCwiMnnhiX8"
      return_url = url
    else
      return_text = "Please choose this list"
    end
    
    home_keyboard = {
      type: "buttons",
      buttons: ["Chest", "Back", "Shoulder", "Arms", "Lower"]
    }

    return_message = {
      message: {
          text: user_message,
          message_button: {
            label: user_message + " " + "workout footage",
            url: return_url
          }
          },
      keyboard: home_keyboard
    }

      render json: return_message
  end
end