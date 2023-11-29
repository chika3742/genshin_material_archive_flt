part of 'strings.g.dart';

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'ui.common.cancel': return 'キャンセル';
			default: return null;
		}
	}
}

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'ui.common.cancel': return 'Cancel';
			default: return null;
		}
	}
}
