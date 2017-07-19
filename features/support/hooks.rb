Before do
  @visitor = Audiomack.new
  @visitor.browser.window.maximize
  if @visitor.adverts.main_advert.present?
    @visitor.adverts.skip_advert.click
  end
end

Before('@signup') do
  create_user
end

Before('@signin') do
  select_random_user
end

After do
  @visitor.browser.close
end

def select_random_user
  users_file = YAML.load_stream(File.read("#{Taza::Settings.config_folder}/users.yml"))
  @user = users_file.sample[:user]
end

def create_user
  image = AudioMack::GenerateUser.new
  response = image.get_images
  @new_user = { :user => {
                      :name => response['username'],
                      :email => Faker::Internet.free_email,
                      :password => Faker::Internet.password(8),
                      :avatar => response['image_urls']['epic'],
                      :location => Faker::Address.city
                    }
          }
  save_new_user_to_yaml(@new_user)
end

def save_new_user_to_yaml(user)
  dirname = File.absolute_path("config")
  File.open("#{dirname}/users.yml",'a') { |f| f.puts  user.to_yaml}
end
