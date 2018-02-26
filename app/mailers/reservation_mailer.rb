class ReservationMailer < ApplicationMailer
	default from: "willybishop33@gmail.com"

	def booking_email(user)
		@user= user
	end

	def welcome_email(user)
    @user = user
    @url  = 'https://ancient-headland-22384.herokuapp.com/'
    email_with_name = %("#{@user.name}" <#{@user.email}>)
    mail(to: email_with_name, subject: 'Welcome to My Awesome Site')
    attachments.inline['bb558ec7-1bcb-4585-a03b-bc540aa0b201.c10.jpg'] = File.read('/home/nextacademy/Desktop/bb558ec7-1bcb-4585-a03b-bc540aa0b201.c10.jpg')
  end
end