class MyQuestsController < ApplicationController
  before_action :set_my_quest, only: %i[ show edit update destroy ]

  # GET /my_quests or /my_quests.json
  def index
    @my_quests = MyQuest.all
  end

  # GET /my_quests/1 or /my_quests/1.json
  def show
  end

  # GET /my_quests/new
  def new
    @my_quest = MyQuest.new
  end

  # GET /my_quests/1/edit
  def edit
  end

  # POST /my_quests or /my_quests.json
  def create
    @my_quest = MyQuest.new(my_quest_params)

    respond_to do |format|
      if @my_quest.save
        format.html { redirect_to @my_quest, notice: "My quest was successfully created." }
        format.json { render :show, status: :created, location: @my_quest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @my_quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_quests/1 or /my_quests/1.json
  def update
    respond_to do |format|
      if @my_quest.update(my_quest_params)
        format.html { redirect_to @my_quest, notice: "My quest was successfully updated." }
        format.json { render :show, status: :ok, location: @my_quest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @my_quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_quests/1 or /my_quests/1.json
  def destroy
    @my_quest.destroy!

    respond_to do |format|
      format.html { redirect_to my_quests_path, status: :see_other, notice: "My quest was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_quest
      @my_quest = MyQuest.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def my_quest_params
      params.expect(my_quest: [ :quest ])
    end
end
