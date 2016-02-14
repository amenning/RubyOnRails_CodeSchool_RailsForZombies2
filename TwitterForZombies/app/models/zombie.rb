class Zombie < ActiveRecord::Base
  has_one :brain, dependent: :destroy
  after_save :decomp_change_notification, if: :decomp_changed?
  
  private
  
  def decomp_change_notification
    ZombieMailer.decomp_change(self).deliver
  end
  
end
