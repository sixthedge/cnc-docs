class DocumentsController < ApplicationController
  # before_action :set_document, only: [:show]
  layout "article"

  # GET /documents/1
  # GET /documents/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit()
    end
end


