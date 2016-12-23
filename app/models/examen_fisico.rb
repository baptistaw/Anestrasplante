class ExamenFisico < ActiveRecord::Base
belongs_to :patient
belongs_to :user
end
