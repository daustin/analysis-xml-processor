class ProteinSummaryDataFilter
  include DataMapper::Resource
  
  property :id, Serial
  property :min_probability, Float
  property :sensitivity, Float
  property :false_positive_error_rate, Float
  property :predicted_num_correct, Integer
  property :predicted_num_incorrect, Integer

  belongs_to :proteinprophet_details, :class_name => 'ProteinprophetDetails'

end
