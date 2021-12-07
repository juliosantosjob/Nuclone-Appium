Dado("que o usuário acesse o app") do
  @actions.acess_app
  @actions.home_validation
end

Quando("ele clicar na viuslização de saldo") do
  @actions.click_see_balance
end

Então("ele visualiza o seu saldo {string}") do |message_value|
  expect(@actions.method_name.text).to eql message_value
end
