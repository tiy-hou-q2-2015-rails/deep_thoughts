class TagsController < ApplicationController
  def show

    tag_name = params[:tag]

    # find all thoughts with a tag of tag_name
    @thoughts = Thought.tagged_with(tag_name)
                       .order("created_at desc")
                       .page(params[:page])

  end
end
