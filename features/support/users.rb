module AudioMack
  class GenerateUser
    include HTTParty
    format :json

    base_uri 'http://uifaces.com/api/v1'

    def get_images
      self.class.get("/random")
    end

  end
end
