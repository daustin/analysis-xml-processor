class PeptideParentProtein
  include DataMapper::Resource
  
  property :id, Serial
  property :protein_name,  String, :length => (0..2000)

  belongs_to :peptide


end
