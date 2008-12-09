class InteractSummary
  include DataMapper::Resource
  
  property :id, Serial
  property :filename, String, :length => (0..512)
  property :directory, String, :length => (0..512)



  has n, :inputfiles

  belongs_to :analysis_summary




end
