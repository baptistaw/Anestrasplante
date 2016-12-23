class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	has_many :corevaluations
	has_many :actual_diseases
	has_many :actual_hepatics
	has_many :antecedent_hepatics
	has_many :antecedents
	has_many :complementarios_exams
	has_many :examen_fisicos
	has_many :farmacologico_treatments
	has_many :laboratory_exams
	has_many :patients
  		devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
