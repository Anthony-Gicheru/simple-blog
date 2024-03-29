class Post < ApplicationRecord
  has_rich_text :content
  has_one_attached :cover_image
  
  validates :title, presence: true
  validates :body, presence: true

  scope :sorted, -> { order(published_at: :DESC, updated_at: :DESC) }
  scope :draft, -> { where(published_at: nil) }
  scope :published, -> { where('published_at <= ?', Time.current) }
  scope :scheduled, -> { where('published_at > ?', Time.current) }

  def draft?
    published_at.nil?
  end

  def published?
    published_at? && published_at <= Time.current
  end

  def scheduled?
    published_at? && published_at > Time.current
  end
end
