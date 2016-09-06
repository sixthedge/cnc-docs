class DocumentsController < ApplicationController
  before_action :set_document, only: [:show]
  layout "article"

  # GET /documents
  # GET /documents.json
  def index
    @documents = Document.all
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @version   = Version.friendly.find(params[:version_id])             if params[:version_id]
      @section   = @version.sections.friendly.find(params[:section_id])   if params[:section_id]
      @document  = @section.documents.friendly.find(params[:document_id]) if params[:document_id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit()
    end
end


