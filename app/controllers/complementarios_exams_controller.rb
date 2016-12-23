class ComplementariosExamsController < ApplicationController
	before_action :find_patient
	before_action :find_complementarios_exam, only: [:edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit]

	def new
	@complementarios_exam = ComplementariosExam.new
	end


	def create
	@complementarios_exam = ComplementariosExam.new(complementarios_exam_params)
	@complementarios_exam.patient_id = @patient.id
	@complementarios_exam.user_id = current_user.id
	
		if @complementarios_exam.save
			redirect_to patient_path(@patient)
		else
			render 'new'
		end	
	end

	def edit
	end
	
	def update
	
		if @complementarios_exam.update(complementarios_exam_params)
			redirect_to patient_path(@patient)
		else
			render 'edit'
				
		end	
	
		def destroy
			@complementarios_exam.destroy
			redirect_to patient_path(@patient)
		end

	end

		private

			def complementarios_exam_params
				params.require(:complementarios_exam).permit(:ecg, :ecocardiograma, :ecodobutamina, :ergometria, :holer, :rxtx, :funcional_respiratorio, :comentarios)
			end

			def find_patient
				@patient = Patient.find(params[:patient_id])
			end

			def find_complementarios_exam
				@complementarios_exam = ComplementariosExam.find(params[:id])
				
			end

end


