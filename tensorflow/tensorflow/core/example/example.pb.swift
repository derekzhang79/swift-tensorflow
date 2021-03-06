/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: tensorflow/core/example/example.proto
 *
 */

///   Protocol messages for describing input data Examples for machine learning
///   model training or inference.

import Foundation
import SwiftProtobuf


//  An Example is a mostly-normalized data format for storing data for
//  training and inference.  It contains a key-value store (features); where
//  each key (string) maps to a Feature message (which is oneof packed BytesList,
//  FloatList, or Int64List).  This flexible and compact format allows the
//  storage of large amounts of typed data, but requires that the data shape
//  and use be determined by the configuration files and parsers that are used to
//  read and write this format.  That is, the Example is mostly *not* a
//  self-describing format.  In TensorFlow, Examples are read in row-major
//  format, so any configuration that describes data with rank-2 or above
//  should keep this in mind.  For example, to store an M x N matrix of Bytes,
//  the BytesList must contain M*N bytes, with M rows of N contiguous values
//  each.  That is, the BytesList value must store the matrix as:
//      .... row 0 .... .... row 1 .... // ...........  // ... row M-1 ....
// 
//  An Example for a movie recommendation application:
//    features {
//      feature {
//        key: "age"
//        value { float_list {
//          value: 29.0
//        }}
//      }
//      feature {
//        key: "movie"
//        value { bytes_list {
//          value: "The Shawshank Redemption"
//          value: "Fight Club"
//        }}
//      }
//      feature {
//        key: "movie_ratings"
//        value { float_list {
//          value: 9.0
//          value: 9.7
//        }}
//      }
//      feature {
//        key: "suggestion"
//        value { bytes_list {
//          value: "Inception"
//        }}
//      }
//      # Note that this feature exists to be used as a label in training.
//      # E.g., if training a logistic regression model to predict purchase
//      # probability in our learning tool we would set the label feature to
//      # "suggestion_purchased".
//      feature {
//        key: "suggestion_purchased"
//        value { float_list {
//          value: 1.0
//        }}
//      }
//      # Similar to "suggestion_purchased" above this feature exists to be used
//      # as a label in training.
//      # E.g., if training a linear regression model to predict purchase
//      # price in our learning tool we would set the label feature to
//      # "purchase_price".
//      feature {
//        key: "purchase_price"
//        value { float_list {
//          value: 9.99
//        }}
//      }
//   }
// 
//  A conformant Example data set obeys the following conventions:
//    - If a Feature K exists in one example with data type T, it must be of
//        type T in all other examples when present. It may be omitted.
//    - The number of instances of Feature K list data may vary across examples,
//        depending on the requirements of the model.
//    - If a Feature K doesn't exist in an example, a K-specific default will be
//        used, if configured.
//    - If a Feature K exists in an example but contains no items, the intent
//        is considered to be an empty tensor and no default will be used.

struct Tensorflow_Example: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Tensorflow_Example"}
  public var protoMessageName: String {return "Example"}
  public var protoPackageName: String {return "tensorflow"}
  public var jsonFieldNames: [String: Int] {return [
    "features": 1,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "features": 1,
  ]}

  private class _StorageClass {
    typealias ProtobufExtendedMessage = Tensorflow_Example
    var _features: Tensorflow_Features? = nil

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 1: handled = try setter.decodeSingularMessageField(fieldType: Tensorflow_Features.self, value: &_features)
      default:
        handled = false
      }
      return handled
    }

    func traverse(visitor: inout ProtobufVisitor) throws {
      if let v = _features {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 1, protoFieldName: "features", jsonFieldName: "features", swiftFieldName: "features")
      }
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _features != other._features {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._features = _features
      return clone
    }
  }

  private var _storage = _StorageClass()

  public var features: Tensorflow_Features {
    get {return _storage._features ?? Tensorflow_Features()}
    set {_uniqueStorage()._features = newValue}
  }
  public var hasFeatures: Bool {
    return _storage._features != nil
  }
  public mutating func clearFeatures() {
    return _storage._features = nil
  }

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: Tensorflow_Example) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

