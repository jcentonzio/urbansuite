class TypeRoomsController < ApplicationController
  # GET /type_rooms
  # GET /type_rooms.xml
  def index
    @type_rooms = TypeRoom.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @type_rooms }
    end
  end

  # GET /type_rooms/1
  # GET /type_rooms/1.xml
  def show
    @type_room = TypeRoom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @type_room }
    end
  end

  # GET /type_rooms/new
  # GET /type_rooms/new.xml
  def new
    @type_room = TypeRoom.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @type_room }
    end
  end

  # GET /type_rooms/1/edit
  def edit
    @type_room = TypeRoom.find(params[:id])
  end

  # POST /type_rooms
  # POST /type_rooms.xml
  def create
    @type_room = TypeRoom.new(params[:type_room])

    respond_to do |format|
      if @type_room.save
        format.html { redirect_to(@type_room, :notice => 'Type room was successfully created.') }
        format.xml  { render :xml => @type_room, :status => :created, :location => @type_room }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @type_room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /type_rooms/1
  # PUT /type_rooms/1.xml
  def update
    @type_room = TypeRoom.find(params[:id])

    respond_to do |format|
      if @type_room.update_attributes(params[:type_room])
        format.html { redirect_to(@type_room, :notice => 'Type room was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @type_room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /type_rooms/1
  # DELETE /type_rooms/1.xml
  def destroy
    @type_room = TypeRoom.find(params[:id])
    @type_room.destroy

    respond_to do |format|
      format.html { redirect_to(type_rooms_url) }
      format.xml  { head :ok }
    end
  end
end
