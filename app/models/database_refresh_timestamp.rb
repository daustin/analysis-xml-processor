class DatabaseRefreshTimestamp
  include DataMapper::Resource
  
  property :id, Serial
  property :database, String, :length => (0..1000)

  belongs_to :analysis_timestamp

end
