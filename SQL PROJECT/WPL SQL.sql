use projectk;
select * from auction_2023;	
/* 1. List the Player From India */
select Player from auction_2023 where National_Side="India";
/* 2. Which player got highest amount in wpl action 2023 */
select Player from auction_2023 where Price_US =(select max(Price_US) from auction_2023);
/* 3. No. of Players in each Team */
select Team,count(*)from auction_2023 group by Team ;
/* 4. List out the Australian Players */
select Player,count(*) from auction_2023 group by player,National_Side having National_Side="Australia";
/* 5. Fetch Indian players who playing in Mumbai Indians */
SELECT Player
FROM auction_2023
WHERE Team = 'Mumbai Indians' AND National_Side = 'India';
/* 6. Name the player who got higher auction price in Delhi Capitals */
SELECT Player, Price_US
FROM auction_2023
WHERE Team = 'Delhi Capitals'
ORDER BY Price_US DESC
LIMIT 1;
/* 7. Which team bought deepthi Sharma*/
SELECT Team
FROM auction_2023
WHERE Player = 'Deepti Sharma';
/* 8. Which Team Spend more money in this auction*/
SELECT Team, SUM(Price_US) as total_spending
FROM auction_2023
GROUP BY Team
ORDER BY total_spending DESC
LIMIT 1;
