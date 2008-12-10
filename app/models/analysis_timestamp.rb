class AnalysisTimestamp
  include DataMapper::Resource
  
  property :id, Serial
  property :analysis, String, :length => (0..1000)
  property :time, DateTime
  property :search_id, Integer #workaround for dupids
  
  has 1, :database_refresh_timestamp

  belongs_to :msms_run_summary

end
