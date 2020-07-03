param(
	[string]$InDir
)
$src_items = Resolve-Path "${InDir}\*.png"

$src_items_set = @{}
foreach($item in $src_items)
{
	$src_items_set.Add((Split-Path $item -Leaf).ToString(), $true)
}
$changed = $false
$current_dir_items = Resolve-Path "*.png"
foreach($item in $current_dir_items)
{
	$filename = (Split-Path $item -Leaf).ToString();
	if (-Not $src_items_set.Contains($filename))
	{
		Remove-Item $item
		$changed = $true
	}
}
exit $changed