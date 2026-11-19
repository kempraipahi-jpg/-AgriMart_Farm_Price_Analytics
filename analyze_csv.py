import pandas as pd
import matplotlib.pyplot as plt
df=pd.read_csv("sample_market_prices.csv")
print(df.groupby("crop")["modal_price"].mean().sort_values(ascending=False))
df.groupby("crop")["modal_price"].mean().plot(kind="bar",title="Average Modal Price by Crop")
plt.ylabel("Sample price"); plt.tight_layout(); plt.savefig("avg_price_by_crop.png")
print("Saved chart: avg_price_by_crop.png")
