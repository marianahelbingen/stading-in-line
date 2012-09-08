class CheckInsController < ApplicationController
  def new
  	@place = Place.find(params[:place_id])
  	@check_in = @place.check_ins.build
  end

  def create
  	@place = Place.find(params[:place_id])
  	@check_in = @place.check_ins.new(params[:check_in])

    respond_to do |format|
      if @check_in.save
        format.html { redirect_to @place, notice: 'Check in was successfully created.' }
        format.json { render json: @check_in, status: :created, location: @check_in }
      else
        format.html { render action: "new" }
        format.json { render json: @check_in.errors, status: :unprocessable_entity }
      end
    end
  end

end
