part of 'strings.g.dart';

// Path: <root>
class _StringsJa implements BaseTranslations<AppLocale, _StringsJa> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsJa.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, _StringsJa> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsJa _root = this; // ignore: unused_field

	// Translations
	late final _StringsProperNounsJa properNouns = _StringsProperNounsJa._(_root);
	late final _StringsUiJa ui = _StringsUiJa._(_root);
}

// Path: properNouns
class _StringsProperNounsJa {
	_StringsProperNounsJa._(this._root);

	final _StringsJa _root; // ignore: unused_field

	// Translations
}

// Path: ui
class _StringsUiJa {
	_StringsUiJa._(this._root);

	final _StringsJa _root; // ignore: unused_field

	// Translations
	late final _StringsUiCommonJa common = _StringsUiCommonJa._(_root);
}

// Path: ui.common
class _StringsUiCommonJa {
	_StringsUiCommonJa._(this._root);

	final _StringsJa _root; // ignore: unused_field

	// Translations
	String get cancel => 'キャンセル';
}
