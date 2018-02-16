module Node
  class NodesController < ApplicationController
    before_action :set_node, only: [:show, :edit, :update, :destroy, :commands, :rainbow, :bounce]
    helper_method :show_colors

    def index
      @nodes = ::Node::Node.all
    end

    def show
    end

    def new
      redirect_to nodes_url, notice: 'You are not authorized to do that.'
    end

    def edit
    end

    def create
      @node = ::Node::Node.new(node_params)
      if @node.save
        redirect_to node_path(@node), notice: 'Node was successfully created.'
      else
        render :new
      end
    end

    def update
      if @node.update(node_params)
        redirect_to node_path(@node), notice: 'Node was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @node.destroy
      redirect_to nodes_url, notice: 'node was successfully destroyed.'
    end

    def commands
    end

    def rainbow
      @node.rainbow
    end

    def bounce
      @node.bounce
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_node
        @node = ::Node::Node.find(params[:id])
      end


      # Only allow a trusted parameter "white list" through.
      def node_params
        params.fetch(:node_node, {}).permit(:id, :apiotics_instance, :led_attributes => ["led_state", "id"], :button_attributes => ["safe", "id"], :neo_pixel_stick_eight_attributes => ["led_color", "led_index", "id"])
      end

  end
end