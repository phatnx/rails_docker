# Sử dụng image base có sẵn với Ruby 2.7.5
FROM ruby:2.7.5

# Thiết lập thư mục làm việc
WORKDIR /app

RUN gem install nokogiri -v '1.15.6'

# Cài đặt Rails 5.2.0
RUN gem install rails -v '5.2.0'

# Copy các file cần thiết từ máy host vào container
COPY Gemfile Gemfile.lock ./

# Cài đặt các gem
RUN bundle install

# Copy toàn bộ mã nguồn của ứng dụng vào container
COPY . .