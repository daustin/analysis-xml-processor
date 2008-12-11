class ProteinGroup
  include DataMapper::Resource
  
  property :id, Serial
  property :group_number, Integer
  property :probability, Float
  property :pseudo_name,  String, :length => (0..2000)

  has n, :proteins
  
  belongs_to :protein_summary

end
