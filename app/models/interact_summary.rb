class InteractSummary
  include DataMapper::Resource
  
  property :id, Serial
  property :filename, String, :length => (0..2000)
  property :directory, String, :length => (0..2000)



  has n, :inputfiles

  belongs_to :analysis_summary




end
