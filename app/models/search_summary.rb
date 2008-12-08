class SearchSummary
  include DataMapper::Resource
  
  property :id, Serial
  property :base_name, String
  property :search_engine, String
  property :precursor_mass_type, String
  property :fragment_mass_type, String
  property :out_data_type, String
  property :out_data, String
  property :search_id, Integer

  has 1, :search_database
  has n, :aminoacid_modifications
  has n, :parameters

  belongs_to :msms_run_summary


end
