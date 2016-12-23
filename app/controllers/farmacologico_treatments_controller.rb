class FarmacologicoTreatmentsController < ApplicationController
	before_action :find_patient
	before_action :find_farmacologico_treatment, only: [:edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit]

	def new
	@farmacologico_treatment = FarmacologicoTreatment.new
	end


	def create
	@farmacologico_treatment = FarmacologicoTreatment.new(farmacologico_treatment_params)
	@farmacologico_treatment.patient_id = @patient.id
	@farmacologico_treatment.user_id = current_user.id
	
		if @farmacologico_treatment.save
			redirect_to patient_path(@patient)
		else
			render 'new'
		end	
	end

	def edit
	end
	
	def update
	
		if @farmacologico_treatment.update(farmacologico_treatment_params)
			redirect_to patient_path(@patient)
		else
			render 'edit'
				
		end	
	
		def destroy
			@farmacologico_treatment.destroy
			redirect_to patient_path(@patient)
		end

	end

		private

			def farmacologico_treatment_params
				params.require(:farmacologico_treatment).permit(:betabloqueantes, :bloqueantes_calcio, :stringieca, :diureticos, :colesteramina, :omeprazol, :antibioticos, :comentarios)
			end

			def find_patient
				@patient = Patient.find(params[:patient_id])
			end

			def find_farmacologico_treatment
				@farmacologico_treatment = FarmacologicoTreatment.find(params[:id])
				
			end

end

