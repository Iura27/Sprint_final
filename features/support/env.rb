require 'cucumber'
require 'capybara'
require 'selenium-webdriver'
require 'rspec'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'

ENVIRONMENT = ENV['ENVIRONMENT']
puts ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
URL = ENVIRONMENT_CONFIG['url']

Capybara.register_driver :my_chrome do |app|
   #caps = Selenium::WebDriver::Remote::Capabilities.chrome("google::chromeOptions" => {"args" => ['--incognito', --'start-maximized', '--window-size-1420-835']}) 
   #if ENV['HEADLESS']
   # caps['google:chromeOptiions']['args'] << '--headles'
#end
   #options = { browser: :chrome, desired_capabilities: caps }
   #Capybara::Selenium::Driver.new(app, options)

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
   #client = Selenium::WebDriver::Remote::Http::Default.new
   #client.read_timeout = 90
   #options = { browser: :chrome, desired_capabilities: caps, http_client: client }

   puts 'Rising driver'
   Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)

end

Capybara.default_driver = :my_chrome
Capybara.app_host = URL
Capybara.default_max_wait_time = 10
