class Teacher < ApplicationRecord
  has_secure_password

  before_save :normalize_email

  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}, presence: true, uniqueness: true

  private

  def normalize_email
    self.email = email.downcase
  end
end
