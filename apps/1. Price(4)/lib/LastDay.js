const dates = {{DailyWinRates_11.data.datum}}.map(date => new Date(date));
return new Date(Math.max(...dates)).toISOString().split('T')[0];