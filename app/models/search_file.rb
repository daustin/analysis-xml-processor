class SearchFile
  include DataMapper::Resource

  #search file is a new model that is meant to merge msms_run_summary and search_summary
  #it includes all the attributes of msms_run_summary, and a couple from search_summary.  it also includes the enzyme name from msms_run_summary's child
  #the XML tag stores the entire search_summary tag.
  #this model has many search hit children
  
  property :id, Serial
  property :base_name, String, :length => (0..2000)
  property :msManufacturer, String, :length => (0..2000)
  property :msModel, String, :length => (0..2000)
  property :msIonization, String, :length => (0..2000)
  property :msMassAnalyzer, String, :length => (0..2000)
  property :msDetector, String, :length => (0..2000)
  property :raw_data_type, String, :length => (0..2000)
  property :raw_data, String, :length => (0..2000)
  property :base_name, String, :length => (0..2000)
  property :search_engine, String, :length => (0..2000)
  property :enzyme, String, :length (0..2000)
  property :XML, Text # entire search_summary tag and children
  property :XSL

  has n, :search_hits



end
