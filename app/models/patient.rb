class Patient < ActiveRecord::Base
	belongs_to :users
	has_many :corevaluations
	has_many :actual_diseases
	has_many :actual_hepatics
	has_many :antecedent_hepatics
	has_many :antecedents
	has_many :complementarios_exams
	has_many :examen_fisicos
	has_many :farmacologico_treatments
	has_many :laboratory_exams

 	attr_accessible       :nombre,  :apellido, :ci, :f_ingreso, :created_at, :updated_at,   :user_id, :fnr,      :sexo,      :prestador, :procedencia, :f_nacimiento

	validates :nombre, :presence => {:message => "Usted debe ingresar un nombre de paciente"}
	validates :apellido, :presence => {:message => "Usted debe ingresar un nombre de paciente"}
	validates :ci, :presence => {:message => "Usted debe ingresar un numero de CI del paciente sin puntos ni guiones incluyendo digito verificador"}, :numericality => {:only_integer => true, :message => "La CI debe ser un numero sin puntos ni comas ni guiones"}, length: {minimum: 7, maximum: 8, :message => "Numero de CI invalido"}
	validates :ci, :uniqueness => {:message => "Este numero de CI ya existe en la Base de Datos. CI es incorrecta o el paciente ya fue ingresado"}
	validates :f_ingreso, :presence => {:message => "Usted debe ingresar una fecha de ingreso al Programa de Trasplante "}
	validates :sexo, :presence => {:message => "Usted debe ingresar el sexo del paciente"}
	validates :prestador, :presence => {:message => "Usted debe ingresar una Institucón prestadora de salud de donde deriva el paciente"}
	validates :procedencia, :presence => {:message => "Usted debe ingresar la procedencia del paciente "}
	validates :f_nacimiento, :presence => {:message => "Usted debe ingresar la Fecha de Nacimiento del paciente"}

	def last_corevaluation
		corevaluations.order(created_at: :desc).first
	end
	def last_antecedent
		antecedents.order(created_at: :desc).first
	end
	def last_antecedenthepatic
		antecedent_hepatics.order(created_at: :desc).first
	end
	def last_actualdisease
		actual_diseases.order(created_at: :desc).first
	end
	def last_actualhepatic
		actual_hepatics.order(created_at: :desc).first
	end
	def last_examenfisico
		examen_fisicos.order(created_at: :desc).first
	end
	def last_tratamiento
		farmacologico_treatments.order(created_at: :desc).first
	end
	def last_examenes
		laboratory_exams.order(created_at: :desc).first
	end
	def last_complementariosexam
		complementarios_exams.order(created_at: :desc).first
	end


	 def self.to_csv(options = {})
	    CSV.generate(options) do |csv|
	      csv << column_names
	      all.each do |patient|
	        csv << patient.attributes.values_at(*column_names)
	      end
	    end
	  end

end

