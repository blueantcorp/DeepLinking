PACKAGE_NAME=DeepLinking

test:
	@xcodebuild \
		-scheme {PACKAGE_NAME} \
        -destination platform="iOS" \
        -enableCodeCoverage YES \
        -derivedDataPath .build/derivedData \
        test | xcpretty

	@llvm-cov export -format="lcov" \
		.build/debug/{PACKAGE_NAME}PackageTests.xctest \
		-instr-profile .build/debug/codecov/default.profdata > info.lcov

#	@bash <(curl -s https://codecov.io/bash) \
#		-J DeepLinking \
#		-D .build/derivedData
