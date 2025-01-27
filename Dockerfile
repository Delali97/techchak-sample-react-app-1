# ==== CONFIGURE =====
# Use a Node 16 base image
FROM node:16 
# Set the working directory to /app inside the container
WORKDIR /app
# Copy app files
COPY . .
# ==== BUILD =====
# Install dependencies (npm ci makes sure the exact versions in the lockfile gets installed)
RUN npm install -g npm@9.1.2
# RUN curl curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
# RUN bash -i -c 'nvm install v17.3.0'
# # Build the app
RUN npm install react-scripts@latest --force
# RUN npm run build
# # ==== RUN =======
# # Set the env to "production"
# ENV NODE_ENV production
# # Expose the port on which the app will be running (3000 is the default that `serve` uses)
EXPOSE 3000
# Start the app
CMD [ "npm", "start" ]
