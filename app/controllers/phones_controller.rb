class PhonesController < ApplicationController
  before_action :set_phone, only: [:show, :edit, :update, :destroy]

  # GET /phones
  def index
    @phones = current_user.phones.all
  end

  # GET /phones/1
  def show
  end

  # GET /phones/new
  def new
    @phone = Phone.new
  end

  # GET /phones/1/edit
  def edit
  end

  # POST /phones
  def create
    #@phone = Phone.new(phone_params)
    #@phone.user_id = current_user.id
    @phone = current_user.phones.new(phone_params)
    if @phone.save
      redirect_to @phone, notice: 'Phone was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /phones/1
  def update
    if @phone.update(phone_params)
      redirect_to @phone, notice: 'Phone was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /phones/1
  def destroy
    @phone.destroy
    redirect_to phones_url, notice: 'Phone was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone
      @phone = Phone.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def phone_params
      params[:phone]
    end
end
