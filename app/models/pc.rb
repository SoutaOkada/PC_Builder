class Pc < ApplicationRecord
  has_many :cases ,dependent: :destroy
  has_many :cpus ,dependent: :destroy
  has_many :cpu_coolers ,dependent: :destroy
  has_many :drives ,dependent: :destroy
  has_many :fans ,dependent: :destroy
  has_many :memories ,dependent: :destroy
  has_many :motherboards ,dependent: :destroy
  has_many :others ,dependent: :destroy
  has_many :powers ,dependent: :destroy
  has_many :storages ,dependent: :destroy
  has_many :systems ,dependent: :destroy
  has_many :videocards ,dependent: :destroy
end
