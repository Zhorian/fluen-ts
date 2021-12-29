$ErrorActionPreference = "Stop"

npm i

npm run lint
if ($LASTEXITCODE) {
	throw 'Lint failed'
}

npm publish