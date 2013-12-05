param($installPath, $toolsPath, $package, $project)

if (!(test-path (join-path $installPath "..\..\node_modules\bower\package.json"))) {
  $npmPath = (join-path (join-path $installPath "..") "Npm.js.1.3.15.3\tools\npm.cmd")
  & $npmPath install bower
}
