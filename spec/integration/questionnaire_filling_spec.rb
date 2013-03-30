require 'spec_helper'

feature 'questionnaire filling' do
  let(:questionnaire) do
    questionnaire = create(:questionnaire)
    create_question(questionnaire, 'Who discovered Brazil?',
      'Pedro Alvares Cabral', 'Diego Armando Maradona', 'Cristoforo Colombo',
      'Marco Polo')
    create_question(questionnaire, "Who invented the airplane?",
      "Wachowski Brothers", "Mario Brothers", "Alberto Santos-Dumont",
      "Warner Brothers", multiple: true)
    questionnaire
  end

  before(:each) do
    visit new_questionnaire_answer_path(questionnaire)
  end

  scenario 'choose single options' do
    choose "Pedro Alvares Cabral"
    check "Alberto Santos-Dumont"
    click_button "Answer"
    page.should have_content 'Who discovered Brazil? Pedro Alvares Cabral'
    page.should have_content 'Who invented the airplane? Alberto Santos-Dumont'
  end

  scenario 'choose multiple options' do
    choose "Pedro Alvares Cabral"
    check "Alberto Santos-Dumont"
    check "Mario Brothers"
    click_button "Answer"
    page.should have_content 'Who discovered Brazil? Pedro Alvares Cabral'
    page.should have_content 'Who invented the airplane? Mario Brothers, Alberto Santos-Dumont'
  end
end