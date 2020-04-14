# Database Final Project
A web app for interacting with mock trial data

## Required Tools to Run
1. Node.JS, found here: https://nodejs.org/en/download/
2. .NET Core v3.1, found here: https://dotnet.microsoft.com/download/dotnet-core/3.1
3. MySQL

## Dev Environment Setup Instructions
1. cd into client and enter `npm i` to install node modules
2. To build the client app into bundle.js which resides in server/wwwroot, run `npx webpack` or `npx webpack -w`
3. cd into server and run `dotnet restore` to download required NuGet packages for server stack
4. Open /server/appsettings.json and edit the DefaultConnection string to the correct values for your machine
4. Also in server, run `dotnet run` or `dotnet watch run` to serve static bundled SPA
5. browse to <http://localhost:5000> and you should see the application

This application uses a React front end with Rest queries to a C# backend featuring Entity Framework as the connector to a MySQL database.