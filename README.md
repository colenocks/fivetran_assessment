# Fivetran CSE Take-Home Assessment

This code base includes the scripts and queries required for some of the questions on the assessment.

## Built using

1. JavaScript
2. NodeJS
3. MySQL

## Challenges

1. Using any method you like. Write the specific step by step instructions to execute the following tasks:

   - Extract all IP addresses into a single column.
   - Count unique IP addresses

2. Provide a working API call to pull all names from the project tracker table using curl headers for authentication. You need to sign up for a [free Airtable](https://airtable.com/invite/r/wxZbbm9H) account and navigate to the API documentation.

## Instructions

Create your own .env file in root directory and mirror the sample-env file.

## Available Scripts

In the project directory you can run the following scripts.

Extract all IP addresses into a single column and count unique IP addresses. Run:

```
node index.js
```

Pull all names from the project tracker table using curl headers for authentication. Run:

```
node airtable/script.js
```
