module Post::Operation
  class Show < Trailblazer::Operation
    step Model(Post, :find_by)
  end
end
