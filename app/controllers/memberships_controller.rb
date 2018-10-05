class MembershipsController < ApplicationController
	def create
		membership= Membership.create(user:current_user, spot: Spot.find(params[:spot_id]))
		redirect_to "/spots"
	end

	def destroy
		membership = Membership.find_by(spot:params[:spot_id], user:current_user)
		membership.destroy
		redirect_to "/spots" 
	end
end