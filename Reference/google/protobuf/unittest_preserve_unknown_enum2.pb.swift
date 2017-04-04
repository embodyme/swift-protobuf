/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_preserve_unknown_enum2.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

fileprivate let _protobuf_package = "proto2_preserve_unknown_enum_unittest"

enum Proto2PreserveUnknownEnumUnittest_MyEnum: SwiftProtobuf.Enum, SwiftProtobuf._ProtoNameProviding {
  typealias RawValue = Int
  case foo // = 0
  case bar // = 1
  case baz // = 2

  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "FOO"),
    1: .same(proto: "BAR"),
    2: .same(proto: "BAZ"),
  ]

  init() {
    self = .foo
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .foo
    case 1: self = .bar
    case 2: self = .baz
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .foo: return 0
    case .bar: return 1
    case .baz: return 2
    }
  }

}

struct Proto2PreserveUnknownEnumUnittest_MyMessage: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".MyMessage"

  fileprivate var _e: Proto2PreserveUnknownEnumUnittest_MyEnum? = nil
  var e: Proto2PreserveUnknownEnumUnittest_MyEnum {
    get {return _e ?? Proto2PreserveUnknownEnumUnittest_MyEnum.foo}
    set {_e = newValue}
  }
  var hasE: Bool {
    return _e != nil
  }
  mutating func clearE() {
    return _e = nil
  }

  var repeatedE: [Proto2PreserveUnknownEnumUnittest_MyEnum] = []

  var repeatedPackedE: [Proto2PreserveUnknownEnumUnittest_MyEnum] = []

  ///   not packed
  var repeatedPackedUnexpectedE: [Proto2PreserveUnknownEnumUnittest_MyEnum] = []

  var oneofE1: Proto2PreserveUnknownEnumUnittest_MyEnum {
    get {
      if case .oneofE1(let v)? = o {
        return v
      }
      return Proto2PreserveUnknownEnumUnittest_MyEnum.foo
    }
    set {
      o = .oneofE1(newValue)
    }
  }

  var o: Proto2PreserveUnknownEnumUnittest_MyMessage.OneOf_O? = nil

  var oneofE2: Proto2PreserveUnknownEnumUnittest_MyEnum {
    get {
      if case .oneofE2(let v)? = o {
        return v
      }
      return Proto2PreserveUnknownEnumUnittest_MyEnum.foo
    }
    set {
      o = .oneofE2(newValue)
    }
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_O: Equatable {
    case oneofE1(Proto2PreserveUnknownEnumUnittest_MyEnum)
    case oneofE2(Proto2PreserveUnknownEnumUnittest_MyEnum)

    static func ==(lhs: Proto2PreserveUnknownEnumUnittest_MyMessage.OneOf_O, rhs: Proto2PreserveUnknownEnumUnittest_MyMessage.OneOf_O) -> Bool {
      switch (lhs, rhs) {
      case (.oneofE1(let l), .oneofE1(let r)): return l == r
      case (.oneofE2(let l), .oneofE2(let r)): return l == r
      default: return false
      }
    }

    fileprivate init?<T: SwiftProtobuf.Decoder>(byDecodingFrom decoder: inout T, fieldNumber: Int) throws {
      switch fieldNumber {
      case 5:
        var value: Proto2PreserveUnknownEnumUnittest_MyEnum?
        try decoder.decodeSingularEnumField(value: &value)
        if let value = value {
          self = .oneofE1(value)
          return
        }
      case 6:
        var value: Proto2PreserveUnknownEnumUnittest_MyEnum?
        try decoder.decodeSingularEnumField(value: &value)
        if let value = value {
          self = .oneofE2(value)
          return
        }
      default:
        break
      }
      return nil
    }

    fileprivate func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V, start: Int, end: Int) throws {
      switch self {
      case .oneofE1(let v):
        if start <= 5 && 5 < end {
          try visitor.visitSingularEnumField(value: v, fieldNumber: 5)
        }
      case .oneofE2(let v):
        if start <= 6 && 6 < end {
          try visitor.visitSingularEnumField(value: v, fieldNumber: 6)
        }
      }
    }
  }

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &_e)
      case 2: try decoder.decodeRepeatedEnumField(value: &repeatedE)
      case 3: try decoder.decodeRepeatedEnumField(value: &repeatedPackedE)
      case 4: try decoder.decodeRepeatedEnumField(value: &repeatedPackedUnexpectedE)
      case 5, 6:
        if o != nil {
          try decoder.handleConflictingOneOf()
        }
        o = try Proto2PreserveUnknownEnumUnittest_MyMessage.OneOf_O(byDecodingFrom: &decoder, fieldNumber: fieldNumber)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = _e {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    }
    if !repeatedE.isEmpty {
      try visitor.visitRepeatedEnumField(value: repeatedE, fieldNumber: 2)
    }
    if !repeatedPackedE.isEmpty {
      try visitor.visitPackedEnumField(value: repeatedPackedE, fieldNumber: 3)
    }
    if !repeatedPackedUnexpectedE.isEmpty {
      try visitor.visitRepeatedEnumField(value: repeatedPackedUnexpectedE, fieldNumber: 4)
    }
    try o?.traverse(visitor: &visitor, start: 5, end: 7)
    try unknownFields.traverse(visitor: &visitor)
  }
}

extension Proto2PreserveUnknownEnumUnittest_MyMessage: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "e"),
    2: .standard(proto: "repeated_e"),
    3: .standard(proto: "repeated_packed_e"),
    4: .standard(proto: "repeated_packed_unexpected_e"),
    5: .standard(proto: "oneof_e_1"),
    6: .standard(proto: "oneof_e_2"),
  ]

  func _protobuf_generated_isEqualTo(other: Proto2PreserveUnknownEnumUnittest_MyMessage) -> Bool {
    if _e != other._e {return false}
    if repeatedE != other.repeatedE {return false}
    if repeatedPackedE != other.repeatedPackedE {return false}
    if repeatedPackedUnexpectedE != other.repeatedPackedUnexpectedE {return false}
    if o != other.o {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
