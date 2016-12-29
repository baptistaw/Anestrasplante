class PatientsController < ApplicationController

before_action :find_patient, only: [:hcpaciente, :show, :edit, :update, :destroy]


	def index
		@q = Patient.ransack(params[:q])
		@patients = @q.result
		respond_to do |format|
			format.html
			 format.csv do
		      headers['Content-Disposition'] = "attachment; filename=\"listadopacientes\""
		      headers['Content-Type'] ||= 'text/csv'
		    end
			format.pdf do
				pdf = PatientPdf.new(@patients)
				send_data pdf.render, filename: 'Listado pacientes.pdf', type: 'application/pdf', dispositio: "inline" 
			end
		end
    end

    def hcpaciente
		respond_to do |format|
      	format.html
      	format.pdf do
        render pdf: "HCcompleta"   # Excluding ".pdf" extension.
      end
    end

    end


	def show
		 if params.has_key?(:opcion)
	      @opcion = params[:opcion]
	    else
	      @opcion = 1
		end
	end
	

	def new
		@patient= current_user.patients.build
	end

	def create
		@patient = current_user.patients.build(patient_params)

		if @patient.save
			redirect_to patients_path
		else
			render 'new'
		end

	end


	def edit
	end

	def update

		if @patient.update(patient_params)
			redirect_to patient_path(@patient)
		else
			render 'edit'
		end
	end


	def destroy

		@patient.destroy
		redirect_to root_path

	end


	private

		def patient_params
			params.require(:patient).permit(:id, :nombre, :apellido, :ci, :fnr, :sexo, :f_nacimiento, :f_ingreso, :prestador, :procedencia, :created_at, :comentarios)
		end

		def find_patient
			@patient = Patient.find(params[:id])
		end
end
