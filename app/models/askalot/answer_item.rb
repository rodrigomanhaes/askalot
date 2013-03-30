module Askalot
  class AnswerItem < ActiveRecord::Base
    belongs_to :answer
    belongs_to :option
  end
end
