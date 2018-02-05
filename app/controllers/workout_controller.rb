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
    to_home_keyboard = {type: "buttons", buttons: ["Home"]}
    standard_keyboard = {type: "buttons", buttons: ["Chest", "Back", "Shoulder", "Arms", "Lower"]}
    
    case user_message
    when "Home"
     home_keyboard = standard_keyboard    
    when "Chest"
     home_keyboard = {type: "buttons", buttons: ["Bench Press", "Push up"]}
     if user_message == "Bench Press"
      url = "https://youtu.be/KyQiUIBvutI"
      return_url = url
     elsif user_message == "Push up"
      url = "https://youtu.be/KyQiUIBvutI"
      return_url = url
     end
    when "Back"
     home_keyboard = {type: "buttons", buttons: ["Bench Press", "Push up"]}
     if user_message == "Bench Press"
      url = "https://youtu.be/KyQiUIBvutI"
      return_url = url
     elsif user_message == "Push up"
      url = "https://youtu.be/KyQiUIBvutI"
      return_url = url
     end    
    when "Shoulder"    
     home_keyboard = {type: "buttons", buttons: ["Bench Press", "Push up"]}
     if user_message == "Bench Press"
      url = "https://youtu.be/KyQiUIBvutI"
      return_url = url
     elsif user_message == "Push up"
      url = "https://youtu.be/KyQiUIBvutI"
      return_url = url
     end
    when "Arms"
     home_keyboard = {type: "buttons", buttons: ["Bench Press", "Push up"]}
     if user_message == "Bench Press"
      url = "https://youtu.be/KyQiUIBvutI"
      return_url = url
     elsif user_message == "Push up"
      url = "https://youtu.be/KyQiUIBvutI"
      return_url = url
     end    
    when "Lower"    
     home_keyboard = {type: "buttons", buttons: ["Bench Press", "Push up"]}
     if user_message == "Bench Press"
      url = "https://youtu.be/KyQiUIBvutI"
      return_url = url
     elsif user_message == "Push up"
      url = "https://youtu.be/KyQiUIBvutI"
      return_url = url
     end 
    end
    
    home_keyboard = {
      type: "buttons",
      buttons: ["Chest", "Back", "Shoulder", "Arms", "Lower", "Home"]
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