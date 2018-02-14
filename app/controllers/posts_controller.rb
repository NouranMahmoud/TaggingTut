class PostsController < ApplicationController
  def index
    if params[:tag]
      @posts = [] 
      params[:tag].split(", ").map do |x|
        if Tag.all.find_by(name: x)
          @posts = Post.tagged_with(x)
        else
          @posts += []
        end
      end
    else
      @posts = Post.all
    end
  end
  

  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.js # Will search for create.js.erb
      else
        format.html { render root_path }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:author, :content, :all_tags, :tag)
    end
end


# else
#             j = 0 
#             a = ""
#             @jail = @posts
#             while j < @jail.collect(&:tags).flatten.uniq.length  
#               a += @jail.collect(&:tags).flatten.uniq[j][:name] 
#               j+= 1 
#             end
#             if !a.include?(x.to_s)
#               @posts = Post.tagged_with(x)
#               @posts = @posts.uniq
#             end
#           end