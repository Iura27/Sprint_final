#Before do 
 # puts 'Estou executando entes de cada cenario'

#end

#After do |scenario |
#puts 'Estou executando depois'
#puts scenario.failed?

#end

#After('@limpar_banco') do
#puts 'Executando depois do cenario Carregar pagina do google CENÁRIO 2'
#end

After do |scenario|
 if scenario.failed?
  screenshot = Capybara.page.save_screenshot("reports/screenshots/sc.png")
  attach(screenshot, 'image/png')
  end
end