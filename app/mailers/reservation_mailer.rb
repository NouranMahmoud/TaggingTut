class ReservationMailer < ApplicationMailer

	def welcome_email(user)
		@user = user
	end

	def reservation_email(user, listing, reservation)
    @user = user
    @url = "https://ancient-headland-22384.herokuapp.com/"
    @listing = listing
    @reservation = reservation
    mail(to: @user.email, subject: 'Your reservation has been created, please pay now')
  	end

  	def paid_email(user, listing, reservation)
    @user = user
    @url = "https://ancient-headland-22384.herokuapp.com/"
    @listing = listing
    @reservation = reservation
    mail(to: @user.email, subject: 'Your reservation has been created, please pay now')
  	end
end