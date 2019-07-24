class AddColumnShowToMemberToIncidentRecording < ActiveRecord::Migration[5.2]
  def change
    add_column :incident_recordings, :show_to_member, :boolean, default: false
  end
end
