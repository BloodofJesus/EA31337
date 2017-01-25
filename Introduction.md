## Introduction

Within this document, you will find instructions on the installation and usage of EA31337 trading robot for MetaTrader platform.

If you don't have MetaTrader platform installed yet, please follow the steps below. Otherwise jump into Installation of trading robot section.

If you having any problems or questions during the installation steps, please [raise a support ticket](https://github.com/EA31337/EA3133-Support/issues/new) or [join a chat](https://gitter.im/EA31337/EA3133-Support).

### Features

The EA provides the following features:

* compatible with all MetaTrader 4 brokers,
* over 30x4 optimized strategies coordinated and working as one single algorithm where each strategy analyses market on multiple timeframes (M1-M30),
* over 30 major technical indicators tested and analysed on real-time (on every single tick),
* exceptional number of customizable user parameters (over 300),
* task scheduler which queues and re-trades the rejected trades due to high volatility or broker requotes,
* trade prioritiser prioritise trading according to high demand or market limits,
* trade booster is able to increase lot ratio for successful strategies over current week or month, as well as handicap or disable non-successful strategies for temporary period,
* Risk Ratio manages automatically your risk given your current equality/balance and the market conditions,
* lot balancer knows exactly how much to invest (contract size) given your equality/balance ratio,
* order balancer knows exactly how many trades to open given your balance, opened trades, Stop Out levels and market conditions (Risk Ratio),
* optional TradeWithTrend parameter minimalize the risk by trading with market trend only,
* profit/stop trailing system dynamically sets order limits based on the market conditions (learn more below),
* powerful OpenMethod system enhances technical indicators and trades only on successful market conditions (learn more below),
* unique profit-stop trailing system auto-controls when to take profit or when to close the order by specific market conditions based on the technical indicator analysis,
* unique conditional system which decides when to trade based on the given strategy and state of technical indicators which gives thousands of possibilities optimized on demand by our cloud system.

#### Profit/Stop Trailing system

This unique profit-stop trailing system auto-controls when to take profit or when to close the order by specific market conditions based on the technical indicator analysis. Few examples:

- close trade when price reached higher highs of 50-200 bars,
- close the order when specific indicator (out of 30) reached its peak,
- close trade when resistance level is reached,
- set the order stop loss between low and high of last 200 bars,
- set the order stop the same as slow moving average plus 20 pips,
- set profit trailing system when the price reaches SAR reversal points,
- keep profit/stop trailings always 20 pips outside of upper and lower Bollinger Bands,
- and many other (over 27 possible trailing configurations).

#### Open Method system

Unique conditional system which decides when to trade based on the given strategy and state of technical indicators. In other words each strategy uses unique configuration of technical indicators and conditions to indicate buy and sell signals. Few examples:

- lower/higher Bands are reached, but signal could only happen when the price will close outside or inside of bands (128 different combinations of raising signal only for Bands),
- RSI is reached certain level, but raise the signal only when the 3 last bars are beyond that limit to avoid false signals (along with other 32 possible combinations),
- raise SAR signal when previous SAR confirmed it (along with other similar 64 combinations),
- and so on, which gives thousands of possibilities optimized on demand by our cloud system.

### Before you start

Please trade responsively and follow below rules to trade safely:

* if you're beginner, do not hurry and take some time to get familiar with the product, its settings and your broker,
* choose your broker wisely to make sure EA will work correctly, so please investigate your broker spreads, commissions and their market gaps before starting, otherwise high spreads can easily kill your account,
* the recommended spreads for major symbol pairs (such as EURUSD, GBPUSD, etc.) are below 2 pips (20 points), therefore do not use EA in accounts with spreads above these limits without proper backtesting, since the spread is the main factor how much profit you can make,
* make sure you provide a stable internet connection to ensure reliable operation of EA (24/7),
* watch out for brokers who steal pips by closing orders at a price which is less favourable to you by 1-2 pips which can reduce the profits made by EA,
* we strongly recommend that you backtest your robot before use (with specific symbol pair, given initial deposit, broker spread and other settings) or try to operate on a demo account before trading with real money for at least few weeks, this will help you ro become familiar with the product before you commit gunuine funds to your real money account,
* when investing less than 10k, always trade on micro lots (when broker doesn't allow it, change your broker),
* do not use brokers which doesn't allow hedging positions or micro lots,
* do not increase any lots or risk criteria if your tradings are going well (EA will automatically adjust the lot size and risk ratio given current balance),
* trade in long-term, never short-term, as satisfactory results can be a matter of weeks or months,
* it is not recommended to launch and close your trading terminal too often while trades are opened as this can affect the expected results,

Please note that our cloud system constantly improves the settings depending on the new findings which would be included in the new versions.

Currently EA is optimized for EURUSD, however you can find online ready-to-use SET files for different currency pairs or spread which you can use.

## Installation

### MetaTrader 4 platform

1. Download MetaTrader platform from your broker's site, alternatively from www.metaquotes.net.

   a. Once on the site, click on MetaTrader 4, then on Trading Terminal.
   a. At the bottom, click on Download MetaTrader 4 Terminal button.
   
   Alternatively click this [direct link](https://download.mql5.com/cdn/web/metaquotes.software.corp/mt4/mt4setup.exe) to start download.
   
1. Install platform by running its executable file and follow the steps of the installation wizzard.

1. After completing installation, the Terminal window should be shown and you will be asked to create a demo account. So you may fill in the details and select the deposit amount of your account, otherwise please log-in to your existing account.

### Installation of EA31337 trading robot

1. Run MetaTrader 4 Trading Terminal.
1. Click *File, Open Data Folder* in a top menu bar.
1. Copy provided *EX4* or *EX5* file into that opened folder (MQL4/Experts).
1. Click *Tools*, *Options*, and in *Expert Advisors* tab please enable *Allow automated trading* and *Allow DLL imports* to activate automated trading on your account, then click *OK*.
1. Click *File, New Chart* and *EURUSD* (recommended). You may switch any timeframe (e.g. M1).
1. Now in *Navigator* window attach *EA31337* to a chart either from contextual menu, or alternatively simply drag EA onto the chart (if you don't see EA yet, *Refresh* or restart your terminal).
1. *Expert* pop-up should appear, so the following options are mandatory to set-up:

    a. in *Common* tab: *Allow live trading* & *Allow DLL imports*
    b. in *Inputs* tab, please enter your *E-Mail* and *License* by clicking on *Value* column and confirming by *Tab* or *Enter*
1. Now you should have smiley face in the upper right hand corner of your chart which means your EA is up and running, otherwise if your EA is reporting invalid parameters, please repeat steps 5-6.
1. You can enable or disable EA at any time by clicking AutoTrading button in upper bar.


### Configuration of EA

There are many of adjustable inputs that you can set. These are documented in a separate provided file.

If you planning to run EA on variety of symbol pairs, it is strongly advised that you can use our optimization set files found at https://github.com/EA31337/EA31337-Lite-Sets optimized by our computing cloud especially for your initial balance, spread and symbol pair, so EA can run at full speed.

## Terms of Use

By using EA31337, you understand and agree that we (company and author) are not be liable or responsible for any loss or damage due to any reason. Although every attempt has been made to assure accuracy, we do not give any express or implied warranty as to its accuracy. We do not accept any liability for error or omission.

You acknowledge that you are familiar with these risks and that you are solely responsible for the outcomes of your decisions. We accept no liability whatsoever for any direct or consequential loss arising from the use of this product. You understand and agree that past results are not necessarily indicative of future performance.

Your purchase of EA31337 trading robot serves as your acknowledgement and representation that you have read and understand these TERMS OF USE and that you agree to be bound by such Terms of Use ("License Agreement").

### Disclaimer and Risk Warnings

Trading any financial market involves risk. All forms of trading carry a high level of risk so you should only speculate with money you can afford to lose. You can lose more than your initial deposit and stake. Please ensure your chosen method matches your investment objectives, familiarize yourself with the risks involved and if necessary seek independent advice.

NFA and CTFC Required Disclaimers: Trading in the Foreign Exchange market as well as in Futures Market and Options or in the Stock Market is a challenging opportunity where above average returns are available for educated and experienced investors who are willing to take above average risk. However, before deciding to participate in Foreign Exchange (FX) trading or in Trading Futures, Options or stocks, you should carefully consider your investment objectives, level of experience and risk appetite. Do not invest money you cannot afford to lose.

CFTC RULE 4.41 - HYPOTHETICAL OR SIMULATED PERFORMANCE RESULTS HAVE CERTAIN LIMITATIONS. UNLIKE AN ACTUAL PERFORMANCE RECORD, SIMULATED RESULTS DO NOT REPRESENT ACTUAL TRADING. ALSO, SINCE THE TRADES HAVE NOT BEEN EXECUTED, THE RESULTS MAY HAVE UNDER-OR-OVER COMPENSATED FOR THE IMPACT, IF ANY, OF CERTAIN MARKET FACTORS, SUCH AS LACK OF LIQUIDITY. SIMULATED TRADING PROGRAMS IN GENERAL ARE ALSO SUBJECT TO THE FACT THAT THEY ARE DESIGNED WITH THE BENEFIT OF HINDSIGHT. NO REPRESENTATION IS BEING MADE THAN ANY ACCOUNT WILL OR IS LIKELY TO ACHIEVE PROFIT OR LOSSES SIMILAR TO THOSE SHOWN.


### Copyright information

Copyright © 2016 – 31337 Investments Ltd. - All Rights ReservedPublisher & Author: 31337 Investments Ltd.