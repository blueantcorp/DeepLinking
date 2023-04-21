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
	
	@llvm-cov export \
		.build/debug/DeepLinkingPackageTests.xctest/Contents/MacOS/DeepLinkingPackageTests \
		-instr-profile .build/debug/codecov/default.profdata \
		-format="lcov" > info.lcov

	# Generate Profdata
	# @xcrun llvm-cov show ./DeepLinking \
	# 	-instr-profile=DeepLinking.profdata
	
	# Generate Report
	# @xcrun llvm-cov export ./DeepLinking \
	# 	-instr-profile=DeepLinking.profdata