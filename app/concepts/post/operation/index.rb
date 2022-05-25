module Post::Operation
  class Index < Trailblazer::Operation
    step :model!

    def model!(ctx, **)
      ctx["model"] = ::Post.all.reverse_order
    end
  end
end