//  A SequenceExample is an Example representing one or more sequences, and
//  some context.  The context contains features which apply to the entire
//  example. The feature_lists contain a key, value map where each key is
//  associated with a repeated set of Features (a FeatureList).
//  A FeatureList thus represents the values of a feature identified by its key
//  over time / frames.
// 
//  Below is a SequenceExample for a movie recommendation application recording a
//  sequence of ratings by a user. The time-independent features ("locale",
//  "age", "favorites") describing the user are part of the context. The sequence
//  of movies the user rated are part of the feature_lists. For each movie in the
//  sequence we have information on its name and actors and the user's rating.
//  This information is recorded in three separate feature_list(s).
//  In the example below there are only two movies. All three feature_list(s),
//  namely "movie_ratings", "movie_names", and "actors" have a feature value for
//  both movies. Note, that "actors" is itself a bytes_list with multiple
//  strings per movie.
// 
//  context: {
//    feature: {
//      key  : "locale"
//      value: {
//        bytes_list: {
//          value: [ "pt_BR" ]
//        }
//      }
//    }
//    feature: {
//      key  : "age"
//      value: {
//        float_list: {
//          value: [ 19.0 ]
//        }
//      }
//    }
//    feature: {
//      key  : "favorites"
//      value: {
//        bytes_list: {
//          value: [ "Majesty Rose", "Savannah Outen", "One Direction" ]
//        }
//      }
//    }
//  }
//  feature_lists: {
//    feature_list: {
//      key  : "movie_ratings"
//      value: {
//        feature: {
//          float_list: {
//            value: [ 4.5 ]
//          }
//        }
//        feature: {
//          float_list: {
//            value: [ 5.0 ]
//          }
//        }
//      }
//    }
//    feature_list: {
//      key  : "movie_names"
//      value: {
//        feature: {
//          bytes_list: {
//            value: [ "The Shawshank Redemption" ]
//          }
//        }
//        feature: {
//          bytes_list: {
//            value: [ "Fight Club" ]
//          }
//        }
//      }
//    }
//    feature_list: {
//      key  : "actors"
//      value: {
//        feature: {
//          bytes_list: {
//            value: [ "Tim Robbins", "Morgan Freeman" ]
//          }
//        }
//        feature: {
//          bytes_list: {
//            value: [ "Brad Pitt", "Edward Norton", "Helena Bonham Carter" ]
//          }
//        }
//      }
//    }
//  }
// 
//  A conformant SequenceExample data set obeys the following conventions:
// 
//  Context:
//    - All conformant context features K must obey the same conventions as
//      a conformant Example's features (see above).
//  Feature lists:
//    - A FeatureList L may be missing in an example; it is up to the
//      parser configuration to determine if this is allowed or considered
//      an empty list (zero length).
//    - If a FeatureList L exists, it may be empty (zero length).
//    - If a FeatureList L is non-empty, all features within the FeatureList
//      must have the same data type T. Even across SequenceExamples, the type T
//      of the FeatureList identified by the same key must be the same.
//    - If a FeatureList L is non-empty, it is up to the parser configuration
//      to determine if all features within the FeatureList must
//      have the same size.  The same holds for this FeatureList across multiple
//      examples.
// 
//  Examples of conformant and non-conformant examples' FeatureLists:
// 
//  Conformant FeatureLists:
//     feature_lists: { feature_list: {
//       key: "movie_ratings"
//       value: { feature: { float_list: { value: [ 4.5 ] } }
//                feature: { float_list: { value: [ 5.0 ] } } }
//     } }
// 
//  Non-conformant FeatureLists (mismatched types):
//     feature_lists: { feature_list: {
//       key: "movie_ratings"
//       value: { feature: { float_list: { value: [ 4.5 ] } }
//                feature: { int64_list: { value: [ 5 ] } } }
//     } }
// 
//  Conditionally conformant FeatureLists, the parser configuration determines
//  if the feature sizes must match:
//     feature_lists: { feature_list: {
//       key: "movie_ratings"
//       value: { feature: { float_list: { value: [ 4.5 ] } }
//                feature: { float_list: { value: [ 5.0, 6.0 ] } } }
//     } }
// 
//  Conformant pair of SequenceExample
//     feature_lists: { feature_list: {
//       key: "movie_ratings"
//       value: { feature: { float_list: { value: [ 4.5 ] } }
//                feature: { float_list: { value: [ 5.0 ] } } }
//     } }
//  and:
//     feature_lists: { feature_list: {
//       key: "movie_ratings"
//       value: { feature: { float_list: { value: [ 4.5 ] } }
//                feature: { float_list: { value: [ 5.0 ] } }
//                feature: { float_list: { value: [ 2.0 ] } } }
//     } }
// 
//  Conformant pair of SequenceExample
//     feature_lists: { feature_list: {
//       key: "movie_ratings"
//       value: { feature: { float_list: { value: [ 4.5 ] } }
//                feature: { float_list: { value: [ 5.0 ] } } }
//     } }
//  and:
//     feature_lists: { feature_list: {
//       key: "movie_ratings"
//       value: { }
//     } }
// 
//  Conditionally conformant pair of SequenceExample, the parser configuration
//  determines if the second feature_lists is consistent (zero-length) or
//  invalid (missing "movie_ratings"):
//     feature_lists: { feature_list: {
//       key: "movie_ratings"
//       value: { feature: { float_list: { value: [ 4.5 ] } }
//                feature: { float_list: { value: [ 5.0 ] } } }
//     } }
//  and:
//     feature_lists: { }
// 
//  Non-conformant pair of SequenceExample (mismatched types)
//     feature_lists: { feature_list: {
//       key: "movie_ratings"
//       value: { feature: { float_list: { value: [ 4.5 ] } }
//                feature: { float_list: { value: [ 5.0 ] } } }
//     } }
//  and:
//     feature_lists: { feature_list: {
//       key: "movie_ratings"
//       value: { feature: { int64_list: { value: [ 4 ] } }
//                feature: { int64_list: { value: [ 5 ] } }
//                feature: { int64_list: { value: [ 2 ] } } }
//     } }
// 
//  Conditionally conformant pair of SequenceExample; the parser configuration
//  determines if the feature sizes must match:
//     feature_lists: { feature_list: {
//       key: "movie_ratings"
//       value: { feature: { float_list: { value: [ 4.5 ] } }
//                feature: { float_list: { value: [ 5.0 ] } } }
//     } }
//  and:
//     feature_lists: { feature_list: {
//       key: "movie_ratings"
//       value: { feature: { float_list: { value: [ 4.0 ] } }
//                feature: { float_list: { value: [ 5.0, 3.0 ] } }
//     } }

