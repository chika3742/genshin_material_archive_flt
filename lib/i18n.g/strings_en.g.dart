part of 'strings.g.dart';

// Path: <root>
class _StringsEn implements _StringsJa {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _StringsJa> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsUiEn ui = _StringsUiEn._(_root);
	@override late final _StringsProperNounsEn properNouns = _StringsProperNounsEn._(_root);
}

// Path: ui
class _StringsUiEn implements _StringsUiJa {
	_StringsUiEn._(this._root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override late final _StringsUiCommonEn common = _StringsUiCommonEn._(_root);
	@override late final _StringsUiPageTitlesEn pageTitles = _StringsUiPageTitlesEn._(_root);
}

// Path: properNouns
class _StringsProperNounsEn implements _StringsProperNounsJa {
	_StringsProperNounsEn._(this._root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
}

// Path: ui.common
class _StringsUiCommonEn implements _StringsUiCommonJa {
	_StringsUiCommonEn._(this._root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get cancel => 'Cancel';
	@override String get ok => 'OK';
}

// Path: ui.pageTitles
class _StringsUiPageTitlesEn implements _StringsUiPageTitlesJa {
	_StringsUiPageTitlesEn._(this._root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get home => 'Home';
	@override String get characters => 'Characters';
}
