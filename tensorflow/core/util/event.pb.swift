/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: tensorflow/core/util/event.proto
 *
 */

import Foundation
import SwiftProtobuf


///   Protocol buffer representing an event that happened during
///   the execution of a Brain model.
struct Tensorflow_Event: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Tensorflow_Event"}
  public var protoMessageName: String {return "Event"}
  public var protoPackageName: String {return "tensorflow"}
  public var jsonFieldNames: [String: Int] {return [
    "wallTime": 1,
    "step": 2,
    "fileVersion": 3,
    "graphDef": 4,
    "summary": 5,
    "logMessage": 6,
    "sessionLog": 7,
    "taggedRunMetadata": 8,
    "metaGraphDef": 9,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "wall_time": 1,
    "step": 2,
    "file_version": 3,
    "graph_def": 4,
    "summary": 5,
    "log_message": 6,
    "session_log": 7,
    "tagged_run_metadata": 8,
    "meta_graph_def": 9,
  ]}

  private class _StorageClass {
    typealias ProtobufExtendedMessage = Tensorflow_Event
    var _wallTime: Double = 0
    var _step: Int64 = 0
    var _what = Tensorflow_Event.OneOf_What()

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 1: handled = try setter.decodeSingularField(fieldType: ProtobufDouble.self, value: &_wallTime)
      case 2: handled = try setter.decodeSingularField(fieldType: ProtobufInt64.self, value: &_step)
      case 3, 4, 5, 6, 7, 8, 9:
        handled = try _what.decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
      default:
        handled = false
      }
      return handled
    }

    func traverse(visitor: inout ProtobufVisitor) throws {
      if _wallTime != 0 {
        try visitor.visitSingularField(fieldType: ProtobufDouble.self, value: _wallTime, protoFieldNumber: 1, protoFieldName: "wall_time", jsonFieldName: "wallTime", swiftFieldName: "wallTime")
      }
      if _step != 0 {
        try visitor.visitSingularField(fieldType: ProtobufInt64.self, value: _step, protoFieldNumber: 2, protoFieldName: "step", jsonFieldName: "step", swiftFieldName: "step")
      }
      try _what.traverse(visitor: &visitor, start: 3, end: 10)
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _wallTime != other._wallTime {return false}
      if _step != other._step {return false}
      if _what != other._what {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._wallTime = _wallTime
      clone._step = _step
      clone._what = _what
      return clone
    }
  }

  private var _storage = _StorageClass()

  enum OneOf_What: ExpressibleByNilLiteral, ProtobufOneofEnum {
    case fileVersion(String)
    case graphDef(Data)
    case summary(Tensorflow_Summary)
    case logMessage(Tensorflow_LogMessage)
    case sessionLog(Tensorflow_SessionLog)
    case taggedRunMetadata(Tensorflow_TaggedRunMetadata)
    case metaGraphDef(Data)
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
      case 3:
        var value = String()
        handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &value)
        self = .fileVersion(value)
      case 4:
        var value = Data()
        handled = try setter.decodeSingularField(fieldType: ProtobufBytes.self, value: &value)
        self = .graphDef(value)
      case 5:
        var value: Tensorflow_Summary?
        handled = try setter.decodeSingularMessageField(fieldType: Tensorflow_Summary.self, value: &value)
        if let value = value, handled {
          self = .summary(value)
        }
      case 6:
        var value: Tensorflow_LogMessage?
        handled = try setter.decodeSingularMessageField(fieldType: Tensorflow_LogMessage.self, value: &value)
        if let value = value, handled {
          self = .logMessage(value)
        }
      case 7:
        var value: Tensorflow_SessionLog?
        handled = try setter.decodeSingularMessageField(fieldType: Tensorflow_SessionLog.self, value: &value)
        if let value = value, handled {
          self = .sessionLog(value)
        }
      case 8:
        var value: Tensorflow_TaggedRunMetadata?
        handled = try setter.decodeSingularMessageField(fieldType: Tensorflow_TaggedRunMetadata.self, value: &value)
        if let value = value, handled {
          self = .taggedRunMetadata(value)
        }
      case 9:
        var value = Data()
        handled = try setter.decodeSingularField(fieldType: ProtobufBytes.self, value: &value)
        self = .metaGraphDef(value)
      default:
        handled = false
        self = .None
      }
      return handled
    }

    public func traverse(visitor: inout ProtobufVisitor, start: Int, end: Int) throws {
      switch self {
      case .fileVersion(let v):
        if start <= 3 && 3 < end {
          try visitor.visitSingularField(fieldType: ProtobufString.self, value: v, protoFieldNumber: 3, protoFieldName: "file_version", jsonFieldName: "fileVersion", swiftFieldName: "fileVersion")
        }
      case .graphDef(let v):
        if start <= 4 && 4 < end {
          try visitor.visitSingularField(fieldType: ProtobufBytes.self, value: v, protoFieldNumber: 4, protoFieldName: "graph_def", jsonFieldName: "graphDef", swiftFieldName: "graphDef")
        }
      case .summary(let v):
        if start <= 5 && 5 < end {
          try visitor.visitSingularMessageField(value: v, protoFieldNumber: 5, protoFieldName: "summary", jsonFieldName: "summary", swiftFieldName: "summary")
        }
      case .logMessage(let v):
        if start <= 6 && 6 < end {
          try visitor.visitSingularMessageField(value: v, protoFieldNumber: 6, protoFieldName: "log_message", jsonFieldName: "logMessage", swiftFieldName: "logMessage")
        }
      case .sessionLog(let v):
        if start <= 7 && 7 < end {
          try visitor.visitSingularMessageField(value: v, protoFieldNumber: 7, protoFieldName: "session_log", jsonFieldName: "sessionLog", swiftFieldName: "sessionLog")
        }
      case .taggedRunMetadata(let v):
        if start <= 8 && 8 < end {
          try visitor.visitSingularMessageField(value: v, protoFieldNumber: 8, protoFieldName: "tagged_run_metadata", jsonFieldName: "taggedRunMetadata", swiftFieldName: "taggedRunMetadata")
        }
      case .metaGraphDef(let v):
        if start <= 9 && 9 < end {
          try visitor.visitSingularField(fieldType: ProtobufBytes.self, value: v, protoFieldNumber: 9, protoFieldName: "meta_graph_def", jsonFieldName: "metaGraphDef", swiftFieldName: "metaGraphDef")
        }
      case .None:
        break
      }
    }
  }

  ///   Timestamp of the event.
  public var wallTime: Double {
    get {return _storage._wallTime}
    set {_uniqueStorage()._wallTime = newValue}
  }

  ///   Global step of the event.
  public var step: Int64 {
    get {return _storage._step}
    set {_uniqueStorage()._step = newValue}
  }

  ///   An event file was started, with the specified version.
  ///   This is use to identify the contents of the record IO files
  ///   easily.  Current version is "brain.Event:2".  All versions
  ///   start with "brain.Event:".
  public var fileVersion: String {
    get {
      if case .fileVersion(let v) = _storage._what {
        return v
      }
      return ""
    }
    set {
      _uniqueStorage()._what = .fileVersion(newValue)
    }
  }

  ///   An encoded version of a GraphDef.
  public var graphDef: Data {
    get {
      if case .graphDef(let v) = _storage._what {
        return v
      }
      return Data()
    }
    set {
      _uniqueStorage()._what = .graphDef(newValue)
    }
  }

  ///   A summary was generated.
  public var summary: Tensorflow_Summary {
    get {
      if case .summary(let v) = _storage._what {
        return v
      }
      return Tensorflow_Summary()
    }
    set {
      _uniqueStorage()._what = .summary(newValue)
    }
  }

  ///   The user output a log message. Not all messages are logged, only ones
  ///   generated via the Python tensorboard_logging module.
  public var logMessage: Tensorflow_LogMessage {
    get {
      if case .logMessage(let v) = _storage._what {
        return v
      }
      return Tensorflow_LogMessage()
    }
    set {
      _uniqueStorage()._what = .logMessage(newValue)
    }
  }

  ///   The state of the session which can be used for restarting after crashes.
  public var sessionLog: Tensorflow_SessionLog {
    get {
      if case .sessionLog(let v) = _storage._what {
        return v
      }
      return Tensorflow_SessionLog()
    }
    set {
      _uniqueStorage()._what = .sessionLog(newValue)
    }
  }

  ///   The metadata returned by running a session.run() call.
  public var taggedRunMetadata: Tensorflow_TaggedRunMetadata {
    get {
      if case .taggedRunMetadata(let v) = _storage._what {
        return v
      }
      return Tensorflow_TaggedRunMetadata()
    }
    set {
      _uniqueStorage()._what = .taggedRunMetadata(newValue)
    }
  }

  ///   An encoded version of a MetaGraphDef.
  public var metaGraphDef: Data {
    get {
      if case .metaGraphDef(let v) = _storage._what {
        return v
      }
      return Data()
    }
    set {
      _uniqueStorage()._what = .metaGraphDef(newValue)
    }
  }

  public var what: OneOf_What {
    get {return _storage._what}
    set {
      _uniqueStorage()._what = newValue
    }
  }

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: Tensorflow_Event) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

