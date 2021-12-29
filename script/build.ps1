if (Test-Path ./dist) {
	Remove-Item ./dist -Recurse -Force -Confirm:$false
}

npm run build