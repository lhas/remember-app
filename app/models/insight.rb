class Insight < ActiveRecord::Base
  validates :content, presence: true

  belongs_to :user

  before_create :append_to_user

  def append_to_user
    if user_signed_in?
      self.user_id = current_user.id
    end
  end
end