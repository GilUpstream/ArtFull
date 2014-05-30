# Use this hook to configure merit parameters
Merit.setup do |config|
  # Check rules on each request or in background
  config.checks_on_each_request = true

  # Define ORM. Could be :active_record (default) and :mongoid
  # config.orm = :active_record

  # Add application observers to get notifications when reputation changes.
  # config.add_observer 'MyObserverClassName'

  # Define :user_model_name. This model will be used to grand badge if no
  # `:to` option is given. Default is 'User'.
  # config.user_model_name = 'User'

  # Define :current_user_method. Similar to previous option. It will be used
  # to retrieve :user_model_name object if no `:to` option is given. Default
  # is "current_#{user_model_name.downcase}".
  config.current_user_method = 'current_user'
end

# Create application badges (uses https://github.com/norman/ambry)
badge_id = 0
[{
  id: (badge_id = badge_id+1),
  name: 'Art Noob',
  description: 'First Checkin'
}, {
  id: (badge_id = badge_id+1),
  name: 'Art Appreciation',
  description: '3 Checkins'
}, {
  id: (badge_id = badge_id+1),
  name: 'Art Lover',
  description: '10 Checkins'
}, {
  id: (badge_id = badge_id+1),
  name: 'Patron of the Arts',
  description: '20 Checkins'
}, {
  id: (badge_id = badge_id+1),
  name: 'Art Streak',
  description: '5 Checkins in 1 Day'
}, {
  id: (badge_id = badge_id+1),
  name: 'Artsy Fartsy',
  description: '50 Checkins'
}, {
  id: (badge_id = badge_id+1),
  name: 'Art Friends',
  description: '3 Friends'
}]
.each do |attrs|
  Merit::Badge.create! attrs
end
