--Question 1
SELECT date, SUM(impressions) 
FROM marketing_performance
GROUP BY date
ORDER BY date;

--Question 2
SELECT state, SUM(revenue)
FROM website_revenue
GROUP BY state
ORDER BY SUM(revenue) DESC
LIMIT 3;

The third best state, California (CA), generated 36,549 in revenue.

--Question 3
SELECT name, SUM(cost), SUM(impressions), SUM(clicks), SUM(revenue)
FROM marketing_performance
    JOIN campaign_info
ON marketing_performance.campaign_id = campaign_info.id
	JOIN website_revenue 
ON website_revenue.campaign_id = campaign_info.id
GROUP BY name
ORDER BY name;

--Question 4
SELECT geo, SUM(conversions)
FROM marketing_performance
WHERE campaign_id = 99058240
GROUP BY geo

Georgia (GA) generated the most conversions for campaign5

--Question 5 
SELECT marketing_performance.campaign_id, SUM(cost), SUM(revenue)
FROM marketing_performance
	JOIN website_revenue
ON marketing_performance.campaign_id = website_revenue.campaign_id
GROUP BY campaign_id
ORDER BY SUM(cost);

Campaign4 was the most efficient among the campaigns. It was most efficient due to ranking second in 
both spending the least amount of money on ads and generating the second-highest amount of revenue. 
Indicating that campaign4 had a good return on investment compared to the other campaigns. 
The other campaigns did not perform as efficiently. Some campaigns spent less money on ads but generated less revenue. 
While other campaigns spent alot of money on advertisements resulting in higher revenue, but with a higher total cost to achieve that revenue. 

--Question 6
SELECT weekday(date), SUM(clicks)
FROM marketing_performance
GROUP BY weekday(date)
ORDER BY SUM(clicks) DESC;