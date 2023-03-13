# Hecho con gusto por Leislie R. Manjarrez O.

# Instalar paquete de datos
install.packages("gapminder")

# Llamar la libreria
library(gapminder)

# Cargar los datos al entorno
data("gapminder")

# Crear objeto filtrando por año
gapminder2007 <- gapminder [gapminder$year == "2007",]

# Visualizar encabezados
head(gapminder2007)

# Instalar ggplot2
install.packages("ggplot2")

# Llamar a la libreria
library(ggplot2)

# Crear un gráfico de puntos con ggplot
ggplot(data = gapminder2007,
       mapping = aes(x = gdpPercap,
                     y = lifeExp)) +
  geom_point()

# Probando con distintos coloes
ggplot(data = gapminder2007,
       mapping = aes(x = gdpPercap,
                     y = lifeExp,
                     color = continent)) +
  geom_point()

# Probando mas esteticas como forma y tamano
ggplot(data = gapminder2007,
       mapping = aes(x = gdpPercap,
                     y = lifeExp,
                     color = continent,
                     shape = continent,
                     size = pop)) +
  geom_point()

# Anadiendo texto
ggplot(data = gapminder2007,
       mapping = aes(x = gdpPercap,
                     y = lifeExp,
                     color = continent,
                     shape = continent,
                     size = pop)) +
  geom_point() +
  geom_text(label = gapminder2007$country,
            color = "black",
            size = 3)

# Colocando lineas de regresion
ggplot(data = gapminder2007,
       mapping = aes(x = gdpPercap,
                     y = lifeExp,
                     color = continent)) +
  geom_point() +
  geom_smooth (method = lm)
  
# Quitando desviacion estandar de las lineas de regresion
ggplot(data = gapminder2007,
       mapping = aes(x = gdpPercap,
                     y = lifeExp,
                     color = continent)) +
  geom_point() +
  geom_smooth (method = lm,
               se = FALSE,
               fullrange = TRUE)