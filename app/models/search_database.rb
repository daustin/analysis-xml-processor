class SearchDatabase
  include DataMapper::Resource
  
  property :id, Serial
  property :local_path, String, :length => (0..512)
  property :type, String, :length => (0..512)



  belongs_to :search_summary

end
