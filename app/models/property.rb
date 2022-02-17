class Property < ApplicationRecord
    belongs_to :customer, optional: true

    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :prefecture

    has_many :consultation_details, dependent: :destroy
    accepts_nested_attributes_for :consultation_details, reject_if: lambda {|attributes| attributes['content'].blank?}
end
