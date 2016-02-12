class Zombie < ActiveRecord::Base
  has_one :brain, dependent: :destroy
end
