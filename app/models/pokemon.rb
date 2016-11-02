# == Schema Information
#
# Table name: pokemons
#
#  id         :integer          not null, primary key
#  name       :string
#  level      :integer
#  trainer_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  health     :integer
#

class Pokemon < ActiveRecord::Base
	belongs_to :trainer
	validates :name, uniqueness: true, presence: true
end
