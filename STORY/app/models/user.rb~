class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :stories
  has_many :posts
  acts_as_voter
  has_attached_file :photo, styles: { medium: "200x200>", thumb: "50x50>" }, default_url: "https://cdn.thinglink.me/api/image/727110550026190849/1240/10/scaletowidth"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  validates_presence_of :username
  validates_uniqueness_of :username
end
