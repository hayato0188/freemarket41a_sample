class Item < ApplicationRecord
  has_one :value
  accepts_nested_attributes_for :value, allow_destroy: true

  mount_uploader :image, ImageUploader

  belongs_to :user

  validates :status, presence: true
  validates :name, presence: true
  validates :image, presence: true
  validates :description, presence: true
  validates :item_condition, presence: true
  validates :ship_from, presence: true
  validates :delivery_fee, presence: true
  validates :pre_date, presence: true

end
