class AminoacidModification
  include DataMapper::Resource
  
  property :id, Serial
  property :aminoacid, String, :length => (0..512)
  property :massdiff, Float
  property :mass, Float
  property :variable, String, :length => (0..512)
  property :symbol, String, :length => (0..512)

  belongs_to :search_summary




end
