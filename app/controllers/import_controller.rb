class ImportController < ApplicationController
  def create
    User.import_csv(file: params[:file])
    redirect_to users_path
  end
end
