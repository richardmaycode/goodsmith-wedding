class MemoriesController < ApplicationController
  include Pagy::Backend
  def index
    @pagy, @memories = pagy(Memory.with_attached_images.all, items: 3)
    
    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end

  def new
    @memory = Memory.new
  end

  def create
    @memory = Memory.new(memory_params)

    if @memory.save
      redirect_to memories_path
    else
      render :new
    end
  end

  private

  def memory_params
    params.require(:memory).permit(:submitter, :content, images: [])
  end
end
