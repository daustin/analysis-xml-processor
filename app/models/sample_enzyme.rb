class SampleEnzyme
  include DataMapper::Resource
  
  property :id, Serial
  property :name, String, :length => (0..512)
  
  has n, :specificities

  belongs_to :msms_run_summary

end
