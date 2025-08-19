class Team < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :coach, presence: true
  validates :pg, presence: true
  validates :sg, presence: true
  validates :pf, presence: true
  validates :sf, presence: true
  validates :c, presence: true
end
