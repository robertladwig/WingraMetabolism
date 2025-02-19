library(tidyverse)
library(lubridate)


shallow_temp<- read_csv("data/temperature/shallow/temp_shallow.csv")
shallow_temp<- shallow_temp%>%
  mutate(datetime = as.POSIXct(datetime, format="%m/%d/%y %H:%M"))

mid_temp<- read_csv("data/temperature/mid/temp_mid.csv")
mid_temp<- mid_temp%>%
  mutate(datetime = as.POSIXct(datetime, format="%m/%d/%y %H:%M"))

deep_temp<- read_csv("data/temperature/deep/temp_deep.csv")
deep_temp<- deep_temp%>%
  mutate(datetime = as.POSIXct(datetime, format="%m/%d/%y %H:%M"))

ggplot(shallow_temp)+
  geom_line(aes(x = datetime, y = Temp_C, color = as.factor(depth)))+
  labs(fill = ((expression("Temperature " ( degree*C)))))+
  xlab("")+
  theme_bw()+
  theme(legend.title=element_blank())
ggplot(mid_temp)+
  geom_line(aes(x = datetime, y = Temp_C, color = as.factor(depth)))+
  labs(fill = ((expression("Temperature " ( degree*C)))))+
  xlab("")+
  theme_bw()+
  theme(legend.title=element_blank())

ggplot(deep_temp)+
  geom_line(aes(x = datetime, y = Temp_C, color = as.factor(depth)))+
  labs(fill = ((expression("Temperature " ( degree*C)))))+
  xlab("")+
  theme_bw()+
  theme(legend.title=element_blank())


