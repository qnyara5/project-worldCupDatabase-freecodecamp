# ⚽ World Cup Database

A PostgreSQL database project that models FIFA World Cup match data and demonstrates database design, data import automation using Bash, and SQL querying.

This project was completed as part of the **freeCodeCamp Relational Database Certification**.

---

## 📖 About

The objective of this project is to build a relational database that stores FIFA World Cup match information from the final three rounds of tournaments since 2014.

The project consists of three main parts:

1. Designing the database schema.
2. Importing data from a CSV file using a Bash script.
3. Writing SQL queries to retrieve meaningful statistics from the database.

---

## 🎓 Certification Project

This repository contains my solution for the **World Cup Database** certification project from the **freeCodeCamp Relational Database Certification**.

---

## 🛠️ Technologies Used

- PostgreSQL
- Bash
- SQL
- Linux Command Line

---

## 📂 Project Structure

```text
.
├── games.csv          # Dataset containing World Cup matches
├── insert_data.sh     # Imports CSV data into PostgreSQL
├── queries.sh         # SQL queries for retrieving statistics
├── worldcup.sql       # Database dump
└── README.md
```

Each game references two teams:

- Winner
- Opponent

Both `winner_id` and `opponent_id` are foreign keys that reference `teams.team_id`.

---

## 📥 Data Import

The `insert_data.sh` script:

- Reads the `games.csv` file.
- Inserts unique teams into the `teams` table.
- Retrieves generated IDs.
- Inserts every match into the `games` table.
- Prevents duplicate team entries.

The script uses Bash together with PostgreSQL commands (`psql`) to automate data insertion.

---

## ▶️ Running the Project

### 1. Create the database

```bash
createdb worldcup
```

### 2. Import the schema

```bash
psql -d worldcup -f worldcup.sql
```

### 3. Import the data

```bash
./insert_data.sh
```

### 4. Execute the queries

```bash
./queries.sh
```

---

## 📜 License

This project was completed for educational purposes as part of the **freeCodeCamp Relational Database Certification**.
