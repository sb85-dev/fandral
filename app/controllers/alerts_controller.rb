class AlertsController < ApplicationController
  before_action :set_alert, only: %i[ show edit update destroy ]

  # GET /alerts or /alerts.json
  def index
    @alerts = Alert.all
  end

  # GET /alerts/1 or /alerts/1.json
  def show
  end

  # GET /alerts/new
  def new
    @alert = Alert.new
  end

  # GET /alerts/1/edit
  def edit
  end

  # POST /alerts or /alerts.json
  def create
    @alert = Alert.new(alert_params)

    respond_to do |format|
      if @alert.save
        format.html { redirect_to alert_url(@alert), notice: "Alert was successfully created." }
        format.json { render :show, status: :created, location: @alert }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alerts/1 or /alerts/1.json
  def update
    respond_to do |format|
      if @alert.update(alert_params)
        format.html { redirect_to alert_url(@alert), notice: "Alert was successfully updated." }
        format.json { render :show, status: :ok, location: @alert }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alerts/1 or /alerts/1.json
  def destroy
    @alert.destroy!

    respond_to do |format|
      format.html { redirect_to alerts_url, notice: "Alert was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alert
      @alert = Alert.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alert_params
      params.require(:alert).permit(:member_id, :assigned_to, :date_of_notice, :received_from, :type_of_review, :date_oldest_account, :decision, :monitor_until, :fca_maintain, :document_request, :date_documents_requested, :documents_received, :fdra_facts_notes, :olb_review_by_lr, :background_review_by_lr, :fraud_flags, :idv_docs_received, :loss, :exposure, :funds_returned_reason, :external_account)
    end
end
