/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: tensorflow/core/framework/tensor_shape.proto
 *
 */

//  Protocol buffer representing the shape of tensors.

import Foundation
import SwiftProtobuf


///   Dimensions of a tensor.
struct Tensorflow_TensorShapeProto: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Tensorflow_TensorShapeProto"}
  public var protoMessageName: String {return "TensorShapeProto"}
  public var protoPackageName: String {return "tensorflow"}
  public var jsonFieldNames: [String: Int] {return [
    "dim": 2,
    "unknownRank": 3,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "dim": 2,
    "unknown_rank": 3,
  ]}

  ///   One dimension of the tensor.
  struct Dim: ProtobufGeneratedMessage {
    public var swiftClassName: String {return "Tensorflow_TensorShapeProto.Dim"}
    public var protoMessageName: String {return "Dim"}
    public var protoPackageName: String {return "tensorflow"}
    public var jsonFieldNames: [String: Int] {return [
      "size": 1,
      "name": 2,
    ]}
    public var protoFieldNames: [String: Int] {return [
      "size": 1,
      "name": 2,
    ]}

    ///   Size of the tensor in that dimension.
    ///   This value must be >= -1, but values of -1 are reserved for "unknown"
    ///   shapes (values of -1 mean "unknown" dimension).  Certain wrappers
    ///   that work with TensorShapeProto may fail at runtime when deserializing
    ///   a TensorShapeProto containing a dim value of -1.
    public var size: Int64 = 0

    ///   Optional name of the tensor dimension.
    public var name: String = ""

    public init() {}

    public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 1: handled = try setter.decodeSingularField(fieldType: ProtobufInt64.self, value: &size)
      case 2: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &name)
      default:
        handled = false
      }
      return handled
    }

    public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
      if size != 0 {
        try visitor.visitSingularField(fieldType: ProtobufInt64.self, value: size, protoFieldNumber: 1, protoFieldName: "size", jsonFieldName: "size", swiftFieldName: "size")
      }
      if name != "" {
        try visitor.visitSingularField(fieldType: ProtobufString.self, value: name, protoFieldNumber: 2, protoFieldName: "name", jsonFieldName: "name", swiftFieldName: "name")
      }
    }

    public func _protoc_generated_isEqualTo(other: Tensorflow_TensorShapeProto.Dim) -> Bool {
      if size != other.size {return false}
      if name != other.name {return false}
      return true
    }
  }

  ///   Dimensions of the tensor, such as {"input", 30}, {"output", 40}
  ///   for a 30 x 40 2D tensor.  If an entry has size -1, this
  ///   corresponds to a dimension of unknown size. The names are
  ///   optional.
  ///  
  ///   The order of entries in "dim" matters: It indicates the layout of the
  ///   values in the tensor in-memory representation.
  ///  
  ///   The first entry in "dim" is the outermost dimension used to layout the
  ///   values, the last entry is the innermost dimension.  This matches the
  ///   in-memory layout of RowMajor Eigen tensors.
  ///  
  ///   If "dim.size()" > 0, "unknown_rank" must be false.
  public var dim: [Tensorflow_TensorShapeProto.Dim] = []

  ///   If true, the number of dimensions in the shape is unknown.
  ///  
  ///   If true, "dim.size()" must be 0.
  public var unknownRank: Bool = false

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 2: handled = try setter.decodeRepeatedMessageField(fieldType: Tensorflow_TensorShapeProto.Dim.self, value: &dim)
    case 3: handled = try setter.decodeSingularField(fieldType: ProtobufBool.self, value: &unknownRank)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if !dim.isEmpty {
      try visitor.visitRepeatedMessageField(value: dim, protoFieldNumber: 2, protoFieldName: "dim", jsonFieldName: "dim", swiftFieldName: "dim")
    }
    if unknownRank != false {
      try visitor.visitSingularField(fieldType: ProtobufBool.self, value: unknownRank, protoFieldNumber: 3, protoFieldName: "unknown_rank", jsonFieldName: "unknownRank", swiftFieldName: "unknownRank")
    }
  }

  public func _protoc_generated_isEqualTo(other: Tensorflow_TensorShapeProto) -> Bool {
    if dim != other.dim {return false}
    if unknownRank != other.unknownRank {return false}
    return true
  }
}