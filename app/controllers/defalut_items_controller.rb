class DefalutItemsController < ApplicationController
  # GET /defalut_items
  # GET /defalut_items.xml
  def index
    @defalut_items = DefalutItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @defalut_items }
    end
  end

  # GET /defalut_items/1
  # GET /defalut_items/1.xml
  def show
    @defalut_item = DefalutItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @defalut_item }
    end
  end

  # GET /defalut_items/new
  # GET /defalut_items/new.xml
  def new
    @defalut_item = DefalutItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @defalut_item }
    end
  end

  # GET /defalut_items/1/edit
  def edit
    @defalut_item = DefalutItem.find(params[:id])
  end

  # POST /defalut_items
  # POST /defalut_items.xml
  def create
    @defalut_item = DefalutItem.new(params[:defalut_item])

    respond_to do |format|
      if @defalut_item.save
        format.html { redirect_to(@defalut_item, :notice => 'Defalut item was successfully created.') }
        format.xml  { render :xml => @defalut_item, :status => :created, :location => @defalut_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @defalut_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /defalut_items/1
  # PUT /defalut_items/1.xml
  def update
    @defalut_item = DefalutItem.find(params[:id])

    respond_to do |format|
      if @defalut_item.update_attributes(params[:defalut_item])
        format.html { redirect_to(@defalut_item, :notice => 'Defalut item was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @defalut_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /defalut_items/1
  # DELETE /defalut_items/1.xml
  def destroy
    @defalut_item = DefalutItem.find(params[:id])
    @defalut_item.destroy

    respond_to do |format|
      format.html { redirect_to(defalut_items_url) }
      format.xml  { head :ok }
    end
  end
end
