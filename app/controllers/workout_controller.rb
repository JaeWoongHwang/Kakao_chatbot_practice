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
    when "Back"
     home_keyboard = {type: "buttons", buttons: ["Pull up", "Lat pull down"]}
    when "Shoulder"    
     home_keyboard = {type: "buttons", buttons: ["Shoulder Press", "Side lateral raise"]}
    when "Arms"
     home_keyboard = {type: "buttons", buttons: ["Dumbbell curl", "Barbell curl"]}
    when "Lower"    
     home_keyboard = {type: "buttons", buttons: ["Squats", "Lunge"]}
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