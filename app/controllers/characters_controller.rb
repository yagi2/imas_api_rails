class CharactersController < ApplicationController
  before_action :set_character, only: [:update, :destroy]

  # GET /characters?
  # 必須パラメーター :name
  def index
    if params[:name].blank?
      render json: [{"error": "100", "msg": "必須パラメーターがありません", "required": {"key": "name"}}]
    else 
      @result = Character.where("name like ?", "%" + params[:name] + "%")

      if !params[:phonetic].blank? 
        @result = @result.where("phonetic like ?", "%" + params[:phonetic] + "%")
      end

      render json: @result
    end
  end

  # GET /characters/
  def show
    @characters = Character.all

    render json: @characters
  end

  # POST /characters
  def create
    @character = Character.new(character_params)

    if @character.save
      render json: @character, status: :created, location: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /characters/1
  def update
    if @character.update(character_params)
      render json: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # DELETE /characters/1
  def destroy
    @character.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:name])
    end

    # Only allow a trusted parameter "white list" through.
    def character_params
      params.fetch(:character, {})
    end
end
