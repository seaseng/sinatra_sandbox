get '/' do
  # Look in app/views/index.erb
  erb :index
end


get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @user_input = params[:user_input]

  selection_hash = params.clone
  selection_hash.shift

  p "User selction"
  p @user_selection = selection_hash.values

  erb :post_cool_url
end
