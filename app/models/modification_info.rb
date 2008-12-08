class ModificationInfo
  include DataMapper::Resource
  
  property :id, Serial
  property :modified_peptide, String

  has n, :mod_aminoacid_masses

  belongs_to :search_hit

end
