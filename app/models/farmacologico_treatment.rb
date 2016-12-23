class FarmacologicoTreatment < ActiveRecord::Base
belongs_to :patient
belongs_to :user
end
