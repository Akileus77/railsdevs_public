# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  admin                  :boolean          default(FALSE)
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
<<<<<<< HEAD
#  developer              :boolean          default(FALSE)
#  email                  :string           default(""), not null
#  employer               :boolean          default(FALSE)
=======
#  email                  :string           default(""), not null
>>>>>>> 07131c53cdaf8bb897e8dc70331bc50045732fff
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  last_name              :string
#  moderator              :boolean
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  include SimpleDiscussion::ForumUser
<<<<<<< HEAD

  has_person_name
  has_many :jobs, dependent: :destroy
=======
  has_person_name
>>>>>>> 07131c53cdaf8bb897e8dc70331bc50045732fff

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

<<<<<<< HEAD
=======

>>>>>>> 07131c53cdaf8bb897e8dc70331bc50045732fff
  def name
    "#{first_name} #{last_name}"
  end
end
