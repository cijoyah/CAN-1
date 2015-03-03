class Project < ActiveRecord::Base
  
  has_many :comments
  has_many :ratings
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :brands

  # self association (to assign projects that are similar to each other)
  has_many :similarities, foreign_key: "similar_id", dependent: :destroy
  has_many :reverse_similarities, class_name: "Similarity", foreign_key: "similee_id", dependent: :destroy
  has_many :projects, through: :similarities, source: "similee"
  
  # letsrate_rateable

  def similar_projects
    self.projects.where.not(id: self.id)
  end
end