struct Tensorflow_SequenceExample: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Tensorflow_SequenceExample"}
  public var protoMessageName: String {return "SequenceExample"}
  public var protoPackageName: String {return "tensorflow"}
  public var jsonFieldNames: [String: Int] {return [
    "context": 1,
    "featureLists": 2,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "context": 1,
    "feature_lists": 2,
  ]}

  private class _StorageClass {
    typealias ProtobufExtendedMessage = Tensorflow_SequenceExample
    var _context: Tensorflow_Features? = nil
    var _featureLists: Tensorflow_FeatureLists? = nil

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 1: handled = try setter.decodeSingularMessageField(fieldType: Tensorflow_Features.self, value: &_context)
      case 2: handled = try setter.decodeSingularMessageField(fieldType: Tensorflow_FeatureLists.self, value: &_featureLists)
      default:
        handled = false
      }
      return handled
    }

    func traverse(visitor: inout ProtobufVisitor) throws {
      if let v = _context {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 1, protoFieldName: "context", jsonFieldName: "context", swiftFieldName: "context")
      }
      if let v = _featureLists {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 2, protoFieldName: "feature_lists", jsonFieldName: "featureLists", swiftFieldName: "featureLists")
      }
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _context != other._context {return false}
      if _featureLists != other._featureLists {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._context = _context
      clone._featureLists = _featureLists
      return clone
    }
  }

  private var _storage = _StorageClass()

  public var context: Tensorflow_Features {
    get {return _storage._context ?? Tensorflow_Features()}
    set {_uniqueStorage()._context = newValue}
  }
  public var hasContext: Bool {
    return _storage._context != nil
  }
  public mutating func clearContext() {
    return _storage._context = nil
  }

  public var featureLists: Tensorflow_FeatureLists {
    get {return _storage._featureLists ?? Tensorflow_FeatureLists()}
    set {_uniqueStorage()._featureLists = newValue}
  }
  public var hasFeatureLists: Bool {
    return _storage._featureLists != nil
  }
  public mutating func clearFeatureLists() {
    return _storage._featureLists = nil
  }

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: Tensorflow_SequenceExample) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}
