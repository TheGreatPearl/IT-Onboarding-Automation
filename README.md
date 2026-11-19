# IT Onboarding Automation (PowerShell)

A lightweight PowerShell automation lab simulating an IT Helpdesk / SysAdmin employee onboarding workflow. The script parses new hire records from a structured CSV file, validates input presence, processes user account provisioning details, and generates timestamped audit logs.

## Project Structure

* `Onboarding-Script.ps1` – Main PowerShell script handling CSV ingestion, validation, and logging.
* `new_employees.csv` – Sample HR input dataset (`FirstName`, `LastName`, `Department`, `Email`, `JobTitle`).
* `onboarding.log` – Generated execution log recording timestamps and provisioned user details.

## How It Works

1. **Input Validation:** Verifies that `new_employees.csv` exists in the working directory before execution.
2. **Data Parsing:** Uses `Import-Csv` to iterate through each new hire record.
3. **Provisioning & Audit Logging:** Formats user metadata and appends timestamped entries to `onboarding.log` (designed to integrate directly with Active Directory `New-ADUser` or Microsoft Entra ID `New-MgUser` cmdlets).

## Usage

1. Place `Onboarding-Script.ps1` and `new_employees.csv` in the same directory.
2. Open PowerShell in that directory and run:
   ```powershell
   .\Onboarding-Script.ps1
