# frozen_string_literal: true

class Model::ColumnsController < ApplicationController
  before_action :set_model_column, only: %i[show edit update destroy]

  # GET /model/columns
  def index
    @model_columns = Model::Column.all
  end

  # GET /model/columns/1
  def show; end

  # GET /model/columns/new
  def new
    @model_column = Model::Column.new
  end

  # GET /model/columns/1/edit
  def edit; end

  # POST /model/columns
  def create
    @model_column = Model::Column.new(model_column_params)

    if @model_column.save
      redirect_to @model_column, notice: 'Column was successfully created.'
    else
      render :new, status: 422
    end
  end

  # PATCH/PUT /model/columns/1
  def update
    if @model_column.update(model_column_params)
      redirect_to @model_column, notice: 'Column was successfully updated.'
    else
      render :edit, status: 422
    end
  end

  # DELETE /model/columns/1
  def destroy
    @model_column.destroy
    redirect_to model_columns_url, notice: 'Column was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_model_column
    @model_column = Model::Column.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def model_column_params
    params.require(:model_column).permit(:name, :data_type_id, :data_type_type, :model_id)
  end
end
