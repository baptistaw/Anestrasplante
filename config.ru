# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
require 'csv'

config.middleware.use PDFKit::Middleware, :print_media_type => true