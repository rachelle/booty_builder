class User < ActiveRecord::Base
  has_many :photos
  has_many :meds
  has_many :maxs
  has_many :mins
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :name,  presence: true

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
