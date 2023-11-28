# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
require 'faker'
require 'factory_bot_rails'
FactoryBot.definition_file_paths = [File.expand_path('../spec/factories', __dir__)]

10.times do
  FactoryBot.create(:user)
end

20.times do
  FactoryBot.create(:category)
end

10.times do
  FactoryBot.create(:post)
end
