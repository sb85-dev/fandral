class RequestsController < ApplicationController
    before_action :set_request, only: %i[ show edit update destroy ]
    before_action :set_member, only: %i[ create ]
    

    def index
        @requests = Request.all
    end
    

    def show
    
    end
    

    def new
        set_member
        @request = @member.requests.build
        # @alert = Alert.new
    end
    
    # GET /alerts/1/edit
    def edit
        @member = @request.member
    end
    

    def create
        set_member
        @request = @member.requests.build(request_params)
    
        respond_to do |format|
        if @request.save
            format.html { redirect_to member_requests_path(@member, @request), notice: "Request was successfully created." }
            format.json { render :show, status: :created, location: @request }
        else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @request.errors, status: :unprocessable_entity }
        end
        end
    end
    

    def update
        respond_to do |format|
        if @request.update(request_params)
            format.html { redirect_to member_request_path, notice: "Request was successfully updated." }
            format.json { render :show, status: :ok, location: @request}
        else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @request.errors, status: :unprocessable_entity }
        end
        end
    end
    

    def destroy
        @request.destroy!
        @member = @request.member
        respond_to do |format|
        format.html { redirect_to @member, notice: "request was successfully destroyed." }
        format.json { head :no_content }
        end
    end
    
    private
    
        def set_member
            @member = Member.find(params[:member_id])
        end
        # Use callbacks to share common setup or constraints between actions.
        def set_request
        @request = Request.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def request_params
        params.require(:request).permit(:member_id, :request_type, :products_type)
        end

      
end
