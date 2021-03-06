class Item < ApplicationRecord
  has_one :value
  has_one :parent_category
  accepts_nested_attributes_for :value, allow_destroy: true
  accepts_nested_attributes_for :parent_category, allow_destroy: true

  enum status: {exhibition: 0, exhibition_stop: 1, trade: 2, sold: 3}

  enum item_condition: {newer: 0, like_new: 1, good: 2, normal: 3, fair: 4, poor: 5 }

  scope :with_category, -> { joins(:parent_category) }
  scope :search_status, -> (status) { where(status: status ) }
  scope :search_category, -> (category_id) { where(large_category: 'category_id' )}
  scope :search_brand, -> (brand_name) { where("name like '%" + brand_name + "%'")}


  belongs_to :user

  validates :status, presence: true
  validates :name, presence: true
  validates :image, presence: true
  validates :description, presence: true
  validates :item_condition, presence: true
  validates :ship_from, presence: true
  validates :delivery_fee, presence: true
  validates :pre_date, presence: true

  mount_uploader :image, ImageUploader
end
