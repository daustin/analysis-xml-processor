class DatabaseRefreshTimestamp
  include DataMapper::Resource
  
  property :id, Serial
  property :database, String, :length => (0..512)

  belongs_to :analysis_timestamp

end
