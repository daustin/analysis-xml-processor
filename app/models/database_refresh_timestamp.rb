class DatabaseRefreshTimestamp
  include DataMapper::Resource
  
  property :id, Serial
  property :database, String

  belongs_to :analysis_timestamp

end
