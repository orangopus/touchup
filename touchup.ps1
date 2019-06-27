param (
    [string]$command = "Commands",
    [string]$category = "Pre-Made",
    [Switch]$generate = $generate
)

#Commands API Link
$url = "http://localhost:8911/api/commands/"
$data = Invoke-RestMethod -Uri $url -Method Get -ContentType 'application/json'
function GenerateCommands {
    $generate = $data.name > 'commands.txt'
    $generate
}
GenerateCommands

function Commands {
    $filter = $data | Where-Object Name -eq $command
    $filterReturn = $filter | Where-Object Category -eq $category
    $grabID = $filterReturn
    $commandID = $grabID[0].ID

    # Run Command
    $cmdlink = $url + $commandID
    $runCommand = Invoke-RestMethod -Uri $cmdlink -Method Post -ContentType 'application/json' 
    $runCommand
    
    #Logs
    "Command Name: " + $command
    "Command ID is: " + $commandID
    "Command was executed!"
    Exit-PSSession

}
Commands
