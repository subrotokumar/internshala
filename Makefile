watch:
	@dart run build_runner watch --delete-conflicting-outputs

asset:
	@fluttergen.bat

appicon:
	@dart run flutter_launcher_icons:main