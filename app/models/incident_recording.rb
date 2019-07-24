class IncidentRecording < ApplicationRecord
  enum degree: [:excellent, :good, :bad, :very_bad, :intolerable]

  belongs_to :reported_by, class_name: 'User', foreign_key: :reported_by_id
  belongs_to :user

  validates :incident_date, :message, presence: true
  validate :validate_incident_date

  def validate_incident_date
    begin
      DateTime.parse(self.incident_date)
    rescue
      errors.add(:field, 'Invalid date')
    end
  end
end
