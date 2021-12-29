$ErrorActionPreference = "Stop"

npm i

npm run lint
if ($LASTEXITCODE) {
	throw 'Lint failed'
}

& "$PSScriptRoot\package-build.ps1"

if ($LASTEXITCODE) {
	throw 'Build failed'
}

npm publish