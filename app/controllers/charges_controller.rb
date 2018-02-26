class ChargesController < ApplicationController
	def new
	end

	def create

	  # Amount in cents
	  @reservation = Reservation.find(params[:id])
	  @listing = Listing.find(@reservation.listing_id)
	  @amount = @reservation.cost

	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail],
	    :source  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => 'Rails Stripe customer',
	    :currency    => 'usd'
	  )

	  if @listing.used_date.nil?
	  	@listing.used_date = ""
	  end
	  @listing.used_date += @reservation.date.to_s.gsub(/(\d{4})-(\d{2})-(\d{2})....(\d{4})-(\d{2})-(\d{2})/, '{from: "\1-\2-\3", to: "\4-\5-\6"},')
	  @listing.save
	  @reservation.paid = true
	  @reservation.save
	  redirect_to root_path, notice: 'Reservation paid for, thank you!'


	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to new_charge_path
	end
end
