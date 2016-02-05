class Membership < ActiveRecord::Base

  validates :account, :user, presence: true
  validates :role, inclusion: { in: SYSTEM_ROLES }

  belongs_to :account
  belongs_to :user

end
