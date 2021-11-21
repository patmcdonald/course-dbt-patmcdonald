# Answers to Week One questions

- How many users do we have?
- Answer: 130
`select count(distinct user_id) from users;`

- On average, how many orders do we receive per hour?
- Answer: 16
`select count(distinct order_id)/count(distinct extract(hour from created_at)) from 'orders';`

- On average, how long does an order take from being placed to being delivered?
- Answer: 3 days
`select avg(age(delivered_at,created_at))dif from "orders" where status ='delivered';`

- How many users have only made one purchase? Two purchases? Three+ purchases?
*This is a bit beyond my present SQL ability!*

- On average, how many unique sessions do we have per hour?
*This is a bit beyond my present SQL ability also!*

