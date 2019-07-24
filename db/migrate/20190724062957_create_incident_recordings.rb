class CreateIncidentRecordings < ActiveRecord::Migration[5.2]
  def change
    create_table :incident_recordings do |t|
      t.integer :degree, default: 0
      t.string :incident_date
      t.text :message
      t.references :reported_by
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
