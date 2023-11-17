// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    // 包的名稱
    name: "myplot-swift",

    // 支援的平台及版本
    platforms: [.macOS(.v10_15)],

    // 產品配置，指定產品類型和目標
    products: [
        .executable(
            name: "main",    // 可執行文件的名稱
            targets: ["main"]),  // 目標的名稱，這裡與產品名稱相同
    ],

    // 依賴項列表
    dependencies: [
        // 從 GitHub 引入 Plotly.swift 庫，指定分支為 main
        .package(url: "https://github.com/vojtamolda/Plotly.swift.git", branch: "main")
    ],

    // 目標配置
    targets: [
        // 可執行目標的配置
        .executableTarget(
            name: "main",  // 可執行目標的名稱
            // 目標的依賴項，這裡指定依賴 Plotly 產品，來自 Plotly.swift 包
            dependencies: [.product(name:"Plotly", package: "Plotly.swift")
        ]),
    ]
)