///   Protocol buffer used for logging messages to the events file.
struct Tensorflow_LogMessage: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Tensorflow_LogMessage"}
  public var protoMessageName: String {return "LogMessage"}
  public var protoPackageName: String {return "tensorflow"}
  public var jsonFieldNames: [String: Int] {return [
    "level": 1,
    "message": 2,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "level": 1,
    "message": 2,
  ]}

  enum Level: ProtobufEnum {
    public typealias RawValue = Int
    case unknown // = 0
    case debug // = 10
    case info // = 20
    case warn // = 30
    case error // = 40
    case fatal // = 50
    case UNRECOGNIZED(Int)

    public init() {
      self = .unknown
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 10: self = .debug
      case 20: self = .info
      case 30: self = .warn
      case 40: self = .error
      case 50: self = .fatal
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public init?(name: String) {
      switch name {
      case "unknown": self = .unknown
      case "debug": self = .debug
      case "info": self = .info
      case "warn": self = .warn
      case "error": self = .error
      case "fatal": self = .fatal
      default: return nil
      }
    }

    public init?(jsonName: String) {
      switch jsonName {
      case "UNKNOWN": self = .unknown
      case "DEBUG": self = .debug
      case "INFO": self = .info
      case "WARN": self = .warn
      case "ERROR": self = .error
      case "FATAL": self = .fatal
      default: return nil
      }
    }

    public init?(protoName: String) {
      switch protoName {
      case "UNKNOWN": self = .unknown
      case "DEBUG": self = .debug
      case "INFO": self = .info
      case "WARN": self = .warn
      case "ERROR": self = .error
      case "FATAL": self = .fatal
      default: return nil
      }
    }

    public var rawValue: Int {
      get {
        switch self {
        case .unknown: return 0
        case .debug: return 10
        case .info: return 20
        case .warn: return 30
        case .error: return 40
        case .fatal: return 50
        case .UNRECOGNIZED(let i): return i
        }
      }
    }

    public var json: String {
      get {
        switch self {
        case .unknown: return "\"UNKNOWN\""
        case .debug: return "\"DEBUG\""
        case .info: return "\"INFO\""
        case .warn: return "\"WARN\""
        case .error: return "\"ERROR\""
        case .fatal: return "\"FATAL\""
        case .UNRECOGNIZED(let i): return String(i)
        }
      }
    }

    public var hashValue: Int { return rawValue }

    public var debugDescription: String {
      get {
        switch self {
        case .unknown: return ".unknown"
        case .debug: return ".debug"
        case .info: return ".info"
        case .warn: return ".warn"
        case .error: return ".error"
        case .fatal: return ".fatal"
        case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
        }
      }
    }

  }

  public var level: Tensorflow_LogMessage.Level = Tensorflow_LogMessage.Level.unknown

  public var message: String = ""

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: Tensorflow_LogMessage.Level.self, value: &level)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &message)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if level != Tensorflow_LogMessage.Level.unknown {
      try visitor.visitSingularField(fieldType: Tensorflow_LogMessage.Level.self, value: level, protoFieldNumber: 1, protoFieldName: "level", jsonFieldName: "level", swiftFieldName: "level")
    }
    if message != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: message, protoFieldNumber: 2, protoFieldName: "message", jsonFieldName: "message", swiftFieldName: "message")
    }
  }

  public func _protoc_generated_isEqualTo(other: Tensorflow_LogMessage) -> Bool {
    if level != other.level {return false}
    if message != other.message {return false}
    return true
  }
}

