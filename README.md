# lunar_to_islamic_date

A Dart/Flutter plugin for converting Gregorian (lunar) dates to Islamic Hijri dates.

[![pub package](https://img.shields.io/pub/v/lunar_to_islamic_date.svg)](https://pub.dev/packages/lunar_to_islamic_date)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Overview

This plugin provides a simple and accurate way to convert a Gregorian date (year, month, day) into its corresponding Islamic Hijri date. It uses an algorithm based on lunar calculations to provide reliable results. This is designed to be simple to use and integrate into your Dart or Flutter projects.

## Features

*   **Gregorian to Hijri Conversion:** Converts a given Gregorian year, month, and day to the equivalent Islamic Hijri date.
*   **Accurate Calculations:** Utilizes a robust algorithm for better accuracy compared to simple approximations.
*   **Error Handling:** Gracefully handles invalid Gregorian date inputs and returns an appropriate error.
*   **Simple API:** Easy to integrate into your Dart/Flutter projects.

## Getting Started

### 1. Add the Dependency

Add `lunar_to_islamic_date` to your `pubspec.yaml` file:

```yaml
dependencies:
  lunar_to_islamic_date: ^1.0.0 # Replace with the latest version
