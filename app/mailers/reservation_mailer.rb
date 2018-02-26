class ReservationMailer < ApplicationMailer

	def booking_email(user)
		@user= user
	end

	def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end