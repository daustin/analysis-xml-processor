class ModificationInfo
  include DataMapper::Resource
  
  property :id, Serial
  property :modified_peptide, String, :length => (0..1000)

  has n, :mod_aminoacid_masses

  belongs_to :search_hit
  belongs_to :peptide

end
