# == Schema Information
#
# Table name: properties
#
#  id           :integer          not null, primary key
#  abbreviation :string(5)
#  address      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_properties_on_abbreviation  (abbreviation) UNIQUE
#
class Property < ApplicationRecord
  validates :abbreviation, presence: true, uniqueness: true, length: { minimum: 1 }
  validates :address, presence: true, length: { minimum: 5 }

  has_many :bills, dependent: :destroy
  has_many :tenants, dependent: :destroy

  # Remove whitespaces at the beginning and end of abbreviation
  def abbreviation=(value)
    super(value.squish)
  end

  # Remove whitespaces at the beginning and end of address
  def address=(value)
    super(value.squish)
  end
end
