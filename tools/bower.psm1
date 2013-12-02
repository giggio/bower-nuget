function bower(){
    $bowerPath = (join-path $PSScriptRoot bower.cmd)
    & $bowerPath $args
}

Export-ModuleMember bower