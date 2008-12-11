class Annotation
  include DataMapper::Resource
  
  property :id, Serial
  property :protein_description, String, :length => (0..2000)
  property :swissprot_name, String, :length => (0..2000)
  property :Gene_Symbol, String, :length => (0..2000)
  property :ensembl_name, String, :length => (0..2000)
  property :trembl_name,  String, :length => (0..2000)
  property :ipi_name,  String, :length => (0..2000)

  belongs_to :protein
  belongs_to :indistinguishable_protein

end
