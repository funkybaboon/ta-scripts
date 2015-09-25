# Get Start Time
$startDTM = (Get-Date)

# Maximum numbers of simultaneous conversions
$MaxThreads = 4

# Get current path, set version and target
$version = "v34"
$path = (Get-Item -Path ".\" -Verbose).FullName + "\"
$target = $path + "%03d.jpg"

# 2 dimensional array. first element map, second element scene
$array = @()
$array += ,("_1_21_Northland.pdf", "1")
$array += ,("_22_31_Auckland.pdf", "22")
$array += ,("_32_49_Waikato.pdf", "32")
$array += ,("_50_62_Whanganui.pdf", "50")
$array += ,("_63_69_Manawatu.pdf", "63")
$array += ,("_70_75_Wellington.pdf", "70")
$array += ,("_76_92_Marlborough.pdf", "76")
$array += ,("_93_117_Canterbury.pdf", "93")
$array += ,("_118_127_Otago.pdf", "118")
$array += ,("_128_141_Southland.pdf", "128")

# convert pdf to jpg with 200dpi, 80% quality
$ConvertJob = { 
	param($scene, $map, $target) 
	convert.exe -density 200 -quality 80 -delete 0 -scene $scene $map $target
}

# Start processes
foreach ($element in $array) {
   $scene = $element[1]
   $map = $path + $version + $element[0]

   While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads)
   {  Write-Host "Waiting for open thread...($MaxThreads Maximum)"
      Start-Sleep -Seconds 3
   }

   Write-Host "Converting $map"
 
   Start-Job $ConvertJob -Arg $scene, $map, $target
}

# Check for running processes
While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ne 0)
{  Write-Host "Waiting for background jobs..."
   Get-Job    #Just showing all the jobs
   Start-Sleep -Seconds 3
}

ForEach ($Job in (Get-Job)) {
   Remove-Job $Job
}

# Get End Time
$endDTM = (Get-Date)

# Echo Time elapsed
$ts = $endDTM-$startDTM
$tsString = '{0:00}m {1:00}s' -f $ts.Minutes,$ts.Seconds
Write-Host "Elapsed Time: $tsString"
