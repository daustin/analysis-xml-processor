class AminoacidModification
  include DataMapper::Resource
  
  property :id, Serial
  property :aminoacid, String
  property :massdiff, Float
  property :mass, Float
  property :variable, String
  property :symbol, String

  belongs_to :search_summary




end
