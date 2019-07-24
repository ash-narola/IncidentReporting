class Member < User
  has_many :incident_reported, class_name: 'IncidentRecording', foreign_key: :user_id
end
