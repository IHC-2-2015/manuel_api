class Evaluacione < ActiveRecord::Base
	has_many :respuestas
	belongs_to :grupo
	belongs_to :encuesta
end
