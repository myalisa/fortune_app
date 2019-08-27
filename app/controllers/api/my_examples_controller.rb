class Api::MyExamplesController < ApplicationController
  def fortune_action
    
      fortunes = ["You will face trouble in work",

               "A great opportunity will present itself to you", 

               "Never underestimate the value of the present moment"
             ]
      random_number = rand(0..2)
      @fortune = fortunes[random_number]


      render "fortune_view.json.jb"
    end
    def random_action
      possible_numbers = (1..60).to_a
      @randoms = []

      6.times do
        possible_numbers.shuffle!
        picked_number = possible_numbers.pop
        @randoms << picked_number
      end

      render "random_view.json.jb"
    end

  def refresh_action
    @count += 1
    render 'refresh_view.json.jb'
  end



end
