# # Stage 1: Build the React App
# FROM node:18-alpine AS build

# WORKDIR /app

# # Copy dependencies first for caching
# COPY package.json package-lock.json ./
# RUN npm install --frozen-lockfile

# # Copy application source code and build
# COPY . .
# RUN npm run build

# Stage 2: Development
FROM node:18-alpine AS development

WORKDIR /app

# Copy dependencies and install them
COPY package.json package-lock.json ./
RUN npm install --frozen-lockfile

# Copy the full source code
COPY . .

EXPOSE 8080 

# Change to match your React setup

CMD ["npm", "run", "dev"]

# # Stage 3: Production (Using Nginx)
# FROM nginx:alpine AS production

# # Copy the built React app from the build stage
# COPY --from=build /app/build /usr/share/nginx/html

# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]
