require 'gmail'


gmail = Gmail.connect('louamax', 'lastmen00') 


	gmail.deliver do
		to 'allankleinpro@gmail.com'
		subject "Grosse pute"
		text_part do
			body "Yoo botch!!"
		end
	end

