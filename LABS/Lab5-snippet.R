library(sf)
library(tidyverse)
library(tigris)
library(tidycensus)
library(ggrepel)
options(tigris_use_cache=TRUE)
options(tigris_class="sf")

census_api_key("8eab9b16f44cb26460ecbde164482194b7052772")


### Bring in 2017 variable related to educational attainment

acs <- get_acs("tract", table = "B15003", cache_table = TRUE,
               geometry = TRUE, state = "AZ", county = "Maricopa County",
               year = 2017, output = "tidy")




acs <- acs %>%
  mutate(
    id = str_extract(variable, "[0-9]{3}$") %>% as.integer
  ) %>%
  # variable 1 is the "total", which is just the sum of the others
  filter(id > 1) %>%
  mutate(education =case_when(
    id %>% between(2, 16) ~ "No HS diploma",
    id %>% between(17, 21) ~ "HS, no Bachelors",
    id > 21 ~ "At Least a Bachelors"
  )) %>% 
  group_by(GEOID, education) %>% 
  summarise(estimate = sum(estimate))





### Bring in 2012 Census Data

acs12 <- get_acs("tract", table = "B15003", cache_table = TRUE,
                 geometry = FALSE, state = "AZ", county = "Maricopa County",
                 year = 2012, output = "tidy")

acs12 <- acs12 %>%
  mutate(
    id = str_extract(variable, "[0-9]{3}$") %>% as.integer
  ) %>%
  # variable 1 is the "total", which is just the sum of the others
  filter(id > 1) %>%
  mutate(education =case_when(
    id %>% between(2, 16) ~ "No HS diploma",
    id %>% between(17, 21) ~ "HS, no Bachelors",
    id > 21 ~ "At Least a Bachelors"
  )) %>% 
  group_by(GEOID, education) %>% 
  summarise(estimate2012 = sum(estimate))



acs <- merge(acs,acs12, by.all="GEOID", all.x=TRUE) # all.x=TRUE makes sure that the merged dataframe keeps all counties in CenDF even if missing in CenDF2012



### Calculate Change 

acs <- acs %>%
  mutate( pct_change = 100 * (`estimate` - `estimate2012`) / `estimate2012`,
          change = estimate - estimate2012,
          abs.change = abs(change),
          change.type = ifelse( change >= 0, "POS", "NEG" ) )

 
acs_split <- acs %>%
  filter(estimate > 50) %>%
  split(.$education)

generate_samples <- function(data) 
  suppressMessages(st_sample(data, size = round(data$estimate / 100)))

points <- map(acs_split, generate_samples)

points <- imap(points, 
               ~st_sf(data_frame(education = rep(.y, length(.x))),
                      geometry = .x))
points <- do.call(rbind, points)


points <- points %>% group_by(education) %>% summarise()
points <- points %>%
  mutate(education = factor(
    education,
    levels = c("No HS diploma", "HS, no Bachelors",
               "At Least a Bachelors")))
# view how many points are in each layer
points %>% mutate(n_points = map_int(geometry, nrow))


theme_set( theme_minimal() +
            theme(panel.grid.major = element_line(size = 0),
                  plot.background = element_rect( fill = "#fdfdfd",
                                                  colour = NA ),
                  axis.title = element_blank(),
                  axis.text = element_blank(),
                  legend.position = "bottom"))

plot7<-ggplot() + 
  geom_sf(data = points, 
          aes(colour = education,
              fill = education),
          size = .1) + 
  scale_color_brewer( type = 'qual', palette = 2 ) + 
  scale_fill_brewer( type = 'qual', palette = 2 )+
  ggtitle("Distribution of educational attainment in Maricopa County",
          "1 dot equals 100 people")

plot7



## Dot Change Maps

acs_bachelors <-
  acs %>% 
  filter( education == 'At Least a Bachelors' )

acs.split.bachelors <- acs %>%
  # filter( estimate > 50) %>%
  split( .$change.type )

##Generate Samples function

generate_samples <- function(data)
{
  suppressMessages( 
   st_sample( data, size = round(data$abs.change / 100 ) ) 
  )
} 
  
pointsChange <- map( acs.split.bachelors, generate_samples )
pointsChange <- imap( pointsChange, 
               ~st_sf(data_frame( change.type = rep(.y, length(.x))),
                      geometry = .x))
pointsChange <- do.call( rbind, pointsChange )

pointsChange$col.code <- ifelse( pointsChange$change.type == "POS", "steelblue", "firebrick" )

plot8<-ggplot() + 
  geom_sf( data = pointsChange, 
          aes(colour = change.type,
              fill = change.type ),
          size = .1)+
  scale_color_brewer(type = "div", palette ='Set1', direction = -1) + 
  scale_fill_brewer(type = "div", palette = 'Set1',direction = -1)+
  ggtitle("Distribution of Change in educational attainment in Maricopa County",
          "1 dot equals 100 people")


plot8





water <- tigris::area_water("Arizona", "Maricopa County")
towns <- tigris::county_subdivisions("Arizona", county = "Maricopa County")
roads <- tigris::roads("Arizona", "Maricopa County")
Az_county <- tigris::counties(state = "Arizona")
Maricopa <- Az_county %>% filter(COUNTYFP == "Maricopa County")

