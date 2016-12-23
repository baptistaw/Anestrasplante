class ActualHepaticsController < ApplicationController

before_action :find_patient
	before_action :find_actual_hepatic, only: [:edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit]

	def new
	@actual_hepatic = ActualHepatic.new
	end


	def create
	@actual_hepatic = ActualHepatic.new(actual_hepatic_params)
	@actual_hepatic.patient_id = @patient.id
	@actual_hepatic.user_id = current_user.id
	
		if @actual_hepatic.save
			redirect_to patient_path(@patient)
		else
			render 'new'
		end	
	end

	def edit
	end
	
	def update
	
		if @actual_hepatic.update(actual_hepatic_params)
			redirect_to patient_path(@patient)
		else
			render 'edit'
				
		end	
	
		def destroy
			@actual_hepatic.destroy
			redirect_to patient_path(@patient)
		end

	end

		private

			def actual_hepatic_params
				params.require(:actual_hepatic).permit(:s_hepatorrenal, :s_hepatopulmonar, :ht_pulmonar, :ht_portal, :ascitis, :esplenomeg, :varices_esof, :encefalopatia, :discrasia, :hiponatremia, :comentarios)
			end

			def find_patient
				@patient = Patient.find(params[:patient_id])
			end

			def find_actual_hepatic
				@actual_hepatic = ActualHepatic.find(params[:id])
				
			end
end

