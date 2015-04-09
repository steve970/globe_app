class Country

  def initialize
    @data = JSON.parse(File.open("public/readme.json").read)
  end

  def country_name
    @data["objects"]["countries"]["geometries"].map { |x|  x["id"] }
  end
  
end
