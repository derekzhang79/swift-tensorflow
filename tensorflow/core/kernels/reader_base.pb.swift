/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: tensorflow/core/kernels/reader_base.proto
 *
 */

import Foundation
import SwiftProtobuf


///   For serializing and restoring the state of ReaderBase, see
///   reader_base.h for details.
struct Tensorflow_ReaderBaseState: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Tensorflow_ReaderBaseState"}
  public var protoMessageName: String {return "ReaderBaseState"}
  public var protoPackageName: String {return "tensorflow"}
  public var jsonFieldNames: [String: Int] {return [
    "workStarted": 1,
    "workFinished": 2,
    "numRecordsProduced": 3,
    "currentWork": 4,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "work_started": 1,
    "work_finished": 2,
    "num_records_produced": 3,
    "current_work": 4,
  ]}

  public var workStarted: Int64 = 0

  public var workFinished: Int64 = 0

  public var numRecordsProduced: Int64 = 0

  public var currentWork: Data = Data()

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufInt64.self, value: &workStarted)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufInt64.self, value: &workFinished)
    case 3: handled = try setter.decodeSingularField(fieldType: ProtobufInt64.self, value: &numRecordsProduced)
    case 4: handled = try setter.decodeSingularField(fieldType: ProtobufBytes.self, value: &currentWork)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if workStarted != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt64.self, value: workStarted, protoFieldNumber: 1, protoFieldName: "work_started", jsonFieldName: "workStarted", swiftFieldName: "workStarted")
    }
    if workFinished != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt64.self, value: workFinished, protoFieldNumber: 2, protoFieldName: "work_finished", jsonFieldName: "workFinished", swiftFieldName: "workFinished")
    }
    if numRecordsProduced != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt64.self, value: numRecordsProduced, protoFieldNumber: 3, protoFieldName: "num_records_produced", jsonFieldName: "numRecordsProduced", swiftFieldName: "numRecordsProduced")
    }
    if currentWork != Data() {
      try visitor.visitSingularField(fieldType: ProtobufBytes.self, value: currentWork, protoFieldNumber: 4, protoFieldName: "current_work", jsonFieldName: "currentWork", swiftFieldName: "currentWork")
    }
  }

  public func _protoc_generated_isEqualTo(other: Tensorflow_ReaderBaseState) -> Bool {
    if workStarted != other.workStarted {return false}
    if workFinished != other.workFinished {return false}
    if numRecordsProduced != other.numRecordsProduced {return false}
    if currentWork != other.currentWork {return false}
    return true
  }
}
