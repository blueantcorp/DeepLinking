CODECOV_TOKEN=0db140cd-6b06-41ed-b01c-9d22ef68bc56

test:
	@xcodebuild \
		-scheme DeepLinking \
        -destination platform="iOS" \
        -enableCodeCoverage YES \
        -derivedDataPath .build/derivedData \
        test | xcpretty

#codecov:
	@bash <(curl -s https://codecov.io/bash) \
		-J DeepLinking \
		-D .build/derivedData
