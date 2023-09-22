require 'cucumber'
require 'capybara'
require 'selenium-webdriver'
require 'rspec'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'
require 'parallel_tests'

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

ENVIRONMENT = ENV['ENVIRONMENT']
puts ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
URL = ENVIRONMENT_CONFIG['url']

Capybara.register_driver :my_chrome do |app|
   

   options = Selenium::WebDriver::Chrome::Options.new
   options.add_argument('--incognito')
   options.add_argument('--start-maximized')
   options.add_argument('--window-size-1420-835')
   options.add_argument('--ignore-ssl-errors')
   options.add_argument('--ignore-certificate-errors')
   options.add_argument('--disable-popup-blocking')
   options.add_argument('--disable-gpu')
   options.add_argument('--disable-translate')
   options.add_argument('--no-sandbox')
   options.add_argument('--acceptInsecureCerts=true')
   options.add_argument('--disable-impl-side-painting')
   options.add_argument('--debug_level=3')

   if ENV['HEADLESS']
       options.add_argument('--headless')
       options.add_argument('--disable-site-isolation-trials')
   end

   puts 'Rising driver'
   Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

# Adicione a configuração do driver do Firefox
Capybara.register_driver :my_firefox do |app|
   options = Selenium::WebDriver::Firefox::Options.new
   options.add_argument('--headless') if ENV['HEADLESS'] # Opcional: executar em modo headless
   options.add_argument('--disable-site-isolation-trials')
   options.add_argument('--start-maximized')
   
   # Crie o driver do Firefox
   Capybara::Selenium::Driver.new(app, browser: :firefox, options: options)
 end

 # Configuração do driver padrão com base na variável de ambiente BROWSER
if ENV['BROWSER'] == 'firefox'
   Capybara.default_driver = :my_firefox
 else
   Capybara.default_driver = :my_chrome
 end
 
 


Capybara.app_host = URL
Capybara.default_max_wait_time = 10



