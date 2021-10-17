# == Schema Information
#
# Table name: bills
#
#  id          :integer          not null, primary key
#  amount      :decimal(8, 2)
#  end_date    :date
#  start_date  :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  property_id :integer          not null
#
# Indexes
#
#  index_bills_on_property_id  (property_id)
#
# Foreign Keys
#
#  property_id  (property_id => properties.id)
#
class Bill < ApplicationRecord
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_is_greater_than_start_date

  belongs_to :property

  def end_date_is_greater_than_start_date
    if start_date.present? && end_date.present? && end_date < start_date
      errors.add(:end_date, "can't be before start date")
    end
  end
end
