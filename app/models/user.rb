class User < ActiveRecord::Base
  has_one :store
  has_many :likes
  has_many :comments
  has_many :user_wishlists
  has_many :wishlists, through: :user_wishlists


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, :omniauth_providers => [:facebook]

  enum role: [ :other, :logged ]

  def self.find_for_facebook_oauth(auth)
    user = User.where(provider: auth.provider, uid: auth.uid).first
    # The User was found in our database
    return user if user
    
    # Check if the User is already registered without Facebook
    user = User.where(email: auth.info.email).first
    return user if user

    User.create(
      name: auth.info.name, 
      provider: auth.provider, 
      uid: auth.uid, 
      email: auth.info.email,
      avatar: auth.info.image,
      # cover_photo: auth.extra.raw_info.cover,
      gender: auth.extra.raw_info.gender,
      birthday: auth.extra.raw_info.birthday,
      password: Devise.friendly_token[0,20])
  end

  def to_s
    name
  end

  private

end
