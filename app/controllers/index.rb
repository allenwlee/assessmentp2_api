get '/:username' do
  @user = Github.new user: 'params[:username]'
  @followers = @user.users.followers.following params[:username]
  # @repos = @user.users.followers.following
  p "***********"
  p @user
  erb :index

end


