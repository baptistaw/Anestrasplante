class CorevaluationsController < ApplicationController

	before_action :find_patient
	before_action :find_corevaluation, only: [:edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit]

	def new
	@corevaluation = Corevaluation.new
	end


	def create
	@corevaluation = Corevaluation.new(corevaluation_params)
	@corevaluation.patient_id = @patient.id
	@corevaluation.user_id = current_user.id
	
		if @corevaluation.save
			redirect_to patient_path(@patient)
		else
			render 'new'
		end	
	end

	def edit
	end
	
	def update
	
		if @corevaluation.update(corevaluation_params)
			redirect_to patient_path(@patient)
		else
			render 'edit'
				
		end	
	
		def destroy
			@corevaluation.destroy
			redirect_to patient_path(@patient)
		end

	end

		private

			def corevaluation_params
				params.require(:corevaluation).permit(:causa_hepatopatia, :peso, :talla, :pxif, :meld, :melde, :child, :asa, :maximos_riesgos, :ingresa_lista, :causa_no_ingreso, :estudios_pendientes, :candidato_fastrack, :candidato_tranexamico)
			end

			def find_patient
				@patient = Patient.find(params[:patient_id])
			end

			def find_corevaluation
				@corevaluation = Corevaluation.find(params[:id])
				
			end
end
