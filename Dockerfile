# Use the official Ruby image
FROM ruby:2.7

# Set the working directory in the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock from the project directory to the working directory
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
