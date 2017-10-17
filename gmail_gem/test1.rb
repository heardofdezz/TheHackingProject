require 'gmail'


gmail = Gmail.connect('louamax', 'lastmen00')


	gmail.deliver do
		to 'louamax@gmail.com'
		subject "Ma chienne"
		text_part do
			body "Yoo botch!!"
		end
	end