///   Protocol buffer used for logging session state.
struct Tensorflow_SessionLog: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Tensorflow_SessionLog"}
  public var protoMessageName: String {return "SessionLog"}
  public var protoPackageName: String {return "tensorflow"}
  public var jsonFieldNames: [String: Int] {return [
    "status": 1,
    "checkpointPath": 2,
    "msg": 3,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "status": 1,
    "checkpoint_path": 2,
    "msg": 3,
  ]}

  enum SessionStatus: ProtobufEnum {
    public typealias RawValue = Int
    case statusUnspecified // = 0
    case start // = 1
    case stop // = 2
    case checkpoint // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .statusUnspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .statusUnspecified
      case 1: self = .start
      case 2: self = .stop
      case 3: self = .checkpoint
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public init?(name: String) {
      switch name {
      case "statusUnspecified": self = .statusUnspecified
      case "start": self = .start
      case "stop": self = .stop
      case "checkpoint": self = .checkpoint
      default: return nil
      }
    }

    public init?(jsonName: String) {
      switch jsonName {
      case "STATUS_UNSPECIFIED": self = .statusUnspecified
      case "START": self = .start
      case "STOP": self = .stop
      case "CHECKPOINT": self = .checkpoint
      default: return nil
      }
    }

    public init?(protoName: String) {
      switch protoName {
      case "STATUS_UNSPECIFIED": self = .statusUnspecified
      case "START": self = .start
      case "STOP": self = .stop
      case "CHECKPOINT": self = .checkpoint
      default: return nil
      }
    }

    public var rawValue: Int {
      get {
        switch self {
        case .statusUnspecified: return 0
        case .start: return 1
        case .stop: return 2
        case .checkpoint: return 3
        case .UNRECOGNIZED(let i): return i
        }
      }
    }

    public var json: String {
      get {
        switch self {
        case .statusUnspecified: return "\"STATUS_UNSPECIFIED\""
        case .start: return "\"START\""
        case .stop: return "\"STOP\""
        case .checkpoint: return "\"CHECKPOINT\""
        case .UNRECOGNIZED(let i): return String(i)
        }
      }
    }

    public var hashValue: Int { return rawValue }

    public var debugDescription: String {
      get {
        switch self {
        case .statusUnspecified: return ".statusUnspecified"
        case .start: return ".start"
        case .stop: return ".stop"
        case .checkpoint: return ".checkpoint"
        case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
        }
      }
    }

  }

  public var status: Tensorflow_SessionLog.SessionStatus = Tensorflow_SessionLog.SessionStatus.statusUnspecified

  ///   This checkpoint_path contains both the path and filename.
  public var checkpointPath: String = ""

  public var msg: String = ""

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: Tensorflow_SessionLog.SessionStatus.self, value: &status)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &checkpointPath)
    case 3: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &msg)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if status != Tensorflow_SessionLog.SessionStatus.statusUnspecified {
      try visitor.visitSingularField(fieldType: Tensorflow_SessionLog.SessionStatus.self, value: status, protoFieldNumber: 1, protoFieldName: "status", jsonFieldName: "status", swiftFieldName: "status")
    }
    if checkpointPath != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: checkpointPath, protoFieldNumber: 2, protoFieldName: "checkpoint_path", jsonFieldName: "checkpointPath", swiftFieldName: "checkpointPath")
    }
    if msg != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: msg, protoFieldNumber: 3, protoFieldName: "msg", jsonFieldName: "msg", swiftFieldName: "msg")
    }
  }

  public func _protoc_generated_isEqualTo(other: Tensorflow_SessionLog) -> Bool {
    if status != other.status {return false}
    if checkpointPath != other.checkpointPath {return false}
    if msg != other.msg {return false}
    return true
  }
}

