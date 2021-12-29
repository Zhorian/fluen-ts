$ErrorActionPreference = "Stop"

npm i

npm run lint
if ($LASTEXITCODE) {
	throw 'Lint failed'
}

npm run build

$originalLocation = (Get-Location)

Set-Location ./dist
npm publish

Set-Location $originalLocation