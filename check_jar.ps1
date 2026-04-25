Add-Type -AssemblyName 'System.IO.Compression.FileSystem'
$jar = [System.IO.Compression.ZipFile]::OpenRead('F:\Proyectos\libgdx\Catpire_Survivors\lwjgl3\build\libs\Catpire-1.0.0.jar')
$entries = @('uiskin.png', 'default.png', 'uiskin.json', 'uiskin.atlas', 'default.fnt')
foreach ($name in $entries) {
    $found = $jar.Entries | Where-Object { $_.Name -eq $name }
    if ($found) {
        Write-Output "$name - FOUND (Size: $($found.Length))"
    } else {
        Write-Output "$name - NOT FOUND"
    }
}
$jar.Dispose()