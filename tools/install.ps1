param($installPath, $toolsPath, $package, $project)

if (!(test-path (join-path $installPath "..\..\node_modules\bower\package.json"))) {
  $npmPath = (join-path $toolsPath "npm.cmd")
  & $npmPath install bower --save-dev
}
