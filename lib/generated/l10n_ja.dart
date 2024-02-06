import 'l10n.dart';

/// The translations for Japanese (`ja`).
class SLLJa extends SLL {
  SLLJa([String locale = 'ja']) : super(locale);

  @override
  String get formsWidgets_loadImage => '画像を読み込む';

  @override
  String get formsWidgets_takePicture => '写真を撮る';

  @override
  String get forms_mandatory => '必須';

  @override
  String get mainView_loadingData => 'Loading data...';

  @override
  String get tiles_tileProperties => 'Tile Properties';

  @override
  String get tiles_opacity => 'Opacity';

  @override
  String get tiles_loadGeoPackageAsOverlay => 'Load geopackage tiles as overlay image as opposed to tile layer (best for gdal generated data and different projections).';

  @override
  String get tiles_colorToHide => 'Color to hide';

  @override
  String get wms_wmsProperties => 'WMS Properties';

  @override
  String get wms_opacity => 'Opacity';

  @override
  String get gpx_gpxProperties => 'GPX Properties';

  @override
  String get gpx_wayPoints => 'Waypoints';

  @override
  String get gpx_color => 'Color';

  @override
  String get gpx_size => 'Size';

  @override
  String get gpx_viewLabelsIfAvailable => 'View labels if available';

  @override
  String get gpx_tracksRoutes => 'Tracks/Routes';

  @override
  String get gpx_width => 'Width';

  @override
  String get gpx_palette => 'Palette';

  @override
  String get geoImage_opacity => 'Opacity';

  @override
  String get geoImage_tiffProperties => 'Tiff Properties';

  @override
  String get geoImage_colorToHide => 'Color to hide';

  @override
  String get toolbarTools_zoomOut => 'Zoom out';

  @override
  String get toolbarTools_zoomIn => 'Zoom in';

  @override
  String get toolbarTools_cancelCurrentEdit => 'Cancel current edit.';

  @override
  String get toolbarTools_saveCurrentEdit => 'Save current edit.';

  @override
  String get toolbarTools_insertPointMapCenter => 'Insert point in map center.';

  @override
  String get toolbarTools_insertPointGpsPos => 'Insert point in GPS position.';

  @override
  String get toolbarTools_removeSelectedFeature => 'Remove selected feature.';

  @override
  String get toolbarTools_showFeatureAttributes => 'Show feature attributes.';

  @override
  String get toolbarTools_featureDoesNotHavePrimaryKey => 'The feature does not have a primary key. Editing is not allowed.';

  @override
  String get toolbarTools_queryFeaturesVectorLayers => 'Query features from loaded vector layers.';

  @override
  String get toolbarTools_measureDistanceWithFinger => 'Measure distances on the map with your finger.';

  @override
  String get toolbarTools_modifyGeomVectorLayers => 'Modify geometries in editable vector layers.';

  @override
  String get featureAttributesViewer_loadingData => 'Loading data...';

  @override
  String get featureAttributesViewer_setNewValue => 'Set new value.';

  @override
  String get featureAttributesViewer_field => 'FIELD';

  @override
  String get featureAttributesViewer_value => 'VALUE';

  @override
  String get network_cancelledByUser => 'Cancelled by user.';

  @override
  String get network_completed => 'Completed.';

  @override
  String get network_uploading => 'Uploading…';

  @override
  String get network_pleaseWait => 'please wait…';

  @override
  String get network_permissionOnServerDenied => 'Permission on server denied.';

  @override
  String get network_couldNotConnectToServer => 'Could not connect to the server. Is it online? Check your address.';

  @override
  String get settings_pleaseEnterValidPassword => 'Please enter a valid server password.';

  @override
  String get settings_gss => 'GSS';

  @override
  String get settings_geopaparazziSurveyServer => 'Geopaparazzi Survey Server';

  @override
  String get settings_serverUrl => 'Server URL';

  @override
  String get settings_serverUrlStartWithHttp => 'The server URL needs to start with HTTP or HTTPS.';

  @override
  String get settings_serverPassword => 'Server Password';

  @override
  String get settings_allowSelfSignedCert => 'Allow self signed certificates';

  @override
  String get settings_serverUsername => 'Server Username';

  @override
  String get settings_pleaseEnterValidUsername => 'Please enter a valid server username.';

  @override
  String get form_sketch_newSketch => 'New Sketch';

  @override
  String get form_sketch_undo => 'Undo';

  @override
  String get form_sketch_noUndo => 'Nothing to undo';

  @override
  String get form_sketch_clear => 'Clear';

  @override
  String get form_sketch_save => 'Save';

  @override
  String get form_sketch_sketcher => 'Sketcher';

  @override
  String get form_sketch_enableDrawing => 'Turn on drawing';

  @override
  String get form_sketch_enableEraser => 'Turn on eraser';

  @override
  String get form_sketch_backColor => 'Background color';

  @override
  String get form_sketch_strokeColor => 'Stroke color';

  @override
  String get form_sketch_pickColor => 'Pick color';

  @override
  String get cancel => 'Cancel';

  @override
  String get ok => 'OK';

  @override
  String get set_as_Label => 'use as map label';

  @override
  String get set_label => 'set label';

  @override
  String get set_cliccable_url => 'set tappable URL';

  @override
  String get set_unique_key_for_formitem => 'set unique key for the form item';

  @override
  String get set_as_mandatory => 'set mandatory';

  @override
  String get configure_widget => 'Configure Widget';

  @override
  String get key_cannot_be_empty => 'The key cannot be empty';

  @override
  String get key_cannot_specialchars => 'The key cannot contain spaces or special characters';

  @override
  String get key_already_exists_in => 'The key already exists in';

  @override
  String get underline_label => 'underline label';

  @override
  String get not_a_valid_number => 'The inserted value is not a valid number';

  @override
  String get set_from_url => 'set from url';

  @override
  String get not_a_valid_url => 'this is not a valid url';

  @override
  String get insert_one_item_per_line => 'Insert one item per line. If divided by colon, the first part is the label and the second the value.';

  @override
  String get set_font_size => 'set the font size';
}
