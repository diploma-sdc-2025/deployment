How to run the app:

1. Create an empty folder, inside it create 5 folders, each named like the services in github.
2. Clone each repo to each folder
3. Create the 6th folder, named deployement and clone this repo
4.  Add an env file to the project ( in deployement) with all the needed parameters 
5. Run the following command from the IDE for example, inside the deployement folder
   - docker compose build
6. Add an env file with all the needed parameters 
7. After the build is done, run the following command:
  - docker compose up
8. All done, the services are running
