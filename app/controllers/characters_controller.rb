class CharactersController < ApplicationController
  # GET /characters
  def index
    head 404
  end

  # GET /characters/search
  # 必須パラメータ name:string
  def search
    if params[:name].blank?
      render json: [{"error": "100", "msg": "必須パラメーターがありません", "required": {"key": "name"}}]
    else 
      @result = Character.where("name like ?", "%" + params[:name] + "%")

      if @result.empty?
        @result = Character.where("phonetic like ?", "%" + params[:name] + "%")
      end

      render json: @result
    end
  end

  # GET /characters/all
  def all
    @characters = Character.all
    render json: @characters
  end
end
