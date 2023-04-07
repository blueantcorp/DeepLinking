test:
	@xcodebuild \
		-scheme DeepLinking \
        -destination platform="iOS" \
        -enableCodeCoverage YES \
        -derivedDataPath .build/derivedData \
        test | xcpretty

	@bash <(curl -s https://codecov.io/bash) \
		-J DeepLinking \
		-D .build/derivedData
