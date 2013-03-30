require 'spec_helper'

feature 'questionnaire rendering' do
  scenario 'simple multiple choice' do
    questionnaire = create(:questionnaire)
    create_question(questionnaire, 'Who discovered Brazil?',
      'Pedro Alvares Cabral', 'Diego Armando Maradona', 'Cristoforo Colombo',
      'Marco Polo')
    create_question(questionnaire, "Who invented the airplane?",
      "Wachowski Brothers", "Mario Brothers", "Alberto Santos-Dumont",
      "Warner Brothers")

    visit run_questionnaire_path(questionnaire)
    within('.question:nth-child(1)') do
      page.should have_content 'Who discovered Brazil?'
      page.should have_unchecked_field 'Pedro Alvares Cabral'
      page.should have_unchecked_field 'Diego Armando Maradona'
      page.should have_unchecked_field 'Cristoforo Colombo'
      page.should have_unchecked_field 'Marco Polo'
    end
    within('.question:nth-child(2)') do
      page.should have_content 'Who invented the airplane?'
      page.should have_unchecked_field 'Wachowski Brothers'
      page.should have_unchecked_field 'Mario Brothers'
      page.should have_unchecked_field 'Alberto Santos-Dumont'
      page.should have_unchecked_field 'Warner Brothers'
    end
  end
end