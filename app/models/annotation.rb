class Annotation
  include DataMapper::Resource
  
  property :id, Serial
  property :protein_description, String, :length => (0..1000)
  
  belongs_to :protein
  belongs_to :indistinguishable_protein

end
