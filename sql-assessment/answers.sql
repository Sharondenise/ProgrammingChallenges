--Question 1
SELECT date, SUM(impressions) 
FROM marketing_performance
GROUP BY date
ORDER BY date;

--Question 2
SELECT state, SUM(revenue)
FROM website_revenue
GROUP BY state
ORDER BY SUM(revenue) 
LIMIT 3;

The third best state generated 36,549 in revenue.

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
ORDER BY SUM(cost)

Campaign4 was the most efficient of the campaigns. 
They ranked second for the least amount of money spent and also ranked second for the amount of revenue raised. 
The other campaigns Subsequently, campaign4 ranked second for the amount of revenue raised by the campaign. 
Other campaigns had a lower total cost but also a lower revenue. Vice-versa, companies had 

--Question 6
SELECT weekday(date), SUM(clicks)
FROM marketing_performance
GROUP BY weekday(date)
ORDER BY SUM(clicks) DESC;