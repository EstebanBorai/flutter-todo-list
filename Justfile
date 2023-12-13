# List available commands
default:
  just --list

# Opens the iOS simulator
simulator-ios:
  open -a 'Simulator'

# Runs `flutter run` with the default simulator
run:
  flutter run

# Runs `flutter run` after spawning the simulator
run-ios: simulator-ios
  flutter run

# Format codebase using Dart standards
fmt:
  dart format ./

# Stacked Services Code Generation
gen:
  dart run build_runner build --delete-conflicting-outputs
