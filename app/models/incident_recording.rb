class IncidentRecording < ApplicationRecord
  enum degree: [:excellent, :good, :bad, :very_bad, :intolerable]

  belongs_to :reported_by, class_name: 'User', foreign_key: :reported_by_id
  belongs_to :user

  validates :incident_date, :message, presence: true
end
