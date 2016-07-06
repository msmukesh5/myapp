require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

class Demo
	# put your own credentials here
	

	def send_sms(sms)
		account_sid = 'AC9ad71a67adee346a8d3115d0131cf739'
		auth_token = 'b77bf711590590c64898141e5fc834d2'

		# set up a client to talk to the Twilio REST API
		@client = Twilio::REST::Client.new account_sid, auth_token

		puts "Sending sms #{sms}"
		puts "client #{@client}"

		@client.messages.create(
		  from: '+12564742052',
		  to: '+919040357009',
		  body: "#{sms}"
		)
	end
end

