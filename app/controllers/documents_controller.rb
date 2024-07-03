class DocumentsController < ApplicationController
    before_action :set_document, only: %i[show edit update destroy]

    def index 
        @documents = Document.all 
    end

    def show
    end

    def new
        @document = Document.new 
    end

    def create 
        @document = Document.new(document_params)
        if @document.save
            redirect_to @document,
            notice: "Document was created successfully."
        else
            render :new 
        end
    end

    def edit
    end

    def update
        if @document.update(document_params)
            redirect_to @document,
            notice: "Document was updated successfully"
        else
            render :edit
        end
    end

    def destroy
        @document.destroy
        redirect_to documents_url,
        notice: "Document was deleted successfully"
    end

    private

    def set_document
        @document = Document.find(params[:id])
    end

    def document_params
        params.require(:document).permit(:document_type, :document_description, :requirement1, :requirement1_required, :requirement2, :requirement2_required, :requirement3, :requirement3_required, :requirement4, :requirement4_required)
    end


end
