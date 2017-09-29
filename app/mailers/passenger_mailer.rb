class PassengerMailer < ApplicationMailer
	default from: "notifications@example.com"

	def thankyou_email(passenger)
		@passenger = passenger
		@url = 'http://localhost:3000'
		mail(to: @passenger.email, subject: 'Thank you for booking')
	end
end
