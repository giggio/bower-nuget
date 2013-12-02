param($installPath, $toolsPath, $package, $project)

$npmPath = (join-path (join-path $installPath "..") "Npm.js.1.3.15\tools\npm.cmd")
& $npmPath install bower