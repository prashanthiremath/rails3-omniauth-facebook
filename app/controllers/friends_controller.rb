class FriendsController < ApplicationController

  # GET /friends.xml
  def index
    @friends = Friend.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @friends }
    end
  end

  # GET /friends/1
  # GET /friends/1.xml
  def show
    @friend = Friend.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @friend }
    end
  end

  # GET /friends/new
  # GET /friends/new.xml
  def new
    @friend = Friend.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @friend }
    end
  end

  # GET /friends/1/edit
  def edit
    @friend = Friend.find(params[:id])
  end

  # POST /friends
  # POST /friends.xml
  def create
    @friend = Friend.new(params[:friend])

    respond_to do |format|
      if @friend.save
         flash[:notice] = "Successfully created product." 
         respond_with @friend
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @friend.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /friends/1
  # PUT /friends/1.xml
  def update
    @friend = Friend.find(params[:id])

    respond_to do |format|
      if @friend.update_attributes(params[:friend])
        format.html { redirect_to(@friend, :notice => 'Friend was successfully updated.') }
        format.json { render :json => @friend }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @friend.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /friends/1
  # DELETE /friends/1.xml
  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy

    respond_to do |format|
      format.html { redirect_to(friends_url) }
      format.xml  { head :ok }
    end
  end
end
