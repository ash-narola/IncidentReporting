class Member < User
  has_many :incidents_reported, class_name: 'IncidentRecording', foreign_key: :user_id
end
