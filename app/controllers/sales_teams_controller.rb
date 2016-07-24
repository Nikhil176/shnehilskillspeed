class SalesTeamsController < ApplicationController
  before_action :set_sales_team, only: [:show, :edit, :update, :destroy]

  # GET /sales_teams
  # GET /sales_teams.json
  def index
    @sales_teams = SalesTeam.all
  end

  # GET /sales_teams/1
  # GET /sales_teams/1.json
  def show
  end

  # GET /sales_teams/new
  def new
    @sales_team = SalesTeam.new
  end

  # GET /sales_teams/1/edit
  def edit
  end

  # POST /sales_teams
  # POST /sales_teams.json
  def create
    @sales_team = SalesTeam.new(sales_team_params)

    respond_to do |format|
      if @sales_team.save
        format.html { redirect_to @sales_team, notice: 'Sales team was successfully created.' }
        format.json { render :show, status: :created, location: @sales_team }
      else
        format.html { render :new }
        format.json { render json: @sales_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_teams/1
  # PATCH/PUT /sales_teams/1.json
  def update
    respond_to do |format|
      if @sales_team.update(sales_team_params)
        format.html { redirect_to @sales_team, notice: 'Sales team was successfully updated.' }
        format.json { render :show, status: :ok, location: @sales_team }
      else
        format.html { render :edit }
        format.json { render json: @sales_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_teams/1
  # DELETE /sales_teams/1.json
  def destroy
    @sales_team.destroy
    respond_to do |format|
      format.html { redirect_to sales_teams_url, notice: 'Sales team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_team
      @sales_team = SalesTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sales_team_params
      params.require(:sales_team).permit(:Name, :Course, :Customer, :Status)
    end
end
