class ReservationMailer < ApplicationMailer

	def booking_email(user)
		@user= user
	end

	def welcome_email(user)
    @user = user
    @url  = 'https://ancient-headland-22384.herokuapp.com/'
    email_with_name = %("#{@user.name}" <#{@user.email}>)
    mail(to: email_with_name, subject: 'Welcome to My Awesome Site'))
  end
end