module Post::Cell
  class Index < Trailblazer::Cell
    def total
      return "No posts" if model.size == 0
    end

    def new
      link_to "New", new_post_path
    end
  end
end
