class Newspaper < ApplicationRecord
  # == Attributes =================================================================================

  # == Constants ==================================================================================

  # == Class Methods ==============================================================================

  # == Extensions =================================================================================

  # == Instance Methods ===========================================================================

  # == Relationships ==============================================================================

  belongs_to :category

  # == Scopes =====================================================================================

  # == Validations ================================================================================

  validates :header, :body, :link, :category, presence: true

  # == Raise errors  ==============================================================================
end