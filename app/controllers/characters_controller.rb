class CharactersController < ApplicationController
  # GET /characters
  def index
  end

  # GET /characters/search
  # 必須パラメータ name:string
  def search
    if params[:name].blank?
      render json: [{"error": "100", "msg": "必須パラメーターがありません", "required": {"key": "name"}}]
    else 
      tmp = Character.where("name like ?", "%" + params[:name] + "%")
      tmp += Character.where("phonetic like ?", "%" + params[:name] + "%")
      
      result = tmp.uniq
      render json: result
    end
  end

  # GET /characters/all
  def all
    characters = Character.all
    render json: characters
  end
end
