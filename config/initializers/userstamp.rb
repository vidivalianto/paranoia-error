ActiveRecord::Userstamp.configure do |config|
  config.default_stamper = 'User'
  config.creator_attribute = :creator_id
  config.updater_attribute = :updater_id
  config.deleter_attribute = :deleter_id #nil # Seems to force presence if this is set
end
