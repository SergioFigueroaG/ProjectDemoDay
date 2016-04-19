module EventsHelper
	def urlimg_event(event)
		event.img? ?  event.img : "events/cal.jpeg"
	end

end
