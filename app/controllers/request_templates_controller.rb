class RequestTemplatesController < ApplicationController
  before_action :set_request_template, only: %i[ show edit update destroy ]
  before_action :set_documents

  # GET /request_templates or /request_templates.json
  def index
    @request_templates = RequestTemplate.all
  end

  # GET /request_templates/1 or /request_templates/1.json
  def show
  end

  # GET /request_templates/new
  def new
    @request_template = RequestTemplate.new
  end

  # GET /request_templates/1/edit
  def edit
  end

  # POST /request_templates or /request_templates.json
  def create
    @request_template = RequestTemplate.new(request_template_params)

    respond_to do |format|
      if @request_template.save
        format.html { redirect_to request_template_url(@request_template), notice: "Request template was successfully created." }
        format.json { render :show, status: :created, location: @request_template }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @request_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_templates/1 or /request_templates/1.json
  def update
    respond_to do |format|
      if @request_template.update(request_template_params)
        format.html { redirect_to request_template_url(@request_template), notice: "Request template was successfully updated." }
        format.json { render :show, status: :ok, location: @request_template }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @request_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_templates/1 or /request_templates/1.json
  def destroy
    @request_template.destroy!

    respond_to do |format|
      format.html { redirect_to request_templates_url, notice: "Request template was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_documents
        @documents = Document.all 
    end
    def set_request_template
      @request_template = RequestTemplate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def request_template_params
      params.require(:request_template).permit(:subject, :greeting, :greeting_line_two, :step_one, :step_two, :footer_header, :complete_by, :questions, :hours_of_operation, :email, :phone_numbers, :call_to_action, :incomplete)
    end
end
