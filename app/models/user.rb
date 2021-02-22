class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :build_dashboard

  has_many :journals, dependent: :destroy
  has_many :meetings, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :agendas, dependent: :destroy
  has_one :dashboard, dependent: :destroy

  private

    def build_dashbaord
      Dashbaord.create(user_id: self.id)
    end
end
