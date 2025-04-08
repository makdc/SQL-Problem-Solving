/*
We are writing a query to answer the direct question of:

What are the top 10 selling products by revenue received at each store location in 2023? 

What we may be able to interpret from the data we find:



If one product appears at the top of every store's partition:
 - it is possible we identified a popular product our customers are willing to spending the most on regardless of the store
    - if so, can put more resources behind the product to increase its visibilty in other stores, leading to increased sales

If one store appears to stand out with higher sales for each product in their top 10:
 - We may have identified a better operating store
    - We may need to review how that store is operating and share operating standards with other stores, leading to an increase in sales

The Limitations/Weakness
 - This is only one or two dimensions. The sales could be relational such as larger sized location or larger population or potential customers.
 
Experimenting is required on the data before any conclusions can be made.

If we teaked the query below, we could also answer:
    
    What are the lowest ranked products by sales? 
     - We can consider dropping the product or reducing inventory to allow space for better selling products
     - Maybe those products need to be replaced by a higher quality product or more attractive product

    What are our top 10 selling products by revenue received at each store location from XXXX?
     - We could build a trend from multiple time ranges to see if some products have grown in popularity
        - This could track seasonality, whether we should increase or decrease stock around specific times of the year
        - 

*/
/*
create CTE containing The Stores and their sold units and revenue for each product
The CTE will be easier to read and possibly run much faster than the alternative option, if not faster, then this is a happy compromise 
*/ 

    WITH SalesData AS ( 
        -- WITH can be interpreted as the foundational query to be used later in another query
        SELECT  
            -- The SELECT statement is actually the final output step. It's good to have a predicted ouput in the mind's eye, then work backwards.
            -- Once that abstraction is in mind, we know how the output should appear
            -- the Select statement is great for providing checkpoints for the rest of the query and testing if your code's output matches the expectation
            -- The better we know our data, the faster that image generates in our mind -> the more efficient we are when writing the query. Also experience helps too. Especially with bad data.
            -- To write good code is to have a good imagination. Hopefully that's true.

            s.StoreID,
            -- we plan to group on this attribute so we get data for the whole store, at this point there will only be 1 output line for each store 
            p.ProductID,
            -- then we'll add granularity with a secondary grouping of product, now there's one output line for each product in each store
            SUM(od.Quantity) AS TotalQuantity, 
            -- takes advantage of the group by statement and aggregates all unit sales from each order by the unique storeID and ProductID
            -- readability is important. AliaSes helps when reading the code and reading the output. Also for calling the attribute later on
            SUM(od.Quantity * od.UnitPrice) AS TotalSales
            -- takes advantage of the group by statement and aggregates all generated revenue by the unique storeID and ProductID
            -- revenue = # of units sold * $ of each unit
        FROM  
            Orders o
            -- Pulling orders table as o so we can later build the relations between OrderDetails and our Stores
            -- another style of AliaS without AS, to be used specifically with tables
            -- we currently have (o)
        JOIN  
            OrderDetails od ON o.OrderID = od.OrderID 
            -- Pulling OrderDetails table as od and clarifying the relation of the two tables -> OrderID
            -- Allowing us to later connect the products sold in the orders to the originating store of order
            -- we currently have (o<>od)
        JOIN  
            Products p ON od.ProductID = p.ProductID
            -- Pulling Products table as p and clarifying the relation to Products -> ProductID
            -- Allowing us to access product attributes
            -- we currently have (o<>od<>p)
        JOIN  
            Stores s ON o.StoreID = s.StoreID 
            -- Pulling Stores table as s and clarifying the relation to Orders -> StoreID
            -- Allowing us to access store attributes
            -- we currently have (s<>o<>od<>p)
            -- review inquiry and the DB schema to confirm if any other attributes/tables are needed
        WHERE  
            o.OrderDate BETWEEN '2023-01-01' AND '2023-12-31' 
            -- we are restricting the time frame of the search to 2023
            -- The between operator in this DBMS is inclusive, this may be inconsistent accross DBMSs  
        GROUP BY  
            s.StoreID, p.ProductID
            -- This creates a unique pairing where there should be no repeat StoreID and ProductID pairs
            -- If we are ever aggragating/combining many small metrics into fewer line we should expect a group by
    ), 

-- create second CTE using the columns from the first one. Good for readability and allows to add a column for reordering the results later    
    RankedSales AS ( 
        SELECT  
            StoreID, 
            ProductID, 
            TotalQuantity, 
            TotalSales, 
            RANK() OVER (PARTITION BY StoreID ORDER BY TotalSales DESC) AS SalesRank
            -- Rank will add numbered column from 1 to maybe +inf, I never confirmed the max number.
            -- Adding the orderby statement keyword and the corresponding attribute is necessary to guide the ranking of the entries
            -- most to least DESC, least to most ASC
            -- AS SalesRank to improve readability and calling the attribute later on
        FROM  
            SalesData 
    ) 
    -- This is the final output, this may seem like an extra unnecessary step, but we don't want the SalesRank attribute to appear in our final output
    SELECT  
        StoreID, 
        ProductID, 
        TotalQuantity, 
        TotalSales 
    FROM  
        RankedSales 
        -- pulling the well organized CTE data
    WHERE  
        SalesRank <= 10
        -- since the ranking was partitioned, we should expect 1-10 to appear for each store. If there's 5 stores we get 50 lines in the output
    ORDER BY  
        StoreID, TotalSales DESC;
        -- Sorting first by StoreID descending from infinity to 0. This keeps the storeIDs together so we're not paging up and down to interpret the information
        -- If the StoreID is shared by other entries, then sort by TotalSales while maintaining the sort of the StoreIds
        -- very easy to read output. Send it to excel and add fancy headers and colors to really make the data pop. or not. 