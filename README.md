# YouTube Data Download
This repository contains a Jupyter Notebook (`youtube_data_download.ipynb`) that demonstrates how to download data from YouTube using the YouTube Data API.

## Description

This Python script performs the following tasks:
1. Retrieves channel information (name, ID, handle) for specified YouTube channels.
2. Collects video data from these channels, including views, likes, comments, and other statistics.
3. Processes and formats the data for SQL compatibility.
4. Stores the collected data in a MySQL database.

The primary goal of this project is to serve as a portfolio piece and a learning exercise in working with APIs, data processing, and database management.

## Technologies Used and Prerequisites

- Python 3.10.9
- MySQL 8.0.37
- YouTube Data API v3

Before you begin, ensure you have met the following requirements:
- You have installed Python 3.x.
- You have installed Jupyter Notebook.
- You have a Google account to access the YouTube Data API.

## Quick Start

For those who want to get up and running quickly:

1. Clone the repository: `git clone https://github.com/RockManRK/YouTubeDataCollector`
2. Install dependencies: `pip install -r requirements.txt`
3. Set up your MySQL database:
   - Open the `schema.sql` file and replace `{DATABASE_NAME}` with your desired database name.
   - Run the SQL script in your MySQL environment: `mysql -u your_username -p < schema.sql`
4. Update the `.env` file with your database credentials and YouTube API key
5. Run the Jupyter notebook: `jupyter notebook youtube_data_download.ipynb`
6. Execute all cells in the notebook

For more detailed instructions, see the full installation and usage sections below.

## Project Structure

```
YouTubeDataCollector/
│
├── .env.example                 # Example environment variable file
├── .gitignore                   # Git ignore rules
├── LICENSE                      # License file (MIT)
├── requirements.txt             # Python dependencies
├── schema.sql                   # SQL script to set up the initial database
├── youtube_data_download.ipynb  # Main Jupyter notebook with the code
└── README.md                    # This file
```

## Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/RockManRK/YouTubeDataCollector
    ```
2. Navigate to the project directory:
    ```sh
    cd YouTubeDataCollector
    ```
3. Install the required Python packages:
    ```sh
    pip install -r requirements.txt
    ```

## Configuration

1. In the project directory, you'll find a file named `.env.example`. This file contains template environment variables.

2. Create a copy of this file and name it `.env`. You can do this in several ways:
   - On Unix-like systems (Linux, macOS), you can use the terminal:
     ```sh
     cp .env.example .env
     ```
   - On Windows, you can use the command prompt:
     ```
     copy .env.example .env
     ```
   - Alternatively, you can simply create a new file named `.env` and copy the contents of `.env.example` into it using any text editor.

3. Open the newly created `.env` file in a text editor.

4. Update the values in the `.env` file with your specific details:
   - Replace `YOUR_YOUTUBE_API_KEY` with the API key you obtained from the Google Developers Console.
   - Update the database connection details (DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) with your MySQL database information.

5. Save the `.env` file.

This configuration file will be used by the script to access your YouTube API key and connect to your database.

### Obtaining a YouTube API Key

If you haven't obtained a YouTube API key yet, follow these steps:

1. Go to the [Google Developers Console](https://console.developers.google.com/).
2. Create a new project or select an existing one.
3. Enable the YouTube Data API v3 for your project.
4. Create credentials (API Key) for the YouTube Data API.
5. Copy the API Key and add it to your `.env` file as described above.

For detailed instructions, refer to the [YouTube Data API documentation](https://developers.google.com/youtube/v3/getting-started).

## Database Setup

This project requires a MySQL database. Follow these steps to set up the required database structure:

1. Open the `schema.sql` file in a text editor.

2. Replace all occurrences of `{DATABASE_NAME}` with your desired database name.

3. Run the SQL script in your MySQL environment. You can do this in several ways:

   a. Via command line:
      ```sh
      mysql -u your_username -p < schema.sql
      ```
      Replace `your_username` with your MySQL username. You'll be prompted to enter your password.

   b. Or, if you prefer to enter your password directly in the command:
      ```sh
      mysql -u your_username -pyour_password < schema.sql
      ```
      Replace `your_username` and `your_password` with your MySQL credentials. Note that there is no space between `-p` and your password.

   c. Alternatively, you can use a MySQL client like MySQL Workbench:
      - Open MySQL Workbench and connect to your server
      - Open the `schema.sql` file
      - Execute the script

This will create the necessary database and tables for the YouTubeDataCollector to function.

Note: Ensure that your MySQL server is running before executing these commands. If you encounter any permission issues, you may need to use `sudo` (on Unix-like systems) or run your command prompt as an administrator (on Windows).

## Usage

1. Open the Jupyter Notebook:
    ```sh
    jupyter notebook youtube_data_download.ipynb
    ```
2. Run the cells in order to collect data from the specified YouTube channels and store it in your MySQL database.

When you run the notebook, you can expect the following:
- The script will start by executing a function to fetch details of one or more YouTube channels. You'll need to specify the names of the channels you want to collect data from. This function will retrieve the ID, Name, and Handle for each channel.
- Using the retrieved channel information, the script will then authenticate with the YouTube API using your provided key.
- For each channel, it will collect data on recent videos (views, likes, comments, etc.).
- The collected data will be processed and formatted for SQL compatibility.
- Finally, the data will be stored in your configured MySQL database.

Note: The process may take some time depending on the number of channels and videos being processed.

## Data Visualization

While not part of this repository, the collected data is visualized using Power BI. You can view the dashboard here:
[YouTube Channel Analytics Dashboard](https://app.powerbi.com/view?r=eyJrIjoiNDUyZGQyZTMtZGQzZC00MDc4LWE0MTUtMzRkYzUwZWE1NDk1IiwidCI6IjI3YTMzZDA5LTU1MWUtNDYwYy1hMjk4LWFhMmNhM2E4ZGRiOCJ9&pageName=c58b386e2fc7a380722c)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

Davi Prata
- GitHub: [RockManRK](https://github.com/RockManRK)
- Email: rockmanrk@hotmail.com

If you have any questions, please open an issue or contact [Me](mailto:rockmanrk@hotmail.com).

## Additional Information

- `requirements.txt`: This file contains a list of Python packages required to run the project. Ensure you install these packages using the command provided in the Installation section.
- `.env.example`: This file serves as a template for your environment variables. Copy this file to `.env` and update it with your specific configuration details.

## Acknowledgments

- YouTube Data API documentation
- MySQL Connector/Python documentation
