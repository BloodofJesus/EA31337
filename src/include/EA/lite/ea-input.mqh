//+------------------------------------------------------------------+
//|                                                ea-input-lite.mqh |
//|                                           Copyright 2016, kenorb |
//|                                       https://github.com/EA31337 |
//+------------------------------------------------------------------+
#property copyright "Copyright 2016, kenorb" // ©
#property link      "https://github.com/EA31337"

//+------------------------------------------------------------------+
//| Includes.
//+------------------------------------------------------------------+
#include <EA31337\ea-enums.mqh>

//+------------------------------------------------------------------+
//| User input variables.
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
extern string __Trade_Parameters__ = "-- Trade parameters --"; // >>> TRADE <<<
extern uint     MaxOrders = 0; // Max orders (0 = auto)
extern uint      MaxOrdersPerType = 0; // Max orders per type (0 = auto)
extern double   LotSize = 0.00000000; // Lot size (0 = auto)
extern bool     TradeMicroLots = 1; // Trade micro lots?
extern int TrendMethod = 113; // Main trend method (0-255)
extern int MinVolumeToTrade = 2; // Min volume to trade
extern int MaxOrderPriceSlippage = 5; // Max price slippage (in pips)
extern int MaxTries = 5; // Max retries for opening orders
extern double MinPipChangeToTrade = 0.4; // Min pip change to trade (0 = every tick)
extern int MinPipGap = 30; // Min gap between trades per type (in pips)

//+------------------------------------------------------------------+
extern string   __EA_Order_Parameters__ = "-- Profit and loss parameters --"; // >>> PROFIT/LOSS <<<
extern int      TakeProfit = 120; // Take profit (in pips, 0 = auto)
extern int      StopLoss = 60; // Stop loss (in pips, 0 = auto)

//+------------------------------------------------------------------+
extern string __EA_Trailing_Parameters__ = "-- Profit and loss trailing parameters --"; // >>> TRAILINGS <<<
extern int TrailingStop = 30; // Extra trailing stop (in pips)
extern int TrailingProfit = 30; // Extra trailing profit (in pips)
extern double TrailingStopAddPerMinute = 0.5; // Decrease trail stop per minute (pip/min)

//+------------------------------------------------------------------+
extern string __EA_Risk_Parameters__ = "-- Risk management parameters --"; // >>> RISK <<
extern double RiskMarginPerOrder = 1.00000000; // Risk margin per order (in %, 0-100, 0 - auto, -1 - off)
extern double RiskMarginTotal = 15.00000000; // Risk margin in total (in %, 0-100, 0 - auto, -1 - off)
extern int CloseOrderAfterXHours = 96; // Close order after X hours (0 - off)
extern double RiskRatio = 0; // Risk ratio (0 = auto, 1.0 = normal)
extern int RiskRatioIncreaseMethod = 0; // Risk ratio increase method (0-255)
extern int RiskRatioDecreaseMethod = 3; // Risk ratio decrease method (0-255)

//+------------------------------------------------------------------+
extern string __Strategy_Parameters__ = "-- Per strategy parameters (0 to disable) --"; // >>> STRATEGIES <<<
extern double ProfitFactorMinToTrade = 0.6; // Min. profit factor per strategy to trade
extern double ProfitFactorMaxToTrade = 4.4; // Max. profit factor per strategy to trade

//+------------------------------------------------------------------+
extern string __Strategy_Boosting_Parameters__ = "-- Strategy boosting parameters (set 1.0 for default) --"; // >>> BOOSTING <<<
extern bool Boosting_Enabled = 1; // Enable boosting
extern double BoostTrendFactor = 1.5; // Boost by trend factor
extern double BestDailyStrategyMultiplierFactor = 1.1; // Multiplier for the best daily strategy
extern double BestWeeklyStrategyMultiplierFactor = 1; // Multiplier for the best weekly strategy
extern double BestMonthlyStrategyMultiplierFactor = 1; // Multiplier for the best monthly strategy
extern double WorseDailyStrategyDividerFactor = 0.8; // Divider for the worse daily strategy
extern double WorseWeeklyStrategyDividerFactor = 1.1; // Divider for the worse weekly strategy
extern double WorseMonthlyStrategyDividerFactor = 1; // Divider for the worse monthly strategy
extern double ConWinsIncreaseFactor = 0.4; // Increase lot factor on consequent wins (in %, 0 - off)
extern double ConLossesIncreaseFactor = 1.2; // Increase lot factor on consequent loses (in %, 0 - off)
extern uint ConFactorOrdersLimit = 200; // No of orders to check on consequent wins/loses

