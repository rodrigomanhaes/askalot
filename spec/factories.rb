FactoryGirl.define do
  factory :questionnaire, class: Askalot::Questionnaire do
    title 'something'
  end

  factory :question, class: Askalot::Question do
    text 'something'
    questionnaire
  end

  factory :option, class: Askalot::Option do
    text 'something'
    question
  end
end