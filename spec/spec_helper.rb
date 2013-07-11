config.use_transactional_fixtures = false
 
config.before(:suite) do
  DatabaseCleaner.strategy = :transaction
  DatabaseCleaner.clean_with(:truncation)
end.before(:each) do
 
config.before(:each) do
  DatabaseCleaner.start
end
 
config.after(:each) do
  DatabaseCleaner.clean
end