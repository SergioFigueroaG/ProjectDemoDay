class PartnerEventsController < ApplicationController
  before_action :set_partner_event, only: [:show, :edit, :update, :destroy]

  # GET /partner_events
  # GET /partner_events.json
  def index
    @partner_events = PartnerEvent.all
  end

  # GET /partner_events/1
  # GET /partner_events/1.json
  def show
  end

  # GET /partner_events/new
  def new
    @partner_event = PartnerEvent.new
  end

  # GET /partner_events/1/edit
  def edit
  end

  # POST /partner_events
  # POST /partner_events.json
  def create
    @partner_event = PartnerEvent.new(partner_event_params)

    respond_to do |format|
      if @partner_event.save
        format.html { redirect_to @partner_event, notice: 'Partner event was successfully created.' }
        format.json { render :show, status: :created, location: @partner_event }
      else
        format.html { render :new }
        format.json { render json: @partner_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partner_events/1
  # PATCH/PUT /partner_events/1.json
  def update
    respond_to do |format|
      if @partner_event.update(partner_event_params)
        format.html { redirect_to @partner_event, notice: 'Partner event was successfully updated.' }
        format.json { render :show, status: :ok, location: @partner_event }
      else
        format.html { render :edit }
        format.json { render json: @partner_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partner_events/1
  # DELETE /partner_events/1.json
  def destroy
    @partner_event.destroy
    respond_to do |format|
      format.html { redirect_to partner_events_url, notice: 'Partner event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partner_event
      @partner_event = PartnerEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partner_event_params
      params.require(:partner_event).permit(:event_id, :user_id, :description, :state, :type_partners, :correo)
    end
end
