require "./spec_helper"

describe ExampleMarionette do
  # TODO: Write tests

  # it "WEBDRIVER_PATH" do
  #   path_expected = File.expand_path("~/.webdrivers/chromedriver", home: true)
  #   ExampleMarionette::WEBDRIVER_PATH.should eq(path_expected)
  # end

  it "works" do
    # session = Marionette::WebDriver.create_session(:chrome)
    options = Marionette.chrome_options(experimental_options: {"excludeSwitches" => ["enable-automation"]}, args: ["start-fullscreen"])
    session = Marionette::WebDriver.create_session(:chrome, capabilities: options)

    # Navigate to crystal-lang.org
    session.navigate("https://crystal-lang.org")

    session.current_url.should eq("https://crystal-lang.org/")

    sleep 5

    # # Start an action chain and perform it
    # session.perform_actions do
    #   # Click the "INSTALL" link
    #   click ".main-actions a:nth-child(1)"
    # end

    # sleep 5
    session.close
  end
end
