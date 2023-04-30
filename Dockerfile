/*
 * @Author: KJD jingdakang@gmail.com
 * @Date: 2023-04-30 22:42:44
 * @LastEditors: KJD jingdakang@gmail.com
 * @LastEditTime: 2023-04-30 23:12:49
 * @FilePath: \chatgpt-web-application\Dockerfile
 * @Description: 这是默认设置,请设置`customMade`, 
 */
# Set the base image
FROM node:16

# Create and set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose port 3001
EXPOSE 3001

# Start the node server
CMD ["node", "index.js"]
