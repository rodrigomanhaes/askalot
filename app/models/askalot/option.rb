module Askalot
  class Option < ActiveRecord::Base
    belongs_to :question
    attr_accessible :text
  end
end
