class Manager < User
  has_many :reported_incidents, class_name: 'IncidentRecording', foreign_key: :reported_by_id
end
