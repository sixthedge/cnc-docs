class SectionsController < ApplicationController
  before_action :set_section, only: [:show]

  # GET /documents
  # GET /documents.json
  def index
    @sections = Section.all
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section
      version   = params[:version_id]
      section   = params[:section_id]
      @document = Version.friendly.find(version).sections.friendly.find(section)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_params
      params.require(:document).permit()
    end
end
