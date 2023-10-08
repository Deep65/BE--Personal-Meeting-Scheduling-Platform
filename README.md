# Personal-Meeting-Scheduling-Platform (Backend)

## Description

Personal Meeting Scheduling Platform allows users to register and connect their Google calendar. The platform offers a unified view of the Google calendar in a custom week view calendar and allow users to define their availability for the next three months.
 -- Users can book time slots on another user's calendar based on their availability, specifying the duration of the meeting.
 -- User registration also include email validation using OTP for validating the account.

## Table of Contents

- [Personal-Meeting-Scheduling-Platform (Backend)](#personal-meeting-scheduling-platform-backend)
  - [Description](#description)
  - [Table of Contents](#table-of-contents)
  - [Installation](#installation)
  - [Usage](#usage)
  - [3rd Party API](#3rd-party-api)
  - [License](#license)

## Installation

Before you can run this project, please make sure you have Node.js and npm installed on your machine.

1. **Clone the Repository:**
git clone <https://github.com/Deep65/BE--Personal-Meeting-Scheduling-Platform.git>

2. **Navigate to the Project Directory:**
cd be--personal-meeting-scheduling-platform

3. **Install Dependencies:**
npm install

4. **Set Up Environment Variables:**

- Create a `.env` file in the project root directory.
- Add the necessary environment variables to this file, such as database credentials and API keys. You can refer to the `.env.example` file in the repository for guidance.

5.  **Database Setup:**

- Make sure you have a MySQL database set up and running.
- Update the database configuration in `config/config.json` to match your database settings.
- Also you can run muigrations file in `migrations/migration.sql` to have the schema according to the needs.

6.  **Run the Application in Development Mode:**
npm run dev

This will start the development server. You can access the application at `http://localhost:PORT` (replace `PORT` with the specified port in your `.env` file).

Please make sure to follow these steps in order to successfully set up and run the project on your local machine. If you encounter any issues during the installation process, refer to the project's [GitHub Issues](https://github.com/Deep65/BE--Personal-Meeting-Scheduling-Platform/issues) or [contact the author](https://github.com/Deep65) for assistance.

## Usage

To use this application, follow these steps:

1. **Registration and Email Verification:**
   - Users must register themselves by providing their basic details.
   - After registration, users have to verify their email address through an OTP (One-Time Password) sent to their registered email.

2. **Logging In:**
   - Once registered and verified, users can log in to the application using their credentials.

3. **Syncing Google Calendar:**
   - After logging in, users have the option to sync their Google Calendar with the application.
   - This feature allows users to view their Google Calendar events in a custom week calendar within the app.

## 3rd Party API

- Google Cloud Console - Mail API
- Google Calendar API

## License

This project is licensed under the [MIT License](LICENSE).