# create town labels by finding the centroid of each town
# ggplot's label functions work better with X/Y dataframes rather 
  # than sf objects
  town_labels <- towns %>% select(NAME) %>%
    mutate(center = st_centroid(geometry)) %>%
    as.tibble %>%
    mutate(center = map(center, ~st_coordinates(.) %>%
                          as_data_frame)) %>%
    select(NAME, center) %>% unnest()
  ```
  
  ### Plot 
  
  ```{r}
  #Dot Density Map
  Plot9<-ggplot() +
    geom_sf(data = Maricopa, size = .1, fill = NA) +
    geom_sf(data = water, colour = "#eef7fa", size = .1,
            fill = "#e6f3f7") +
    geom_sf(data = points,
            aes(colour = education, fill = education),
            size = .1) +
    geom_sf(data = roads %>% filter(RTTYP %in% c("I", "S")),
            size = .2, colour = "gray40") +
    ggrepel::geom_label_repel(
      data = town_labels,
      aes(x = X, y = Y, label = NAME),
      size = 3, 
      label.padding = unit(.1, "lines"), alpha = .7) +
    ggtitle("Distribution of educational attainment in Maricopa County",
            "1 dot equals 100 people")
  Plot9
  ```
  
  ```{r}
  
  # Dot Change Map
  Plot10<-ggplot() +
    geom_sf(data = Maricopa, size = .1, fill = NA) +
    geom_sf(data = water, colour = "#eef7fa", size = .1,
            fill = "#e6f3f7") +
    geom_sf(data = pointsChange,
            aes(colour = change.type, fill = change.type),
            size = .1) +
    geom_sf(data = roads %>% filter(RTTYP %in% c("I", "S")),
            size = .2, colour = "gray40") +
    ggrepel::geom_label_repel(
      data = town_labels,
      aes(x = X, y = Y, label = NAME),
      size = 3, 
      label.padding = unit(.1, "lines"), alpha = .7) +
    ggtitle("Distribution of change in educational attainment in Maricopa County",
            "1 dot equals 100 people")
  
  Plot10
  
  
  ```
  
  ### Tmap
  
  - Lastly, use Tmap to visualize educational attainment changes
  
  ```{r, message=F, warning=F}
  
  ##TMAP
  library( tmap )
  library( sp )
  library( maptools )
  
  
  pointsChange2 <- st_transform( pointsChange, "+init=epsg:3395" )
  acs2 <- st_transform( acs, "+init=epsg:3395" )
  
  bb <- st_bbox( c( xmin = -12519146, xmax = -12421368, 
                    ymax = 3965924, ymin = 3899074 ), 
                 crs = st_crs("+init=epsg:3395"))
  
  tmap_mode("plot")
  tm_shape( acs2, bbox=bb ) +
    tm_borders( "grey50", alpha = 0.3, lwd = 0.1 ) +
    tm_shape( pointsChange2 ) +
    tm_dots(  shape=19, col = "col.code", size=0.15, alpha=0.4 ) 
  ```
  
  
  
  
  # On your own
  
  1. In part 1, you transformed ```HHInc_HousePrice_Ratio``` from continuous variable to factor variable with 4 levels (i.e. quartiles), and created  new cloropleth maps.  Looking at `grid.arrange` to compare your new cloropleth maps (i.e. Plot 1, Plot3, and Plot 5), answer the following questions:  
    
    1a. Which map do you think tells the most (and least) accurate representation of the data?  
    
    ***Answer***:  
    
    1b. Do you think its best to let R automatically cut the varyiable for you (i.e. Plot 1) or better to adjust the variable cut yourself?
    
    ***Answer***: 
    
    2. In Step 3 of Part 2, what do you notice when looking at the descriptive statistics for the house price to income ratio during the two different time periods (i.e. is there an average increase, decrease or no change over time)?  What is the range of the change variable and interpet the meaning?
    
    ***Answer***: 
    
    3. In Step 5 of Part 2, create at least 2 new cloropleth maps based on alternative cut values for the change in house price to income ratio.  Comment on what you did and what map provides the most accurate depiction of the underlying data.  
  
  - Use `grid.arrange` to compare the various cloropleth maps side by side and comment on which map offers the most accurate interpration of the data.   
  
  ***hint***: Follow a similar procedure as in Part 1 to look at terciles, quartiles, quantiles, etc.).  You will need to remove the `scale_fill_viridis` in plot 6 with `scale_fill_manual` as in Plot 5.  


***Answer***:  
  
  
  ```{r}
#Edit me
```

4. In Part 3, we looked at the change in college educated population using dot change plots.  Go back and look at the change in relatively uneducated population by looking at changes in population without high school degree.  

***Hint*** Replace education grouping from above (`acs_bachelors <- acs %>% filter( education == 'At Least a Bachelors' )`) with `No HS diploma`. Then, re-run the code and show below ***3 new maps*** from plot 8, plot 10, and tmap above.  Write down any information that you can glean from these maps, along with criticisms or how to improve the map?  
  
  ```{r}
#Edit me
```
