class PatientPdf < Prawn::Document
	def initialize(patients)
		super :page_size => "A4", :page_layout => :landscape, :size => 9

		@patients = Patient.order("apellido ASC").all
		patient_id
	end

	def patient_id
		table patient_id_all do
		 row(0).font_style = :bold
	     self.row_colors = ["DDDDDD", "FFFFFF"]
    	 self.header = true

		end
	end

	def patient_id_all

		font_size 10
		text "Unidad Bi-Institucional"
		text "Programa Nacional de Trasplante Hepatico"
		text "Servicio de Anestesiología"
		move_down 15
	
		stroke_color "531290"
		stroke_horizontal_rule 

		pad(10) { text "Listado de Pacientes ingresados al sistema", :align => :center, :size => 18}
		stroke_horizontal_rule

		move_down 10

		[["Nombre", "Apellido", "CI", "FNR", "Sexo", "F.Nacimiento", "Procedencia", "F.Ingreso a Lista", "Prestador"]] +

		@patients.map do |patient|
			[patient.nombre, patient.apellido, patient.ci, patient.fnr, patient.sexo, patient.f_nacimiento, patient.procedencia, patient.f_ingreso, patient.prestador]

 		end

	end

end

