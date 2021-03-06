/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: tensorflow/core/framework/attr_value.proto
 *
 */

import Foundation
import SwiftProtobuf


///   Protocol buffer representing the value for an attr used to configure an Op.
///   Comment indicates the corresponding attr type.  Only the field matching the
///   attr type may be filled.
struct Tensorflow_AttrValue: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Tensorflow_AttrValue"}
  public var protoMessageName: String {return "AttrValue"}
  public var protoPackageName: String {return "tensorflow"}
  public var jsonFieldNames: [String: Int] {return [
    "s": 2,
    "i": 3,
    "f": 4,
    "b": 5,
    "type": 6,
    "shape": 7,
    "tensor": 8,
    "list": 1,
    "func": 10,
    "placeholder": 9,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "s": 2,
    "i": 3,
    "f": 4,
    "b": 5,
    "type": 6,
    "shape": 7,
    "tensor": 8,
    "list": 1,
    "func": 10,
    "placeholder": 9,
  ]}

  private class _StorageClass {
    typealias ProtobufExtendedMessage = Tensorflow_AttrValue
    var _value = Tensorflow_AttrValue.OneOf_Value()

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 2, 3, 4, 5, 6, 7, 8, 1, 10, 9:
        handled = try _value.decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
      default:
        handled = false
      }
      return handled
    }

    func traverse(visitor: inout ProtobufVisitor) throws {
      try _value.traverse(visitor: &visitor, start: 1, end: 11)
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _value != other._value {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._value = _value
      return clone
    }
  }

  private var _storage = _StorageClass()

  enum OneOf_Value: ExpressibleByNilLiteral, ProtobufOneofEnum {
    case s(Data)
    case i(Int64)
    case f(Float)
    case b(Bool)
    case type(Tensorflow_DataType)
    case shape(Tensorflow_TensorShapeProto)
    case tensor(Tensorflow_TensorProto)
    case list(Tensorflow_AttrValue.ListValue)
    case func_p(Tensorflow_NameAttrList)
    case placeholder(String)
    case None

    public init(nilLiteral: ()) {
      self = .None
    }

    public init() {
      self = .None
    }

    public mutating func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      if self != .None && setter.rejectConflictingOneof {
        throw ProtobufDecodingError.duplicatedOneOf
      }
      let handled: Bool
      switch protoFieldNumber {
      case 1:
        var value: Tensorflow_AttrValue.ListValue?
        handled = try setter.decodeSingularMessageField(fieldType: Tensorflow_AttrValue.ListValue.self, value: &value)
        if let value = value, handled {
          self = .list(value)
        }
      case 2:
        var value = Data()
        handled = try setter.decodeSingularField(fieldType: ProtobufBytes.self, value: &value)
        self = .s(value)
      case 3:
        var value = Int64()
        handled = try setter.decodeSingularField(fieldType: ProtobufInt64.self, value: &value)
        self = .i(value)
      case 4:
        var value = Float()
        handled = try setter.decodeSingularField(fieldType: ProtobufFloat.self, value: &value)
        self = .f(value)
      case 5:
        var value = Bool()
        handled = try setter.decodeSingularField(fieldType: ProtobufBool.self, value: &value)
        self = .b(value)
      case 6:
        var value = Tensorflow_DataType()
        handled = try setter.decodeSingularField(fieldType: Tensorflow_DataType.self, value: &value)
        self = .type(value)
      case 7:
        var value: Tensorflow_TensorShapeProto?
        handled = try setter.decodeSingularMessageField(fieldType: Tensorflow_TensorShapeProto.self, value: &value)
        if let value = value, handled {
          self = .shape(value)
        }
      case 8:
        var value: Tensorflow_TensorProto?
        handled = try setter.decodeSingularMessageField(fieldType: Tensorflow_TensorProto.self, value: &value)
        if let value = value, handled {
          self = .tensor(value)
        }
      case 9:
        var value = String()
        handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &value)
        self = .placeholder(value)
      case 10:
        var value: Tensorflow_NameAttrList?
        handled = try setter.decodeSingularMessageField(fieldType: Tensorflow_NameAttrList.self, value: &value)
        if let value = value, handled {
          self = .func_p(value)
        }
      default:
        handled = false
        self = .None
      }
      return handled
    }

    public func traverse(visitor: inout ProtobufVisitor, start: Int, end: Int) throws {
      switch self {
      case .list(let v):
        if start <= 1 && 1 < end {
          try visitor.visitSingularMessageField(value: v, protoFieldNumber: 1, protoFieldName: "list", jsonFieldName: "list", swiftFieldName: "list")
        }
      case .s(let v):
        if start <= 2 && 2 < end {
          try visitor.visitSingularField(fieldType: ProtobufBytes.self, value: v, protoFieldNumber: 2, protoFieldName: "s", jsonFieldName: "s", swiftFieldName: "s")
        }
      case .i(let v):
        if start <= 3 && 3 < end {
          try visitor.visitSingularField(fieldType: ProtobufInt64.self, value: v, protoFieldNumber: 3, protoFieldName: "i", jsonFieldName: "i", swiftFieldName: "i")
        }
      case .f(let v):
        if start <= 4 && 4 < end {
          try visitor.visitSingularField(fieldType: ProtobufFloat.self, value: v, protoFieldNumber: 4, protoFieldName: "f", jsonFieldName: "f", swiftFieldName: "f")
        }
      case .b(let v):
        if start <= 5 && 5 < end {
          try visitor.visitSingularField(fieldType: ProtobufBool.self, value: v, protoFieldNumber: 5, protoFieldName: "b", jsonFieldName: "b", swiftFieldName: "b")
        }
      case .type(let v):
        if start <= 6 && 6 < end {
          try visitor.visitSingularField(fieldType: Tensorflow_DataType.self, value: v, protoFieldNumber: 6, protoFieldName: "type", jsonFieldName: "type", swiftFieldName: "type")
        }
      case .shape(let v):
        if start <= 7 && 7 < end {
          try visitor.visitSingularMessageField(value: v, protoFieldNumber: 7, protoFieldName: "shape", jsonFieldName: "shape", swiftFieldName: "shape")
        }
      case .tensor(let v):
        if start <= 8 && 8 < end {
          try visitor.visitSingularMessageField(value: v, protoFieldNumber: 8, protoFieldName: "tensor", jsonFieldName: "tensor", swiftFieldName: "tensor")
        }
      case .placeholder(let v):
        if start <= 9 && 9 < end {
          try visitor.visitSingularField(fieldType: ProtobufString.self, value: v, protoFieldNumber: 9, protoFieldName: "placeholder", jsonFieldName: "placeholder", swiftFieldName: "placeholder")
        }
      case .func_p(let v):
        if start <= 10 && 10 < end {
          try visitor.visitSingularMessageField(value: v, protoFieldNumber: 10, protoFieldName: "func", jsonFieldName: "func", swiftFieldName: "func_p")
        }
      case .None:
        break
      }
    }
  }

  ///   LINT.IfChange
  struct ListValue: ProtobufGeneratedMessage {
    public var swiftClassName: String {return "Tensorflow_AttrValue.ListValue"}
    public var protoMessageName: String {return "ListValue"}
    public var protoPackageName: String {return "tensorflow"}
    public var jsonFieldNames: [String: Int] {return [
      "s": 2,
      "i": 3,
      "f": 4,
      "b": 5,
      "type": 6,
      "shape": 7,
      "tensor": 8,
    ]}
    public var protoFieldNames: [String: Int] {return [
      "s": 2,
      "i": 3,
      "f": 4,
      "b": 5,
      "type": 6,
      "shape": 7,
      "tensor": 8,
    ]}

    ///   "list(string)"
    public var s: [Data] = []

    ///   "list(int)"
    public var i: [Int64] = []

    ///   "list(float)"
    public var f: [Float] = []

    ///   "list(bool)"
    public var b: [Bool] = []

    ///   "list(type)"
    public var type: [Tensorflow_DataType] = []

    ///   "list(shape)"
    public var shape: [Tensorflow_TensorShapeProto] = []

    ///   "list(tensor)"
    public var tensor: [Tensorflow_TensorProto] = []

    public init() {}

    public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 2: handled = try setter.decodeRepeatedField(fieldType: ProtobufBytes.self, value: &s)
      case 3: handled = try setter.decodePackedField(fieldType: ProtobufInt64.self, value: &i)
      case 4: handled = try setter.decodePackedField(fieldType: ProtobufFloat.self, value: &f)
      case 5: handled = try setter.decodePackedField(fieldType: ProtobufBool.self, value: &b)
      case 6: handled = try setter.decodePackedField(fieldType: Tensorflow_DataType.self, value: &type)
      case 7: handled = try setter.decodeRepeatedMessageField(fieldType: Tensorflow_TensorShapeProto.self, value: &shape)
      case 8: handled = try setter.decodeRepeatedMessageField(fieldType: Tensorflow_TensorProto.self, value: &tensor)
      default:
        handled = false
      }
      return handled
    }

    public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
      if !s.isEmpty {
        try visitor.visitRepeatedField(fieldType: ProtobufBytes.self, value: s, protoFieldNumber: 2, protoFieldName: "s", jsonFieldName: "s", swiftFieldName: "s")
      }
      if !i.isEmpty {
        try visitor.visitPackedField(fieldType: ProtobufInt64.self, value: i, protoFieldNumber: 3, protoFieldName: "i", jsonFieldName: "i", swiftFieldName: "i")
      }
      if !f.isEmpty {
        try visitor.visitPackedField(fieldType: ProtobufFloat.self, value: f, protoFieldNumber: 4, protoFieldName: "f", jsonFieldName: "f", swiftFieldName: "f")
      }
      if !b.isEmpty {
        try visitor.visitPackedField(fieldType: ProtobufBool.self, value: b, protoFieldNumber: 5, protoFieldName: "b", jsonFieldName: "b", swiftFieldName: "b")
      }
      if !type.isEmpty {
        try visitor.visitPackedField(fieldType: Tensorflow_DataType.self, value: type, protoFieldNumber: 6, protoFieldName: "type", jsonFieldName: "type", swiftFieldName: "type")
      }
      if !shape.isEmpty {
        try visitor.visitRepeatedMessageField(value: shape, protoFieldNumber: 7, protoFieldName: "shape", jsonFieldName: "shape", swiftFieldName: "shape")
      }
      if !tensor.isEmpty {
        try visitor.visitRepeatedMessageField(value: tensor, protoFieldNumber: 8, protoFieldName: "tensor", jsonFieldName: "tensor", swiftFieldName: "tensor")
      }
    }

    public func _protoc_generated_isEqualTo(other: Tensorflow_AttrValue.ListValue) -> Bool {
      if s != other.s {return false}
      if i != other.i {return false}
      if f != other.f {return false}
      if b != other.b {return false}
      if type != other.type {return false}
      if shape != other.shape {return false}
      if tensor != other.tensor {return false}
      return true
    }
  }

  ///   "string"
  public var s: Data {
    get {
      if case .s(let v) = _storage._value {
        return v
      }
      return Data()
    }
    set {
      _uniqueStorage()._value = .s(newValue)
    }
  }

  ///   "int"
  public var i: Int64 {
    get {
      if case .i(let v) = _storage._value {
        return v
      }
      return 0
    }
    set {
      _uniqueStorage()._value = .i(newValue)
    }
  }

  ///   "float"
  public var f: Float {
    get {
      if case .f(let v) = _storage._value {
        return v
      }
      return 0
    }
    set {
      _uniqueStorage()._value = .f(newValue)
    }
  }

  ///   "bool"
  public var b: Bool {
    get {
      if case .b(let v) = _storage._value {
        return v
      }
      return false
    }
    set {
      _uniqueStorage()._value = .b(newValue)
    }
  }

  ///   "type"
  public var type: Tensorflow_DataType {
    get {
      if case .type(let v) = _storage._value {
        return v
      }
      return Tensorflow_DataType.dtInvalid
    }
    set {
      _uniqueStorage()._value = .type(newValue)
    }
  }

  ///   "shape"
  public var shape: Tensorflow_TensorShapeProto {
    get {
      if case .shape(let v) = _storage._value {
        return v
      }
      return Tensorflow_TensorShapeProto()
    }
    set {
      _uniqueStorage()._value = .shape(newValue)
    }
  }

  ///   "tensor"
  public var tensor: Tensorflow_TensorProto {
    get {
      if case .tensor(let v) = _storage._value {
        return v
      }
      return Tensorflow_TensorProto()
    }
    set {
      _uniqueStorage()._value = .tensor(newValue)
    }
  }

  ///   any "list(...)"
  public var list: Tensorflow_AttrValue.ListValue {
    get {
      if case .list(let v) = _storage._value {
        return v
      }
      return Tensorflow_AttrValue.ListValue()
    }
    set {
      _uniqueStorage()._value = .list(newValue)
    }
  }

  ///   "func" represents a function. func.name is a function's name or
  ///   a primitive op's name. func.attr.first is the name of an attr
  ///   defined for that function. func.attr.second is the value for
  ///   that attr in the instantiation.
  public var func_p: Tensorflow_NameAttrList {
    get {
      if case .func_p(let v) = _storage._value {
        return v
      }
      return Tensorflow_NameAttrList()
    }
    set {
      _uniqueStorage()._value = .func_p(newValue)
    }
  }

  ///   This is a placeholder only used in nodes defined inside a
  ///   function.  It indicates the attr value will be supplied when
  ///   the function is instantiated.  For example, let us suppose a
  ///   node "N" in function "FN". "N" has an attr "A" with value
  ///   placeholder = "foo". When FN is instantiated with attr "foo"
  ///   set to "bar", the instantiated node N's attr A will have been
  ///   given the value "bar".
  public var placeholder: String {
    get {
      if case .placeholder(let v) = _storage._value {
        return v
      }
      return ""
    }
    set {
      _uniqueStorage()._value = .placeholder(newValue)
    }
  }

  public var value: OneOf_Value {
    get {return _storage._value}
    set {
      _uniqueStorage()._value = newValue
    }
  }

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: Tensorflow_AttrValue) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

