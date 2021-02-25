require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you"ve limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LibraryManagement
  class Application < Rails::Application
    # Khởi tạo mặc định cấu hình cho phiên bản Rails được tạo ban đầu.
    config.load_defaults 6.0
    # Cấu hình đường dẫn để load các file language
    config.i18n.load_path += Dir[Rails.root.join("config", "locales", "**", "*.{rb,yml}")]
    # Cấu hình những ngôn ngữ mà chúng ta cần hiển thị
    config.i18n.available_locales = [:en, :vi]
    # Cài đặt ngôn ngữ mặc định là tiếng Việt khi chạy ứng dụng.
    config.i18n.default_locale = :vi
  end
end
