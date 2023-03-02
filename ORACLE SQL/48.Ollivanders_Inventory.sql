SELECT id, age, coins_needed, power
FROM (SELECT w.id, wp.age, w.coins_needed, 
      MIN(w.coins_needed) OVER (PARTITION BY wp.age, w.power) min_coins_need, w.power
    FROM wands w, wands_property wp
    WHERE w.code = wp.code
    AND is_evil = 0
    ORDER BY 4 DESC, 2 DESC, 3 ASC)
    WHERE min_coins_need = coins_needed
     ORDER BY 4 DESC, 2 DESC, 3 ASC;