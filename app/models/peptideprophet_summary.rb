class PeptideprophetSummary
  include DataMapper::Resource

  #takes timestamp from parent analysis_summary

  
  property :id, Serial
  property :options, String, :length => (0..2000)
  property :time, DateTime
  property :XML, Text #includes entire peptideprophet_summary tag
  property :XSL, Text


end
