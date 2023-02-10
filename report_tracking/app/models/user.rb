class User < ApplicationRecord
  has_attached_file :profile_photo
  validates_attachment_content_type :profile_photo, content_type: /\Aimage\/.*\z/


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:member, :admin]
  after_initialize do
    if self.new_record?
      self.role ||= :member
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
