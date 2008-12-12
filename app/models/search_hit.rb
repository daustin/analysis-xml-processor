class SearchHit
  include DataMapper::Resource
  
  #this is a bastardized version of search hit that includes elements from spectrum query and, and search hit tags, as well as some prophet attributes fro search hit's children
  #the XML needs to be the parent's parent spectrum tag, with the search hit enclosed

  property :id, Serial
  property :spectrum, String, :length => (0..2000)
  property :assumed_charge, Integer
  property :index, Integer
  property :hit_rank, Integer
  property :peptide, String, :length => (0..2000)
  property :peptide_prev_aa, String, :length => (0..2000)
  property :peptide_next_aa, String, :length => (0..2000) 
  property :protein, String, :length => (0..2000)
  property :protein_descr, String, :length => (0..2000)
  property :prophet_prob, Float #obtain this from the peptideprophet_result child
  property :XML, Text #a custom tag consisting of the parent spectrum with this search hit as the child. 
  property :XSL, Text

  belongs_to :search_file


end
