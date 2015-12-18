
# Human you may be, but you all have a slightly imperfect ruby interpreter in your heads.
# whoa
# Some killer genius wrote this script.
# Read this code, and if you can, Put a comment under each line explaining what the line above does.
# There is definitely a LOT of stuff that we never even broached but  
# If you're like  ¯\_(ツ)_/¯, move on. If you get to the end, go on and Google the stuff that you don't know.


# this only happens on weekdays (not weekends)
exit if Time.now.saturday? || Time.now.sunday?

#adds the suffix logs/hangover.tx after the filename to create a new file
log_file_name = File.dirname(__FILE__) + '/logs/hangover.txt'

#make this new file unless one already exists
Dir.mkdir('logs') unless File.exists?(log_file_name)


#open the file
LOG_FILE = File.open(log_file_name, 'a+')

#exit if the user (boss) is logged onto her computer
exit if `who -q`.include? ENV['USER']

#pulls in the apis to Twilio and some other program
require 'dotenv'
require 'twilio-ruby'

Dotenv.load

#saves both token key and ID as a variable
TWILIO_ACCOUNT_SID = ENV['TWILIO_ACCOUNT_SID']
TWILIO_AUTH_TOKEN  = ENV['TWILIO_AUTH_TOKEN']

#authenticates for twilio so that it knows who you are
@twilio = Twilio::REST::Client.new TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN

#saves numbers as variables
my_number      = '+6465551234'
number_of_boss = '+2125551234'

#sets an array of excuses
excuses = [
  'Locked out',
  'Pipes broke',
  'Food poisoning',
  'Not feeling well'
]

#writes a text message to your boss using the excuse generator
@twilio.messages.create(
  from: my_number, to: number_of_boss,
  body: 'Gonna work from home. ' + excuses.sample
)

#when the guy wakes up, it allows him to see the message he sent to his boss
LOG_FILE.puts("Message sent at: #{Time.now}")
LOG_FILE.close