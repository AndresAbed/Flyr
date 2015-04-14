every 1.day, :at => '7:00 am' do
  runner "Clubevent.end_event"
  runner "Event.end_event"
end