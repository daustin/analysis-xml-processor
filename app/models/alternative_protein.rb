class AlternativeProtein
  include DataMapper::Resource
  
  property :id, Serial
  property :protein, String, :length => (0..1000)
  property :protein_descr, String, :length => (0..1000)
  property :num_tol_term, Integer
  property :peptide_prev_aa, String, :length => (0..1000)
  property :peptide_next_aa, String, :length => (0..1000)

  belongs_to :search_hit

end