///   For logging the metadata output for a single session.run() call.
struct Tensorflow_TaggedRunMetadata: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Tensorflow_TaggedRunMetadata"}
  public var protoMessageName: String {return "TaggedRunMetadata"}
  public var protoPackageName: String {return "tensorflow"}
  public var jsonFieldNames: [String: Int] {return [
    "tag": 1,
    "runMetadata": 2,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "tag": 1,
    "run_metadata": 2,
  ]}

  ///   Tag name associated with this metadata.
  public var tag: String = ""

  ///   Byte-encoded version of the `RunMetadata` proto in order to allow lazy
  ///   deserialization.
  public var runMetadata: Data = Data()

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &tag)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufBytes.self, value: &runMetadata)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if tag != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: tag, protoFieldNumber: 1, protoFieldName: "tag", jsonFieldName: "tag", swiftFieldName: "tag")
    }
    if runMetadata != Data() {
      try visitor.visitSingularField(fieldType: ProtobufBytes.self, value: runMetadata, protoFieldNumber: 2, protoFieldName: "run_metadata", jsonFieldName: "runMetadata", swiftFieldName: "runMetadata")
    }
  }

  public func _protoc_generated_isEqualTo(other: Tensorflow_TaggedRunMetadata) -> Bool {
    if tag != other.tag {return false}
    if runMetadata != other.runMetadata {return false}
    return true
  }
}

func ==(lhs: Tensorflow_Event.OneOf_What, rhs: Tensorflow_Event.OneOf_What) -> Bool {
  switch (lhs, rhs) {
  case (.fileVersion(let l), .fileVersion(let r)): return l == r
  case (.graphDef(let l), .graphDef(let r)): return l == r
  case (.summary(let l), .summary(let r)): return l == r
  case (.logMessage(let l), .logMessage(let r)): return l == r
  case (.sessionLog(let l), .sessionLog(let r)): return l == r
  case (.taggedRunMetadata(let l), .taggedRunMetadata(let r)): return l == r
  case (.metaGraphDef(let l), .metaGraphDef(let r)): return l == r
  case (.None, .None): return true
  default: return false
  }
}
