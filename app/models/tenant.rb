# == Schema Information
#
# Table name: tenants
#
#  id            :integer          not null, primary key
#  move_in_date  :date
#  move_out_date :date
#  name          :string(30)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  property_id   :integer          not null
#
# Indexes
#
#  index_tenants_on_property_id  (property_id)
#
# Foreign Keys
#
#  property_id  (property_id => properties.id)
#
class Tenant < ApplicationRecord
  validates :name, presence: true, length: 2..30
  validates :move_in_date, presence: true
  validates :property_id, presence: true
  validate :move_out_date_is_greater_than_move_in_date

  belongs_to :property

  # Prevent consecutive spaces in tenant names
  def name=(value)
    super(value.squish)
  end

  def move_out_date_is_greater_than_move_in_date
    if move_in_date.present? && move_out_date.present? && move_out_date < move_in_date
      errors.add(:move_out_date, "can't be before move in date")
    end
  end
end
