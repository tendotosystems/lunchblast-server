class Api::V1::SelectionController < ApplicationController
  def create
    Selection.create(selection_params)
  end

  private

  def selection_params
  	params.permit(:destination_id, :user_id)
  end
end
