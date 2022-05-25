module Post::Contract
  class Update < Reform::Form
    include Dry

    property :title
    property :body

    validation do
      required(:title).filled
      required(:body).filled(min_size?: 9)
    end
  end
end
