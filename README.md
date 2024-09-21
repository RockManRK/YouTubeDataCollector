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


Python 3.10.9
MySQL 8.0.37
YouTube Data API v3
Power BI (for visualization, not included in this repository)

Before you begin, ensure you have met the following requirements:
- You have installed Python 3.x.
- You have installed Jupyter Notebook.
- You have a Google account to access the YouTube Data API.

## Project Structure

```
YouTubeDataCollector/
│
├── .env.example                 # Example environment variable file
├── requirements.txt             # Python dependencies
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
    cd yourrepository
    ```
3. Install the required Python packages:
    ```sh
    pip install -r requirements.txt
    ```

## Configuration

1. Set up a MySQL database:
    ```sh
    cp .env.example .env
    ```
2. Copy `.env.example` to `.env` and update it with your YouTube API key and database connection details:
    ```sh
    cp .env.example .env
    ```
    Then edit `.env` with your specific details.

## Database Setup

This project requires a MySQL database. You can set up the required database structure using the provided schema.sql file:

1. Open the schema.sql file in a text editor.
2. Replace all occurrences of {DATABASE_NAME} with your desired database name.
3. Run the SQL script in your MySQL environment.
   You can do this via command line:
   Copymysql -u your_username -p < schema.sql
   Or you can copy and paste the contents into a MySQL client like MySQL Workbench.

This will create the necessary database and tables for the YouTubeDataCollector to function.

## Usage

1. Open the Jupyter Notebook:
    ```sh
    jupyter notebook youtube_data_download.ipynb
    ```
2. Run the cells in order to collect data from the specified YouTube channels and store it in your MySQL database.

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