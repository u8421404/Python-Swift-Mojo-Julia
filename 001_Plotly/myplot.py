import plotly.graph_objects as go

# 定義 x 軸和 y 軸的數據
x = [1, 2, 3, 4]
y = [10, 15, 13, 17]

# 創建散點圖
scatter = go.Scatter(x=x, y=y, mode='lines+markers', name='Scatter')

# 創建柱狀圖
bar = go.Bar(x=x, y=y, name='Bar')

# 將兩個圖表組合到一個圖形中
figure = go.Figure(data=[scatter, bar])

# 顯示圖形
figure.show()

