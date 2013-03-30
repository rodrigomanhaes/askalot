module Askalot
  class Questionnaire < ActiveRecord::Base
    attr_accessible :title
    has_many :questions
  end
end
