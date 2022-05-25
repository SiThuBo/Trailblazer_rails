
module Post::Cell

  class Show < Trailblazer::Cell
    property :title
    property :body

    def current_user
      return options[:context][:current_user]
    end

    def time
      model.created_at
    end

    def edit
      link_to "Edit", edit_post_path(model.id)
    end

    def delete
      button_to "delete", {:controller => :posts,:action => 'destroy', :id => model.id }, :method => :delete
      # link_to "Delete", post_path(model.id), method: :delete, data: {confirm: 'Are you sure?'}
    end

    def back
      link_to "Back to posts list", posts_path
    end
  end
end
