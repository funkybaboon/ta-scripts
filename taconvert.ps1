# Get Start Time
$startDTM = (Get-Date)

$array = @()
$array += { convert.exe -density 200 -quality 80 -delete 0 -scene 1  C:\Users\Benni\Desktop\ta2014\v33_1_21_Northland.pdf C:\Users\Benni\Desktop\ta2014\%03d.jpg }
$array += { convert.exe -density 200 -quality 80 -delete 0 -scene 22 C:\Users\Benni\Desktop\ta2014\v33_22_31_Auckland.pdf C:\Users\Benni\Desktop\ta2014\%03d.jpg }
$array += { convert.exe -density 200 -quality 80 -delete 0 -scene 32 C:\Users\Benni\Desktop\ta2014\v33_32_49_Waikato.pdf C:\Users\Benni\Desktop\ta2014\%03d.jpg }
$array += { convert.exe -density 200 -quality 80 -delete 0 -scene 50 C:\Users\Benni\Desktop\ta2014\v33_50_62_Whanganui.pdf C:\Users\Benni\Desktop\ta2014\%03d.jpg }
$array += { convert.exe -density 200 -quality 80 -delete 0 -scene 63 C:\Users\Benni\Desktop\ta2014\v33_63_69_Manawatu.pdf C:\Users\Benni\Desktop\ta2014\%03d.jpg }
$array += { convert.exe -density 200 -quality 80 -delete 0 -scene 70 C:\Users\Benni\Desktop\ta2014\v33_70_75_Wellington.pdf C:\Users\Benni\Desktop\ta2014\%03d.jpg }
$array += { convert.exe -density 200 -quality 80 -delete 0 -scene 76 C:\Users\Benni\Desktop\ta2014\v33_76_92_Marlborough.pdf C:\Users\Benni\Desktop\ta2014\%03d.jpg }
$array += { convert.exe -density 200 -quality 80 -delete 0 -scene 93 C:\Users\Benni\Desktop\ta2014\v33_93_117_Canterbury.pdf C:\Users\Benni\Desktop\ta2014\%03d.jpg }
$array += { convert.exe -density 200 -quality 80 -delete 0 -scene 118 C:\Users\Benni\Desktop\ta2014\v33_118_127_Otago.pdf C:\Users\Benni\Desktop\ta2014\%03d.jpg }
$array += { convert.exe -density 200 -quality 80 -delete 0 -scene 128 C:\Users\Benni\Desktop\ta2014\v33_128_141_Southland.pdf C:\Users\Benni\Desktop\ta2014\%03d.jpg }

foreach ($element in $array) {
   $MaxThreads = 4
   While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads)
   {  Write-Host "Waiting for open thread...($MaxThreads Maximum)"
      Start-Sleep -Seconds 3
   }
 
   Start-Job $element
}

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
"Elapsed Time: $(($endDTM-$startDTM).totalseconds) seconds"