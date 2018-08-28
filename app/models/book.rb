class Book < ApplicationRecord
	belongs_to :category
	belongs_to :author
	belongs_to :publisher

	validates :title, presence: true
	validates :isbm, presence: true
	validates :format, presence: true
	validates :year, presence: true
	validates :coverpath, presence: true
	validates :except, presence: true
	validates :pages, presence: true
	validates :price, presence: true
	validates :buy, presence: true
	validates :author_id, presence: true
	validates :category_id, presence: true
	validates :publisher_id, presence: true
end
