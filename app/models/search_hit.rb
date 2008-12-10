class SearchHit
  include DataMapper::Resource
  
  property :id, Serial
  property :hit_rank, Integer
  property :peptide, String, :length => (0..1000)
  property :peptide_prev_aa, String, :length => (0..1000)
  property :peptide_next_aa, String, :length => (0..1000) 
  property :protein, String, :length => (0..1000)
  property :num_tot_proteins, Integer
  property :num_matched_ions, Integer
  property :tot_num_ions, Integer
  property :calc_neutral_pep_mass, Float
  property :massdiff, String, :length => (0..1000)
  property :num_tol_term, Integer
  property :num_missed_cleavages, Integer
  property :is_rejected, Integer
  property :protein_descr, String, :length => (0..1000)

  has n, :search_scores
  has n, :analysis_results
  has n, :alternative_proteins
  has 1, :modification_infos


  belongs_to :search_result


end
