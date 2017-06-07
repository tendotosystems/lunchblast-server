class Api::V1::SelectionController < ApplicationController
  def create
    @selection = Selection.new(selection_params)
    if @selection.save
      render json: { selection: @selection }, status: :created
    else
      render json: { errors: @selection.errors }, status: :unprocessable_entity
    end
  end

  private

  def selection_params
  	params.permit(:destination_id, :user_id)
  end
end
