class AntecedentsController < ApplicationController

	before_action :find_patient
	before_action :find_antecedent, only: [:edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit]

	def new
	@antecedent = Antecedent.new
	end


	def create
	@antecedent = Antecedent.new(antecedent_params)
	@antecedent.patient_id = @patient.id
	@antecedent.user_id = current_user.id
	
		if @antecedent.save
			redirect_to patient_path(@patient)
		else
			render 'new'
		end	
	end

	def edit
	end
	
	def update
	
		if @antecedent.update(antecedent_params)
			redirect_to patient_path(@patient)
		else
			render 'edit'
				
		end	
	
		def destroy
			@antecedent.destroy
			redirect_to patient_path(@patient)
		end

	end

		private

			def antecedent_params
				params.require(:antecedent).permit(:enf_coronaria, :hta, :valvulopatia, :arritmias_marcapaso, :fumador, :epoc, :asma, :nefropatia_uropatia, :diabetes, :hipotiroidismo, :hipertiroidismo, :rge_gastritis_ulcus, :alergias, :cirugia_abdominal, :comentarios)
			end

			def find_patient
				@patient = Patient.find(params[:patient_id])
			end

			def find_antecedent
				@antecedent = Antecedent.find(params[:id])
				
			end

end



