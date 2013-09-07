class Checkout < ActiveRecord::Base
  has_one :books
end
