namespace :db_tables do
  desc 'Adds countries to database'
  task countries: :environment do
    data = JSON.parse(File.open("public/readme.json").read)
    q = data["objects"]["countries"]["geometries"].map { |x|  x["id"] }
    q.each do |c|
      z = Country.new
      z.name = c
      z.save
    end
  end
end
