class InteractSummary
  include DataMapper::Resource
  
  property :id, Serial
  property :filename, String
  property :directory, String



  has n, :inputfiles

  belongs_to :analysis_summary




end
