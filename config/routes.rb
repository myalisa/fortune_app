Rails.application.routes.draw do
  namespace :api do
    get '/feature1_url' => 'my_examples#fortune_action'
    get '/feature2_url' => 'my_examples#random_action'
    get '/feature3_url' => 'my_examples#refresh_action'
  end
end
