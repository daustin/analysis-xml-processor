class SearchDatabase
  include DataMapper::Resource
  
  property :id, Serial
  property :local_path, String, :length => (0..2000)
  property :type, String, :length => (0..2000)



  belongs_to :search_summary

end
