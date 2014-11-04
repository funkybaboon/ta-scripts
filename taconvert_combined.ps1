# Get Start Time
$start = (Get-Date)


$array = @()
$array += { convert.exe -density 200 -quality 80 -scene 1  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_1_to_10.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }
$array += { convert.exe -density 200 -quality 80 -scene 11  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_11_to_20.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                             
$array += { convert.exe -density 200 -quality 80 -scene 21  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_21_to_2.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                             
$array += { convert.exe -density 200 -quality 80 -scene 26  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_26_to_30.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                             
$array += { convert.exe -density 200 -quality 80 -scene 31  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_31_to_35.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                             
$array += { convert.exe -density 200 -quality 80 -scene 36  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_36_to_40.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                             
$array += { convert.exe -density 200 -quality 80 -scene 41  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_41_to_45.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                             
$array += { convert.exe -density 200 -quality 80 -scene 46  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_46_to_50.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                             
$array += { convert.exe -density 200 -quality 80 -scene 51  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_51_to_55.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                             
$array += { convert.exe -density 200 -quality 80 -scene 56  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_56_to_60.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                             
$array += { convert.exe -density 200 -quality 80 -scene 61  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_61_to_65.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                             
$array += { convert.exe -density 200 -quality 80 -scene 66  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_66_to_70.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                             
$array += { convert.exe -density 200 -quality 80 -scene 71  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_71_to_75.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                             
$array += { convert.exe -density 200 -quality 80 -scene 76  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_76_to_80.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                             
$array += { convert.exe -density 200 -quality 80 -scene 81  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_81_to_85.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                             
$array += { convert.exe -density 200 -quality 80 -scene 86  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_86_to_90.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                             
$array += { convert.exe -density 200 -quality 80 -scene 91  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_91_to_95.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                             
$array += { convert.exe -density 200 -quality 80 -scene 96  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_96_to_100.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }         
$array += { convert.exe -density 200 -quality 80 -scene 101  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_101_to_105.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                           
$array += { convert.exe -density 200 -quality 80 -scene 106  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_106_to_110.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                           
$array += { convert.exe -density 200 -quality 80 -scene 111  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_111_to_115.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                           
$array += { convert.exe -density 200 -quality 80 -scene 116  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_116_to_120.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                           
$array += { convert.exe -density 200 -quality 80 -scene 121  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_121_to_125.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                           
$array += { convert.exe -density 200 -quality 80 -scene 126  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_126_to_130.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                           
$array += { convert.exe -density 200 -quality 80 -scene 131  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_131_to_135.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                           
$array += { convert.exe -density 200 -quality 80 -scene 136  C:\Users\Benni\Desktop\ta2014_combined\Combined_map_trail_note_resupply_Note_for_Map_136_to_141.pdf C:\Users\Benni\Desktop\ta2014_combined\%03d_c.jpg }                                                           






$MaxThreads = 4
Write-Host -NoNewline "Opening $MaxThreads Jobs and waiting "

foreach ($element in $array) {
   While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ge $MaxThreads)
   {  Write-Host -NoNewline "."
      Start-Sleep -Seconds 5
   }
 
   Start-Job $element | out-null
   Write-Host -NoNewline "*"
}

Write-Host
Write-Host -NoNewline "Waiting for background jobs "

While (@(Get-Job | Where { $_.State -eq "Running" }).Count -ne 0)
{  Write-Host -NoNewline "."
   #Get-Job    #Just showing all the jobs
   Start-Sleep -Seconds 5
}

ForEach ($Job in (Get-Job)) {
   Remove-Job $Job
}

# Get End Time
$end = (Get-Date)

$timespan = new-timespan -seconds $(($end-$start).totalseconds)
$elapsed = '{0:00}h:{1:00}m:{2:00}s' -f $timespan.Hours,$timespan.Minutes,$timespan.Seconds 

# Echo Time elapsed
Write-host
Write-host "Time: $elapsed"
