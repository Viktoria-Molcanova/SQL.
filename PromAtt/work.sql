-- Функция для форматирования секунд
CREATE FUNCTION FormatSeconds(@totalSeconds INT)
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @days INT, @hours INT, @minutes INT, @seconds INT;
    
    SET @days = @totalSeconds / 86400; -- 86400 секунд в дне
    SET @hours = (@totalSeconds % 86400) / 3600; -- 3600 секунд в часе
    SET @minutes = (@totalSeconds % 3600) / 60; -- 60 секунд в минуте
    SET @seconds = @totalSeconds % 60; -- остаток секунд

    RETURN CAST(@days AS VARCHAR) + ' days ' + 
           CAST(@hours AS VARCHAR) + ' hours ' + 
           CAST(@minutes AS VARCHAR) + ' minutes ' + 
           CAST(@seconds AS VARCHAR) + ' seconds';
END;

-- Запрос для вывода четных чисел от 1 до 10
SELECT number
FROM (VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10)) AS Numbers(number)
WHERE number % 2 = 0;
