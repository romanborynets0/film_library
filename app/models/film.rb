class Film < ApplicationRecord
  GENERALS = %w[action comedy drama horror romance thriller sci-fi fantasy animation documentary musical western].freeze
  has_many :comments, as: :commentable, dependent: :destroy
  validates :name, presence:true, uniqueness: { scope: :years_of_creation, message: "should happen once per name" }
  validates :description, presence:true
  validates :director, presence:true
  validates :duration, numericality: { only_integer: true, greater_than_or_equal_to: 30 }
  validate :genres_validation


  private
  def genres_validation
    unless genres.is_a?(Array) && genres.any? { |genre| genre.present? }
      errors.add("genres", "invalid",)
    end
  end

end




