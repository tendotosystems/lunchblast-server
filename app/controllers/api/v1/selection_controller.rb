class Api::V1::SelectionController < ApplicationController
  def create
    @selection = Selection.new(selection_params)
    if @selection.save
      render json: { status: 201, selection: @selection }
    else
      render json: { status: 422, errors: @selection.errors }
    end
  end

  private

  def selection_params
  	params.permit(:destination_id, :user_id)
  end
end