//+------------------------------------------------------------------+
extern string __EA_Account_Conditions__ = "-- Account conditions --"; // >>> CONDITIONS & ACTIONS <<<
// Note: It's not advice to use on accounts where multi bots are trading.
extern bool Account_Conditions_Active = 0; // Enable account conditions
// 5 - Equity 20% high
extern ENUM_ACC_CONDITION Account_Condition_1 = 6; // 1. Account condition
extern ENUM_MARKET_CONDITION Market_Condition_1 = 3; // 1. Market condition
extern ENUM_ACTION_TYPE Action_On_Condition_1 = 4; // 1. Action to take
// 8 - Equity 20% low
extern ENUM_ACC_CONDITION Account_Condition_2 = 7; // 2. Account condition
extern ENUM_MARKET_CONDITION Market_Condition_2 = 2; // 2. Market condition
extern ENUM_ACTION_TYPE Action_On_Condition_2 = 1; // 2. Action to take
// 12 - 80% Margin Used
extern ENUM_ACC_CONDITION Account_Condition_3 = 10; // 3. Account condition
extern ENUM_MARKET_CONDITION Market_Condition_3 = 8; // 3. Market condition
extern ENUM_ACTION_TYPE Action_On_Condition_3 = 0; // 3. Action to take
// 2 - Equity lower than balance
extern ENUM_ACC_CONDITION Account_Condition_4 = 20; // 4. Account condition
extern ENUM_MARKET_CONDITION Market_Condition_4 = 3; // 4. Market condition
extern ENUM_ACTION_TYPE Action_On_Condition_4 = 9; // 4. Action to take
// 18 - Max. daily balance > max. weekly
extern ENUM_ACC_CONDITION Account_Condition_5 = 21; // 5. Account condition
extern ENUM_MARKET_CONDITION Market_Condition_5 = 3; // 5. Market condition
extern ENUM_ACTION_TYPE Action_On_Condition_5 = 7; // 5. Action to take

extern int Account_Condition_MinProfitCloseOrder = 20; // Min pip profit on action to close

//+------------------------------------------------------------------+
extern string __EA_Account_Conditions_Params__ = "-- Account conditions parameters --"; // >>> CONDITIONS & ACTIONS PARAMS <<<
extern int MarketSuddenDropSize = 20; // Drop in pips to react
extern int MarketBigDropSize = 40; // Big drop in pips to react
extern int MarketSpecificHour = 10; // Specific hour used for conditions (0-23)

// Include strategies.
#include <EA31337-classes\Strategies.mqh>

//+------------------------------------------------------------------+
extern string __Experimental_Parameters__ = "-- Experimental parameters (not safe) --"; // >>> EXPERIMENTAL <<<
// Set stop loss to zero, once the order is profitable.
extern bool MinimalizeLosses = 0; // Minimalize losses?
int HourAfterPeak = 18; // Hour after peak
int ManualGMToffset = 0; // Manual GMT Offset
// How often trailing stop should be updated (in seconds). FIXME: Fix relative delay in backtesting.
int TrailingStopDelay = 0; // Trail stop delay
// How often job list should be processed (in seconds).
int JobProcessDelay = 1; // Job process delay

// Cache some calculated variables for better performance. FIXME: Needs some work.
#ifdef __experimental__
  extern bool Cache = FALSE; // Cache
#else
  const bool Cache = FALSE; // Cache
#endif

//+------------------------------------------------------------------+
extern string __Logging_Parameters__ = "-- Settings for logging & messages --"; // >>> LOGS & MESSAGES <<<
extern bool WriteReport = 1; // Write summary report on finish
extern bool PrintLogOnChart = 1; // Display info on chart
extern bool VerboseErrors = 1; // Display errors
extern bool VerboseInfo = 1; // Display info messages
#ifdef __debug__
  extern bool VerboseDebug = 0; // Display debug messages
  extern bool VerboseTrace = 0; // Display trace messages
#else
  bool VerboseDebug = 0;
  bool VerboseTrace = 0;
#endif

//+------------------------------------------------------------------+
extern string __UI_UX_Parameters__ = "-- Settings for User Interface & Experience --"; // >>> UI & UX <<<
extern bool SendEmailEachOrder = 0; // Send e-mail per each order
extern color ColorBuy = 16711680; // Color: Buy
extern color ColorSell = 255; // Color: Sell
extern bool SoundAlert = 0; // Enable sound alerts
extern string SoundFileAtOpen = "alert.wav"; // Sound: on order open
extern string SoundFileAtClose = "alert.wav"; // Sound: on order close
// extern bool SendLogs = FALSE; // Send logs to remote host for diagnostic purposes

//+------------------------------------------------------------------+
extern string __Backtest_Parameters__ = "-- Backtest parameters --"; // >>> BACKTESTING <<<
#ifndef __backtest__
  extern bool ValidateSettings = 0; // Validate startup settings
#else
  extern bool ValidateSettings = 1; // Validate startup settings
#endif
extern bool RecordTicksToCSV = 0; // Record ticks into CSV files
// extern int DemoMarketStopLevel = 10; // Demo market stop level

//+------------------------------------------------------------------+
extern string __EA_Constants__ = "-- Constants --"; // >>> CONSTANTS <<<
extern int MagicNumber = 31337; // Starting EA magic number (+40)

//+------------------------------------------------------------------+
extern string __Other_Parameters__ = "-- Other parameters --"; // >>> OTHER <<<
