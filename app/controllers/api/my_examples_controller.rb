class Api::MyExamplesController < ApplicationController
def fortune_action
    render json: {message: "You will have a great day"}
  end

  def random_action
    
    render 
  end
end
