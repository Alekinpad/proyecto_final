class User < ActiveRecord::Base
  has_one :store, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  has_many :user_wishlists, dependent: :destroy
  
  has_many :wishlists, through: :user_wishlists, dependent: :destroy
  
  has_many :products, through: :user_wishlists

  after_create :create_wishlists

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, :omniauth_providers => [:facebook]

  enum role: [ :other, :logged ]

  def self.find_for_facebook_oauth(auth)
    access_token = auth.credentials.token
    facebook = Koala::Facebook::API.new(access_token)

    user = User.where(provider: auth.provider, uid: auth.uid).first
    
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

    def create_wishlists
      Wishlist.find_each do |w|
        w.user_wishlists.create(user: self)
      end
    end

end
