# Use the official Node.js image as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /quartz

# Copy the contents of the current directory into the container at /quartz
COPY . .

# Expose the port that your application will run on
EXPOSE 8080

# Install dependencies and run the build command
RUN npm install
CMD ["npx", "quartz", "build", "--serve"]
