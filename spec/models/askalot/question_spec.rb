require 'spec_helper'

module Askalot
  describe Question do
    it 'is multiple if kind == "multiple"' do
      build(:question).should_not be_multiple
      build(:question, kind: 'multiple').should be_multiple
    end

    it 'is open-ended if kind == "open_ended"' do
      build(:question, kind: 'open_ended').should be_open_ended
      build(:question, kind: 'multiple').should_not be_open_ended
      build(:question).should_not be_open_ended
    end
  end
end
