class OrderItemsController < ApplicationController
before_filter :load_order
  # GET /order_items
  # GET /order_items.json
  

  # GET /order_items/1
  # GET /order_items/1.json
  

  # GET /order_items/new
  # GET /order_items/new.json
  

  # GET /order_items/1/edit
  def edit
    @order_item = OrderItem.find(params[:id])
  end

  # POST /order_items
  # POST /order_items.json
def create
@order_item = @order.order_items.new(quantity: 1, product_id: params[:product_id])
if @order_item.save
redirect_to @order, notice: "Successfully created order item."
else
render action: 'new'
end
end


  # PUT /order_items/1
  # PUT /order_items/1.json
  def update
    @order_item = OrderItem.find(params[:id])

    respond_to do |format|
      if @order_item.update_attributes(params[:order_item])
        format.html { redirect_to @order_item, notice: 'Order item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_items/1
  # DELETE /order_items/1.json
  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy

    respond_to do |format|
      format.html { redirect_to order_items_url }
      format.json { head :no_content }
    end
  end
end
