FactoryGirl.define do
  factory :user_match_prediction do
    match
    prediction_type PredictionTypes::WINNER
    predicted_contestant { match.receiving_contestant }
    comment "Some random comment"
    user
  end

end