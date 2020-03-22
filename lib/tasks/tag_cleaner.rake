# run using 'RAILS_ENV=development rake db:reset_pk_sequence'

namespace :db do
  desc "reset the pk sequence"
  task :reset_pk_sequence => :environment do
    ActiveRecord::Base.connection.tables.each do |t|
      ActiveRecord::Base.connection.reset_pk_sequence!(t)
    end
  end
end