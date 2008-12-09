class AlternativeProtein
  include DataMapper::Resource
  
  property :id, Serial
  property :protein, String, :length => (0..512)
  property :protein_descr, String, :length => (0..512)
  property :num_tol_term, Integer
  property :peptide_prev_aa, String, :length => (0..512)
  property :peptide_next_aa, String, :length => (0..512)

  belongs_to :search_hit

end
