class AntecedentHepaticsController < ApplicationController

	before_action :find_patient
	before_action :find_antecedent_hepatic, only: [:edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit]

	def new
	@antecedent_hepatic = AntecedentHepatic.new
	end


	def create
	@antecedent_hepatic = AntecedentHepatic.new(antecedent_hepatic_params)
	@antecedent_hepatic.patient_id = @patient.id
	@antecedent_hepatic.user_id = current_user.id
	
		if @antecedent_hepatic.save
			redirect_to patient_path(@patient)
		else
			render 'new'
		end	
	end

	def edit
	end
	
	def update
	
		if @antecedent_hepatic.update(antecedent_hepatic_params)
			redirect_to patient_path(@patient)
		else
			render 'edit'
				
		end	
	
		def destroy
			@antecedent_hepatic.destroy
			redirect_to patient_path(@patient)
		end

	end

		private

			def antecedent_hepatic_params
				params.require(:antecedent_hepatic).permit(:s_hepatorrenal, :s_hepatopulmonar, :ht_pulmonar, :ht_portal, :ascitis, :esplenomeg, :varices_esof, :encefalopatia, :discrasia, :hiponatremia, :comentarios)
			end

			def find_patient
				@patient = Patient.find(params[:patient_id])
			end

			def find_antecedent_hepatic
				@antecedent_hepatic = AntecedentHepatic.find(params[:id])
				
			end

end




