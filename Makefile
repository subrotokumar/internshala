watch:
	@dart run build_runner watch --delete-conflicting-outputs

gen:
	@dart run build_runner build --delete-conflicting-outputs

asset:
	@fluttergen.bat

appicon:
	@dart run icons_launcher:create --path ./icons_launcher.yaml