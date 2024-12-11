param(
    $totalMinutes = 920 #variable
)

function SimulateKeyPress {
    # Create a shell object
    $shell = New-Object -ComObject "WScript.Shell"
    
    # Simulate a keypress (spacebar)
    $shell.SendKeys(" ")
}

function Main {
    # Calculate total seconds
    $totalSeconds = $totalMinutes * 60
    
    for ($i = 0; $i -lt $totalSeconds; $i += 30) {
        # Call the function to simulate keypress
        SimulateKeyPress

        # Pause for 30 seconds
        Start-Sleep -Seconds 30
    }
}

# Execute the main function
Main