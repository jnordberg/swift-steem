/// Sha2 bindings.
/// - Author: Johan Nordberg <code@johan-nordberg.com>

import Crypto
import Foundation

internal extension Data {
    /// Return a SHA2-256 hash of the data.
    func sha256Digest() -> Data {
        let buf = UnsafeMutablePointer<UInt8>.allocate(capacity: 32)
        self.withUnsafeBytes {
            hasher_Raw(HASHER_SHA2, $0, self.count, buf)
        }
        return Data(bytesNoCopy: buf, count: 32, deallocator: .custom({ ptr, _ in
            ptr.deallocate()
        }))
    }
}
