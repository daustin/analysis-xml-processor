class ModAminoacidMass
  include DataMapper::Resource
  
  property :id, Serial
  property :position, Integer
  property :mass, Float

  belongs_to :modification_info

end
