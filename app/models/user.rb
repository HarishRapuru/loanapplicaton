class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :pan_image,PanImageUploader
  mount_uploader :aadhar_image, AadharImageUploader
  mount_uploader :address_image, AddressImageUploader
end
