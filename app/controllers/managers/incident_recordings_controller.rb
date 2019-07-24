class Managers::IncidentRecordingsController < ApplicationController
  before_action :authenticate_manager!
  before_action :set_managers_incident_recording, only: [:edit, :update, :destroy]

  # GET /managers/incident_recordings
  # GET /managers/incident_recordings.json
  def index
    @managers_incident_recordings = current_manager.reported_incidents.all
  end

  # GET /managers/incident_recordings/new
  def new
    @managers_incident_recording = current_manager.reported_incidents.new
  end

  # GET /managers/incident_recordings/1/edit
  def edit
  end

  # POST /managers/incident_recordings
  # POST /managers/incident_recordings.json
  def create
    @managers_incident_recording = current_manager.reported_incidents.new(managers_incident_recording_params)

    respond_to do |format|
      if @managers_incident_recording.save
        format.html { redirect_to managers_incident_recordings_path, notice: 'Incident recording was successfully created.' }
        format.json { render :show, status: :created, location: @managers_incident_recording }
      else
        format.html { render :new }
        format.json { render json: @managers_incident_recording.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /managers/incident_recordings/1
  # PATCH/PUT /managers/incident_recordings/1.json
  def update
    respond_to do |format|
      if @managers_incident_recording.update(managers_incident_recording_params)
        format.html { redirect_to edit_managers_incident_recording_path(@managers_incident_recording), notice: 'Incident recording was successfully updated.' }
        format.json { render :show, status: :ok, location: @managers_incident_recording }
      else
        format.html { render :edit }
        format.json { render json: @managers_incident_recording.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /managers/incident_recordings/1
  # DELETE /managers/incident_recordings/1.json
  def destroy
    @managers_incident_recording.destroy
    respond_to do |format|
      format.html { redirect_to managers_incident_recordings_url, notice: 'Incident recording was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_managers_incident_recording
      @managers_incident_recording = current_manager.reported_incidents.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def managers_incident_recording_params
      params.require(:incident_recording).permit(:degree, :incident_date, :message, :reported_by_id, :user_id)
    end
end
