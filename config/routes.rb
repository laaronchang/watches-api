Rails.application.routes.draw do

  get "/watches" => "watches#index"
  post "/watches" =>"watches#create"
end

