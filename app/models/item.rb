class Item < ApplicationRecord
  belongs_to :category
  has_many :scanned_in, dependent: :destroy
  has_many :scanned_out, dependent: :destroy
  
  attribute :category_name, :string

  validates :name, presence: true 
  validates_uniqueness_of :barcode, case_sensitive: true
  validates :count, numericality: { greater_than_or_equal_to: 0 }
  validates :cost, numericality: { greater_than_or_equal_to: 0 }
  validates :threshold, numericality: { greater_than_or_equal_to: 0 }
end
