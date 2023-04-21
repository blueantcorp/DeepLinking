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

	@bash <(curl -s https://codecov.io/bash) \
		-J DeepLinking \
		-D .build/derivedData

	@rm -rf .build
	
codecov:
	echo $(swift test --show-test-binary-path)
	@xcrun llvm-cov export \
		.build/arm64-apple-macosx/debug/codecov \
		--format=lcov \
		-instr-profile $(swift test --show-codecov-path | xargs dirname)/default.profdata \
  		$(swift test --show-test-binary-path)