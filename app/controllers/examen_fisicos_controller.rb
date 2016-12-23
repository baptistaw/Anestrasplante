class ExamenFisicosController < ApplicationController
	before_action :find_patient
	before_action :find_examen_fisico, only: [:edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit]

	def new
	@examen_fisico = ExamenFisico.new
	end


	def create
	@examen_fisico = ExamenFisico.new(examen_fisico_params)
	@examen_fisico.patient_id = @patient.id
	@examen_fisico.user_id = current_user.id
	
		if @examen_fisico.save
			redirect_to patient_path(@patient)
		else
			render 'new'
		end	
	end

	def edit
	end
	
	def update
	
		if @examen_fisico.update(examen_fisico_params)
			redirect_to patient_path(@patient)
		else
			render 'edit'
				
		end	
	
		def destroy
			@examen_fisico.destroy
			redirect_to patient_path(@patient)
		end

	end

		private

			def examen_fisico_params
				params.require(:examen_fisico).permit(:apertura_bucal, :mtp, :protesis, :cuello, :pa_sistolica, :fc, :soplos, :pp, :tiroides, :reperes_vvc, :red_venosa, :test_allen, :siquismo, :flapping, :estado_nutricional, :comentarios)
			end

			def find_patient
				@patient = Patient.find(params[:patient_id])
			end

			def find_examen_fisico
				@examen_fisico = ExamenFisico.find(params[:id])
				
			end

end

