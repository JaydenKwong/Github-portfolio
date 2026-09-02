# AAPL Quarterly Revenue Forecasting Using SARIMA

# 1. Load libraries
library(readr)
library(forecast)
library(tseries)
library(uroot)

# 2. Import dataset
financial_analysis_tableau <- read_csv("~/Desktop/Financial Analysis Dashboard/financial_analysis_tableau.csv")
View(financial_analysis_tableau)

# 3. Filter AAPL data
AAPL <- subset(financial_analysis_tableau, symbol == "AAPL")

# 4. Create quarterly time series
AAPL_Revenue <- ts(AAPL$totalRevenue, start = c(2005,3), frequency = 4)

# 5. Plot original time series
plot(AAPL_Revenue, main = "AAPL Quarterly Revenue", xlab = "Year", ylab = "Revenue")

# 6. Check stationarity and seasonality
adf.test(AAPL_Revenue)
kpss.test(AAPL_Revenue)
ch.test(AAPL_Revenue)
ndiffs(AAPL_Revenue)
nsdiffs(AAPL_Revenue)

# 7. Apply seasonal and regular differencing
AAPL_Diff <- diff(diff(AAPL_Revenue, 4), 1)

# 8. Check stationarity after differencing
adf.test(AAPL_Diff)
kpss.test(AAPL_Diff)

# 9. Split into 70% training and 30% test data
train_AAPL <- AAPL_Revenue[1:(0.7*length(AAPL_Revenue))]
test_AAPL <- AAPL_Revenue[-c(1:(0.7*length(AAPL_Revenue)))]

# 10. Convert training and test data to time series
train_AAPL <- ts(train_AAPL, start = c(2005,3), frequency = 4)
test_AAPL <- ts(test_AAPL, start = c(2019,3), frequency = 4)

# 11. Examine time series, ACF and PACF
tsdisplay(train_AAPL)
tsdisplay(diff(diff(train_AAPL, 4), 1))

# 12. Automatic SARIMA model selection
auto.arima(train_AAPL)
auto.arima(train_AAPL, d = 1, D = 1, seasonal = TRUE, trace = TRUE)

# 13. Build selected SARIMA model
arima_AAPL_010_010 <- Arima(train_AAPL, order = c(0,1,0), seasonal = c(0,1,0))

# 14. View model
arima_AAPL_010_010
summary(arima_AAPL_010_010)

# 15. Check residuals
checkresiduals(arima_AAPL_010_010)

# 16. Forecast test period
forecast_AAPL <- forecast(arima_AAPL_010_010, h = length(test_AAPL))
forecast_AAPL

# 17. Evaluate forecast accuracy
accuracy(forecast_AAPL, test_AAPL)

# 18. Fit final model using all available AAPL data
final_AAPL_model <- Arima(AAPL_Revenue, order = c(0,1,0), seasonal = c(0,1,0))

# 19. Forecast one year ahead (4 quarters)
future_AAPL <- forecast(final_AAPL_model, h = 4)
future_AAPL

# 20. Plot final forecast
plot(future_AAPL, main = "AAPL Quarterly Revenue Forecast", xlab = "Year", ylab = "Revenue")

# 21. Add fitted SARIMA values
lines(future_AAPL$fitted, col = 2, lwd = 2)

# 22. Add legend
legend("topleft", c("AAPL Revenue", "SARIMA(0,1,0)(0,1,0)[4]", "Forecast"), col = c(1,2,4), lwd = 2, cex = 0.7)