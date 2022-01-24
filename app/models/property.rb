class Property < ApplicationRecord
    belongs_to :customer, optional: true
    
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :prefecture
end
