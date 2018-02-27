class ListingsController < ApplicationController


  def index
    if params[:tag]
      @listings = [] 
      params[:tag].split(", ").map do |x|
        if Tag.all.find_by(name: x)
          @listings = Listing.tagged_with(x)
        else
          @listings += []
        end
      end
    else
      @listings = Listing.all
    end
  end

  
  

  def create
    @listing = Listing.new(listing_params)
    @listing.user_id = current_user[:id]
    @listing.image = params["listing"]["image"]
    @listing.save
    redirect_to root_path
  end

 # GET /listings/1
  # GET /listings/1.json
  def show
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:title, :price, :location, :bedrooms, :bathrooms, :amenities, :description, {image:[]}, :used_date, :all_tags, :tag)
    end
end


# else
#             j = 0 
#             a = ""
#             @jail = @listings
#             while j < @jail.collect(&:tags).flatten.uniq.length  
#               a += @jail.collect(&:tags).flatten.uniq[j][:name] 
#               j+= 1 
#             end
#             if !a.include?(x.to_s)
#               @listings = Listing.tagged_with(x)
#               @listings = @listings.uniq
#             end
#           end