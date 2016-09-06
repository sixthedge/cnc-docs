class VersionsController < ApplicationController
  before_action :set_version, only: [:show]
  layout "article", except: [:index]
  # GET /documents/1
  # GET /documents/1.json
  def show
  end

  def index
    @versions = Version.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_version
      @version = Version.friendly.find(params[:version_id]) if params[:version_id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def version_params
      params.require(:document).permit(:title)
    end
end