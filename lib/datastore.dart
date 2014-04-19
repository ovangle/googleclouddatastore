
/**
 * A set of extensions to the datastore framework which allow 
 * using the 
 */
library datastore;

import 'dart:mirrors';
import 'dart:typed_data';

import 'src/common.dart' hide Datastore;
import 'src/common.dart' as base;
import 'src/connection.dart';

export 'src/common.dart' hide Datastore;
export 'src/connection.dart';

part 'src/datastore_mirrors/annotations.dart';
part 'src/datastore_mirrors/reflection.dart';

class Datastore extends base.Datastore {
  Datastore(DatastoreConnection connection) : 
    super(connection, _entityKinds());
}