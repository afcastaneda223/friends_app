class FriendsListsController < ApplicationController
  before_action :set_friends_list, only: [:show, :edit, :update, :destroy]

  # GET /friends_lists
  # GET /friends_lists.json
  def index
    @friends_lists = FriendsList.all
  end

  # GET /friends_lists/1
  # GET /friends_lists/1.json
  def show
  end

  # GET /friends_lists/new
  def new
    @friends_list = FriendsList.new
  end

  # GET /friends_lists/1/edit
  def edit
  end

  # POST /friends_lists
  # POST /friends_lists.json
  def create
    @friends_list = FriendsList.new(friends_list_params)

    respond_to do |format|
      if @friends_list.save
        format.html { redirect_to @friends_list, notice: 'Friends list was successfully created.' }
        format.json { render :show, status: :created, location: @friends_list }
      else
        format.html { render :new }
        format.json { render json: @friends_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friends_lists/1
  # PATCH/PUT /friends_lists/1.json
  def update
    respond_to do |format|
      if @friends_list.update(friends_list_params)
        format.html { redirect_to @friends_list, notice: 'Friends list was successfully updated.' }
        format.json { render :show, status: :ok, location: @friends_list }
      else
        format.html { render :edit }
        format.json { render json: @friends_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friends_lists/1
  # DELETE /friends_lists/1.json
  def destroy
    @friends_list.destroy
    respond_to do |format|
      format.html { redirect_to friends_lists_url, notice: 'Friends list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friends_list
      @friends_list = FriendsList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friends_list_params
      params.require(:friends_list).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
