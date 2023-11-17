// The Swift Programming Language
// https://docs.swift.org/swift-book

import Plotly

let x = 1...4
let y = [10, 15, 13, 17]

let scatter = Scatter(name: "Scatter", x: x, y: y)
let bar = Bar(name: "Bar", x: x, y: y)

let figure = Figure(data: [scatter, bar])
try figure.show()

