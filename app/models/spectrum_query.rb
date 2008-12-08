class SpectrumQuery
  include DataMapper::Resource
  
  property :id, Serial
  property :spectrum, String
  property :start_scan, Integer
  property :end_scan, Integer
  property :precursor_neutral_mass, Float
  property :assumed_charge, Integer
  property :index, Integer
  property :retention_time_sec, Float


  has 1, :search_result



  belongs_to :msms_run_summary


end
