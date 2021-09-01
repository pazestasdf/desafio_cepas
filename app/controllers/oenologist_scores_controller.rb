class OenologistScoresController < ApplicationController
  before_action :set_oenologist_score, only: %i[ show edit update destroy ]

  # GET /oenologist_scores or /oenologist_scores.json
  def index
    @oenologist_scores = OenologistScore.all
  end

  # GET /oenologist_scores/1 or /oenologist_scores/1.json
  def show
  end

  # GET /oenologist_scores/new
  def new
    @oenologist_score = OenologistScore.new
  end

  # GET /oenologist_scores/1/edit
  def edit
  end

  # POST /oenologist_scores or /oenologist_scores.json
  def create
    @oenologist_score = OenologistScore.new(oenologist_score_params)

    respond_to do |format|
      if @oenologist_score.save
        format.html { redirect_to @oenologist_score, notice: "Oenologist score was successfully created." }
        format.json { render :show, status: :created, location: @oenologist_score }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @oenologist_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oenologist_scores/1 or /oenologist_scores/1.json
  def update
    respond_to do |format|
      if @oenologist_score.update(oenologist_score_params)
        format.html { redirect_to @oenologist_score, notice: "Oenologist score was successfully updated." }
        format.json { render :show, status: :ok, location: @oenologist_score }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @oenologist_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oenologist_scores/1 or /oenologist_scores/1.json
  def destroy
    @oenologist_score.destroy
    respond_to do |format|
      format.html { redirect_to oenologist_scores_url, notice: "Oenologist score was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oenologist_score
      @oenologist_score = OenologistScore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def oenologist_score_params
      params.require(:oenologist_score).permit(:wine_id, :oenologist_id, :score)
    end
end
