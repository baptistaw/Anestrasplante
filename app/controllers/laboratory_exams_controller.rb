class LaboratoryExamsController < ApplicationController
	before_action :find_patient
	before_action :find_laboratory_exam, only: [:edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit]

	def new
	@laboratory_exam = LaboratoryExam.new
	end


	def create
	@laboratory_exam = LaboratoryExam.new(laboratory_exam_params)
	@laboratory_exam.patient_id = @patient.id
	@laboratory_exam.user_id = current_user.id
	
		if @laboratory_exam.save
			redirect_to patient_path(@patient)
		else
			render 'new'
		end	
	end

	def edit
	end
	
	def update
	
		if @laboratory_exam.update(laboratory_exam_params)
			redirect_to patient_path(@patient)
		else
			render 'edit'
				
		end	
	
		def destroy
			@laboratory_exam.destroy
			redirect_to patient_path(@patient)
		end

	end

		private

			def laboratory_exam_params
				params.require(:laboratory_exam).permit(:hb, :hto, :plaquetas, :gb, :tp, :inr, :fibrinogeno, :aPTT, :glicemia, :azoemia, :creatininemia, :na, :k, :albumina, :proteinas_totales, :fa, :tgo, :tgp, :bt, :bd, :bi, :amilasemia, :hiv, :cmv, :vdrl, :tsh, :fecha_ultima_parac, :comentarios)
			end

			def find_patient
				@patient = Patient.find(params[:patient_id])
			end

			def find_laboratory_exam
				@laboratory_exam = LaboratoryExam.find(params[:id])
				
			end

end

