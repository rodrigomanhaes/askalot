def create_question(questionnaire, question_text, *options_text)
  opts = options_text.last.is_a?(Hash) ? options_text.pop : {}
  question = create(:question, { text: question_text,
    questionnaire: questionnaire }.merge(opts))
  options_text.each do |option_text|
    create(:option, text: option_text, question: question)
  end
end