class User < ActiveRecord::Base
  has_one :store, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :user_wishlists, dependent: :destroy
  has_many :wishlists, through: :user_wishlists, dependent: :destroy

  after_create :create_wishlists

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

    def create_wishlists
      self.wishlists.create(
        name: "Love It",
        icon: "http://careers.iconstrategiesbpo.com/file/2014/08/heart-shape-button-300x300.png"
        )

      self.wishlists.create(
        name: "Hate It",
        icon: "http://careers.iconstrategiesbpo.com/file/2014/08/heart-shape-button-300x300.png"
        )

      self.wishlists.create(
        name: "Have It",
        icon: "http://careers.iconstrategiesbpo.com/file/2014/08/heart-shape-button-300x300.png"
        )
    end

end
