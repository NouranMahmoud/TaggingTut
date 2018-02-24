class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:new, :create, :destroy]


 
  # GET /users/1
  # GET /users/1.json
  def show
  end




  # POST /users
  # POST /users.json
  def create
   @reservation = Reservation.new(reservation_params)
   @reservation.start_date = Date.parse @reservation.date.to_s.gsub(/(\d{4})-(\d{2})-(\d{2})....(\d{4})-(\d{2})-(\d{2})/, '\1-\2-\3')
   @reservation.end_date = Date.parse @reservation.date.to_s.gsub(/(\d{4})-(\d{2})-(\d{2})....(\d{4})-(\d{2})-(\d{2})/, '\4-\5-\6')
   @reservation.cost = (@reservation.end_date - @reservation.start_date + 1) * 500
   if @reservation.cost < 0
      @reservation.cost += 15000 
   end
   @reservation.save
   redirect_to reservation_path(@reservation.id), notice: 'Reservation was successfully created.'

    # respond_to do |format|
    #   if @reservation.save
    #     format.html { redirect_to root_path, notice: 'Reservation was successfully created.' }
    #     format.json { render :show, status: :created, location: @reservation }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @reservation.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:user_id, :listing_id, :date, :start_date, :end_date, :cost, :paid)
    end
end
