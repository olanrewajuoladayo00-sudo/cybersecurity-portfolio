# Windows Endpoint Threat Hunting with Sysmon
# Purpose: Review process creation events (Event ID 1).
# Run PowerShell as Administrator for best access to event logs.

# 1. Verify the Sysmon service status
Get-Service -Name Sysmon64

# 2. Check that the Sysmon Operational log is enabled
Get-WinEvent -ListLog 'Microsoft-Windows-Sysmon/Operational' |
    Select-Object LogName, IsEnabled, RecordCount

# 3. Retrieve the 20 most recent process creation events
Get-WinEvent -FilterHashtable @{
    LogName = 'Microsoft-Windows-Sysmon/Operational'
    Id      = 1
} -MaxEvents 20 |
    Select-Object TimeCreated, Id, ProviderName, Message |
    Format-List

# 4. Search recent process events for PowerShell
Get-WinEvent -FilterHashtable @{
    LogName = 'Microsoft-Windows-Sysmon/Operational'
    Id      = 1
} -MaxEvents 200 |
    Where-Object { $_.Message -match 'powershell\.exe' } |
    Select-Object TimeCreated, Message |
    Format-List

# 5. Search recent process events for a test argument
Get-WinEvent -FilterHashtable @{
    LogName = 'Microsoft-Windows-Sysmon/Operational'
    Id      = 1
} -MaxEvents 200 |
    Where-Object { $_.Message -match 'SOC_Hunt_Test' } |
    Select-Object TimeCreated, Message |
    Format-List
