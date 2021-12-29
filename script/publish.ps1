$ErrorActionPreference = "Stop"

npm i

npm run lint
if ($LASTEXITCODE) {
	throw 'Lint failed'
}

& "$PSScriptRoot\build.ps1"

if ($LASTEXITCODE) {
	throw 'Build failed'
}

npm publish