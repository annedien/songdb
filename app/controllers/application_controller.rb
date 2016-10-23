class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  config.generators do |g|
    g.javascript_engine = :js
    g.stylesheet_engine = :scss
    g.template_engine = :erb
  end
end
