class BlobsController < ApplicationController
  before_action :set_reservation, only: %i[show edit update destroy confirmation]
  def index
    @memories = Memory.all
  end
end