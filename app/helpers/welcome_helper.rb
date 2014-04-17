module WelcomeHelper
  def we_are_excited (options={})
    if options[:name].present?
      "We are so excited to see you, #{options[:name]}!"
    end
  end
end
# app/helpers/my_custom_helper.rb
