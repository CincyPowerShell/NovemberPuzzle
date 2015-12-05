  param(
    [Parameter(Mandatory = $true)]
    [string]$VMNameStr
  )
  # Split input string at the comma and trim the whitespace. We do not want to return empty strings.
  # In order to support PowerShell v2, we need a foreach loop to trim the whitespace.
  $VMNameStr.Split(',') | ForEach-Object { $_.Trim() } | Where-Object { $_ -ne '' }
