require 'csv'

desc 'Import data from csv files'
task :import_fixtures => [:environment] do

  puts 'Clearing database...'
  StardewObject.destroy_all

  puts 'Importing Stardew Objects...'
  CSV.foreach('./db/csv_data/stardew_objects_fixture.csv', headers: true, header_converters: :symbol) do |row|
    StardewObject.create!(row.to_h)
  end
  puts "#{StardewObject.count} Stardew Objects created"

  ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
  end

  puts "CSV successfully imported into database"
end