///   A list of attr names and their values. The whole list is attached
///   with a string name.  E.g., MatMul[T=float].
struct Tensorflow_NameAttrList: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Tensorflow_NameAttrList"}
  public var protoMessageName: String {return "NameAttrList"}
  public var protoPackageName: String {return "tensorflow"}
  public var jsonFieldNames: [String: Int] {return [
    "name": 1,
    "attr": 2,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "name": 1,
    "attr": 2,
  ]}

  public var name: String = ""

  public var attr: Dictionary<String,Tensorflow_AttrValue> = [:]

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &name)
    case 2: handled = try setter.decodeMapField(fieldType: ProtobufMap<ProtobufString,Tensorflow_AttrValue>.self, value: &attr)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if name != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: name, protoFieldNumber: 1, protoFieldName: "name", jsonFieldName: "name", swiftFieldName: "name")
    }
    if !attr.isEmpty {
      try visitor.visitMapField(fieldType: ProtobufMap<ProtobufString,Tensorflow_AttrValue>.self, value: attr, protoFieldNumber: 2, protoFieldName: "attr", jsonFieldName: "attr", swiftFieldName: "attr")
    }
  }

  public func _protoc_generated_isEqualTo(other: Tensorflow_NameAttrList) -> Bool {
    if name != other.name {return false}
    if attr != other.attr {return false}
    return true
  }
}

func ==(lhs: Tensorflow_AttrValue.OneOf_Value, rhs: Tensorflow_AttrValue.OneOf_Value) -> Bool {
  switch (lhs, rhs) {
  case (.s(let l), .s(let r)): return l == r
  case (.i(let l), .i(let r)): return l == r
  case (.f(let l), .f(let r)): return l == r
  case (.b(let l), .b(let r)): return l == r
  case (.type(let l), .type(let r)): return l == r
  case (.shape(let l), .shape(let r)): return l == r
  case (.tensor(let l), .tensor(let r)): return l == r
  case (.list(let l), .list(let r)): return l == r
  case (.func_p(let l), .func_p(let r)): return l == r
  case (.placeholder(let l), .placeholder(let r)): return l == r
  case (.None, .None): return true
  default: return false
  }
}
