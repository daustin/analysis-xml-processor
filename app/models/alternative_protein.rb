class AlternativeProtein
  include DataMapper::Resource
  
  property :id, Serial
  property :protein, String
  property :protein_decr, String
  property :num_tol_term, Integer
  property :peptide_prev_aa, String
  property :peptide_next_aa, String

  belongs_to :search_hit

end
