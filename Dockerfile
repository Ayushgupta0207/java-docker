# pull the base image  which gives all required tools and libraries
FROM openjdk:17-jdk-alpine


# create a folder where the app code will be stored
WORKDIR /app


# Copy the sourc code from you local HOST macine to you container
COPY src/Main.java /app/Main.java


# complile the application code
RUN javac Main.java


# run the application
CMD ["java", "Main"]


