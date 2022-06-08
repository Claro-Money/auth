// swift-tools-version:5.3
import PackageDescription
import Foundation

let package = Package(
    name: "Auth",
//    products: [
//        .library(name: "Authentication", targets: ["Authentication"]),
//    ],
    dependencies: [
        // 🌎 Utility package containing tools for byte manipulation, Codable, OS APIs, and debugging.
        .package(url: "https://github.com/vapor/core.git", from: "3.0.0"),
        
        // 🔑 Hashing (BCrypt, SHA, HMAC, etc), encryption, and randomness.
        .package(url: "https://github.com/vapor/crypto.git", from: "3.0.0"),

        // 🚀 Non-blocking, event-driven networking for Swift (HTTP and WebSockets).
        .package(url: "https://github.com/vapor/http.git", from: "3.1.0"),

        // 🖋 Swift ORM framework (queries, models, and relations) for building NoSQL and SQL database integrations.
        .package(url: "https://github.com/vapor/fluent.git", from: "3.0.0-"),

        // 📦 Dependency injection / inversion of control framework.
        .package(url: "https://github.com/vapor/service.git", from: "1.0.0"),

        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.2.0")
    ],
    targets: [
        .target(name: "Authentication", dependencies: [.product(name: "Async", package: "core"), .product(name: "Bits", package: "core"), .product(name: "Crypto", package: "crypto"), .product(name: "Debugging", package: "core"), .product(name: "Fluent", package: "fluent"), .product(name: "HTTP", package: "http"), .product(name: "Service", package: "service"), .product(name: "Vapor", package: "vapor")]),
        .testTarget(name: "AuthenticationTests", dependencies: ["Authentication", .product(name: "Vapor", package: "vapor")]),
    ]
)
