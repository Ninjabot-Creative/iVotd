class QuerySnapshotsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_query_snapshot, only: [:show, :edit, :update, :destroy]

  # GET /query_snapshots
  # GET /query_snapshots.json
  def index
    @query_snapshots = QuerySnapshot.all
  end

  # GET /query_snapshots/1
  # GET /query_snapshots/1.json
  def show
  end

  # GET /query_snapshots/new
  def new
    @query_snapshot = QuerySnapshot.new
  end

  # GET /query_snapshots/1/edit
  def edit
  end

  # POST /query_snapshots
  # POST /query_snapshots.json
  def create
    @query_snapshot = QuerySnapshot.new(query_snapshot_params)

    respond_to do |format|
      if @query_snapshot.save
        format.html { redirect_to @query_snapshot, notice: 'Query snapshot was successfully created.' }
        format.json { render :show, status: :created, location: @query_snapshot }
      else
        format.html { render :new }
        format.json { render json: @query_snapshot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /query_snapshots/1
  # PATCH/PUT /query_snapshots/1.json
  def update
    respond_to do |format|
      if @query_snapshot.update(query_snapshot_params)
        format.html { redirect_to @query_snapshot, notice: 'Query snapshot was successfully updated.' }
        format.json { render :show, status: :ok, location: @query_snapshot }
      else
        format.html { render :edit }
        format.json { render json: @query_snapshot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /query_snapshots/1
  # DELETE /query_snapshots/1.json
  def destroy
    @query_snapshot.destroy
    respond_to do |format|
      format.html { redirect_to query_snapshots_url, notice: 'Query snapshot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_query_snapshot
      @query_snapshot = QuerySnapshot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def query_snapshot_params
      params.require(:candidate).permit(:count)
    end
end
