class SearchSummary
  include DataMapper::Resource
  
  property :id, Serial
  property :base_name, String, :length => (0..2000)
  property :search_engine, String, :length => (0..2000)
  property :precursor_mass_type, String, :length => (0..2000)
  property :fragment_mass_type, String, :length => (0..2000)
  property :out_data_type, String, :length => (0..2000)
  property :out_data, String, :length => (0..2000)
  property :search_id, Integer

  has 1, :search_database
  has n, :enzymatic_search_constraints
  has n, :aminoacid_modifications
  has n, :parameters

  belongs_to :msms_run_summary


end
