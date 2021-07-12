$Url = "https://reqres.in/api/users"
$Body= @{
    "name"= "murat"
    "job"= "unemployed"
}

Invoke-RestMethod -Method Post -Uri $Url -Body $Body