module Askalot
  class Question < ActiveRecord::Base
    belongs_to :questionnaire
    has_many :options
    attr_accessible :text
  end
end
