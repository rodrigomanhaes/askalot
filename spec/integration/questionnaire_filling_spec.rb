require 'spec_helper'

feature 'questionnaire filling' do
  scenario 'basic multiple choice' do
    questionnaire = create(:questionnaire)
    create_question(questionnaire, 'Who discovered Brazil?',
      'Pedro Alvares Cabral', 'Diego Armando Maradona', 'Cristoforo Colombo',
      'Marco Polo')
    create_question(questionnaire, "Who invented the airplane?",
      "Wachowski Brothers", "Mario Brothers", "Alberto Santos-Dumont",
      "Warner Brothers")

    visit new_questionnaire_answer_path(questionnaire)
    check "Pedro Alvares Cabral"
    check "Alberto Santos-Dumont"
    click_button "Answer"
    page.should have_content 'Who discovered Brazil? Pedro Alvares Cabral'
    page.should have_content 'Who invented the airplane? Alberto Santos-Dumont'
  end
end