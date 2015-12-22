class RespuestumPreguntum < ActiveRecord::Base
	belongs_to :preguntum
	belongs_to :respuestum
end
