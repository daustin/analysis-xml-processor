class InteractSummary
  include DataMapper::Resource
  
  #takes timestamp from parent analysis_summary

  property :id, Serial
  property :filename, String, :length => (0..2000)
  property :directory, String, :length => (0..2000)
  property :XML, Text #takes entire interact_summary tag and children
  property :XSL, Text



end
