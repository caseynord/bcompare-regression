$bcompare = "C:\Program Files\Beyond Compare 4\BCompare.exe"
$base_path = "C:\Development\grader\Grader.RegressionTest\TestFiles" 
$regression_test_dirs = Get-ChildItem "C:\Development\grader\Grader.RegressionTest\TestFiles"

foreach ($subdir in $regression_test_dirs) {
    $root = Join-Path $base_path $subdir
    $baseline = Join-Path $root BaselineSolutions.xml
    $grader = Join-Path $root GraderSolutions.xml
    $args = -join($baseline, " ", $grader)
    Start-Process $bcompare $args
}
