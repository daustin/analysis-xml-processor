class ProteinGroup
  include DataMapper::Resource
  
  property :id, Serial
  property :group_number, Integer
  property :probability, Float

  has n, :proteins
  
  belongs_to :protein_summary

end
