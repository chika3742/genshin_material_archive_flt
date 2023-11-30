part of 'strings.g.dart';

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'ui.common.cancel': return 'キャンセル';
			case 'ui.common.ok': return 'OK';
			case 'ui.pageTitles.home': return 'ホーム';
			case 'ui.pageTitles.characters': return 'キャラクター';
			default: return null;
		}
	}
}

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'ui.common.cancel': return 'Cancel';
			case 'ui.common.ok': return 'OK';
			case 'ui.pageTitles.home': return 'Home';
			case 'ui.pageTitles.characters': return 'Characters';
			default: return null;
		}
	}
}
