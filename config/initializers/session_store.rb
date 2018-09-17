Rails.application.configure do
  config.session_store :redis_store,
  servers: ["redis://#{ENV['REDIS_PATH']}:6379/0/session"],
  expire_in: 10.minutes,
  key: "_#{Rails.application.class.parent_name.downcase}_session",
  threadsafe: false
end
