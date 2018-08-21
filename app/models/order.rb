class Order < ApplicationRecord

  attr_accessible :order_date, :user_id
  has_many :orderitems
  belongs_to :user
end
