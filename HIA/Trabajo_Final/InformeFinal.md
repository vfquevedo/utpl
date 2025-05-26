
# 🧠 1. Introducción

Este proyecto tiene como objetivo aplicar técnicas de Inteligencia Artificial utilizando software libre para analizar y predecir el comportamiento de ventas de sillas de auto para bebés en diferentes tiendas. A través del uso de herramientas colaborativas como Google Colab y GitHub, se realiza un flujo de trabajo completo que incluye la carga de datos, exploración, visualización, modelado y evaluación de resultados. El producto final es un modelo de clasificación entrenado y almacenado para futuras predicciones.

---

# 🔬 2. Marco teórico de las tecnologías/librerías usadas

Se utilizaron las siguientes tecnologías:

- **pandas**: Librería esencial para la manipulación y análisis de datos estructurados (DataFrames).
- **scikit-learn**: Biblioteca de aprendizaje automático en Python que incluye algoritmos como `RandomForestClassifier`.
- **matplotlib**: Herramienta de visualización 2D para gráficos estáticos.
- **bokeh**: Librería para visualizaciones interactivas en la web.
- **pywalker**: Utilidad que automatiza el análisis exploratorio de datos.
- **pickle**: Librería estándar de Python para serializar objetos, como modelos entrenados.

Estas herramientas fueron seleccionadas por su carácter de código abierto, robustez y capacidad de integración en entornos colaborativos como JupyterLab o Google Colab.

---

# 📊 3. Descripción del dataset usado

El conjunto de datos es una versión simulada denominada `Carseats`, que representa las ventas de sillas de auto para niños en 400 ubicaciones. Los datos fueron divididos en dos fuentes:

- **30% en formato CSV**: descargado desde un repositorio en GitHub.
- **70% en formato SQL**: script ejecutado en una base de datos SQLite.

## Variables incluidas:

| Variable              | Descripción                                                               |
|-----------------------|---------------------------------------------------------------------------|
| `Sales`              | Ventas unitarias (en miles)                                                |
| `PriceComp`          | Precio de la competencia                                                   |
| `Income`             | Ingreso promedio de la comunidad                                           |
| `Advertising`        | Presupuesto de publicidad local                                            |
| `Population`         | Tamaño de la población local                                               |
| `Price`              | Precio del producto                                                        |
| `ShelfLocation`      | Ubicación en la estantería (Mala, Media, Buena)                            |
| `Age`                | Edad promedio de la población local                                        |
| `Education`          | Nivel educativo promedio                                                   |
| `Urban`              | Zona urbana (`Yes` / `No`)                                                 |
| `US`                 | Ubicación en EE. UU. (`Yes` / `No`)                                        |
| `HighSales`          | Ventas altas (> 8 unidades): 1, bajas: 0 (generada a partir de `Sales`)    |

---

# 🛠️ 4. Descripción de los pasos realizados en el proyecto

1. **Carga de datos**:
   - Se descargaron los archivos `Carseats_30percent.csv` y `Carseats_70percent.sql` desde GitHub.
   - Se unieron los datos usando `pandas` y `sqlite3`.

2. **Preprocesamiento**:
   - Se eliminaron duplicados.
   - Se creó la variable binaria `HighSales` como objetivo.
   - Las variables categóricas fueron codificadas con `LabelEncoder`.
   - Los datos numéricos fueron escalados usando `StandardScaler`.

3. **División del dataset**:
   - 70% para entrenamiento y 30% para prueba.

4. **Entrenamiento del modelo**:
   - Se usó un `RandomForestClassifier` con 100 árboles y una semilla de reproducibilidad.

5. **Evaluación del modelo**:
   - Se generó un `classification_report` y una `confusion_matrix` para evaluar el rendimiento.

6. **Serialización**:
   - El modelo fue guardado como archivo `carseats_model.pkl` usando `pickle`.

---

# 📈 4.1 Visualizaciones generadas

- **Histograma de precios** (`matplotlib`): Muestra la distribución de los precios cobrados en diferentes tiendas.
- **Gráfico de dispersión Precio vs. Ventas** (`bokeh`): Permite visualizar la relación entre el precio y el volumen de ventas.
- **Análisis exploratorio automático** (`pywalker`): Genera una serie de gráficos y tablas que resumen la estructura de los datos de forma automatizada.

---

# ✅ 5. Conclusiones

- El proyecto demuestra cómo integrar datos de distintas fuentes (CSV + SQL) en un flujo de trabajo unificado.
- El modelo Random Forest fue eficaz en la clasificación de ventas altas y bajas, con métricas de rendimiento aceptables.
- Las herramientas utilizadas permitieron una implementación ágil y replicable gracias a su naturaleza de código abierto.
- El modelo está listo para su despliegue en una aplicación Flask para predicciones en tiempo real.

---

# 📚 6. Bibliografía

- James, G., Witten, D., Hastie, T. y Tibshirani, R. (2013). *An Introduction to Statistical Learning with Applications in R*. Springer. [https://www.statlearning.com](https://www.statlearning.com)
- Scikit-learn Documentation: [https://scikit-learn.org/](https://scikit-learn.org/)
- Pandas Documentation: [https://pandas.pydata.org/](https://pandas.pydata.org/)
- Matplotlib Documentation: [https://matplotlib.org/](https://matplotlib.org/)
- Bokeh Documentation: [https://docs.bokeh.org/](https://docs.bokeh.org/)
- PyWalker GitHub: [https://github.com/dhirajk100/pywalker](https://github.com/dhirajk100/pywalker)
