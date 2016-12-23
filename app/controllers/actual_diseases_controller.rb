class ActualDiseasesController < ApplicationController

	before_action :find_patient
	before_action :find_actual_disease, only: [:edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit]

	def new
	@actual_disease = ActualDisease.new
	end


	def create
	@actual_disease = ActualDisease.new(actual_disease_params)
	@actual_disease.patient_id = @patient.id
	@actual_disease.user_id = current_user.id
	
		if @actual_disease.save
			redirect_to patient_path(@patient)
		else
			render 'new'
		end	
	end

	def edit
	end
	
	def update
	
		if @actual_disease.update(actual_disease_params)
			redirect_to patient_path(@patient)
		else
			render 'edit'
				
		end	
	
		def destroy
			@actual_disease.destroy
			redirect_to patient_path(@patient)
		end

	end

		private

			def actual_disease_params
				params.require(:actual_disease).permit(:clase_funcional, :enf_coronaria, :hta, :valvulopatia, :arritmias_marcapaso, :fumador, :epoc, :asma, :nefropatia_uropatia, :diabetes, :hipotiroidismo, :hipertiroidismo, :rge_gastritis, :alergias, :comentarios)
			end

			def find_patient
				@patient = Patient.find(params[:patient_id])
			end

			def find_actual_disease
				@actual_disease = ActualDisease.find(params[:id])
				
			end

end

