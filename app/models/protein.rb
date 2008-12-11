class Protein
  include DataMapper::Resource
  
  property :id, Serial
  property :protein_name, String, :length => (0..2000)
  property :n_indistinguishable_proteins, Integer
  property :probability, Float
  property :percent_coverage, Float
  property :unique_stripped_peptides, String, :length => (0..2000)
  property :group_sibling_id, String, :length => (0..2000)
  property :total_number_peptides, Integer
  property :pct_spectrum_ids, Float
  property :subsuming_protein_entry,  String, :length => (0..2000)

  has n, :annotations
  has n, :indistinguishable_proteins
  has n, :peptides

  belongs_to :protein_group
  

end
