class SearchDatabase
  include DataMapper::Resource
  
  property :id, Serial
  property :local_path, String
  property :type, String

  belongs_to :search_summary

end
