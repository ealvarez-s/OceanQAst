# Benchmark de predicción en oceanografía

El repo incluye una serie de 20 años de temperatura, salinidad, nutrientes, clorofila, etc. a la que se le aplican enfoques estado-del-arte para hacer predicción en oceanografía (métodos estadísticos, machine learning, modelos 1D mecanicistas, híbridos...) y se evalúen sobre los mismos horizontes de predicción.

Los datos están en /data/ y los notebooks están organizados siguiendo un flujo de trabajo real que incluye:


## 1. Gestión y preparación de datos
### Objetivo: obtener series temporales fiables y utilizables.

## 2. Análisis exploratorio de series temporales
### Objetivo: comprender la dinámica de los datos.

## 3. Modelización estadística
Objetivo: representar y predecir la dinámica mediante modelos estadísticos.

## 4. Aprendizaje automático (Machine Learning)
Objetivo: aprender relaciones predictivas a partir de los datos.

## 5. Modelización basada en procesos
Objetivo: representar explícitamente los mecanismos físicos y biogeoquímicos.

## 6. Integración datos-modelos
Objetivo: combinar observaciones y modelos para mejorar la representación y la capacidad predictiva del sistema.

## 7. Cuantificación de incertidumbre
Objetivo: caracterizar la confianza en las simulaciones y predicciones.

## 8. Evaluación y validación
Objetivo: medir la calidad de simulaciones y predicciones.

## 9. Diagnóstico e interpretación ecológica
Objetivo: extraer conocimiento ecológico de los resultados


## Estructura del repositorio

```text
benchmark-prediccion-oceano/
├── README.md                    # Este archivo
├── data/
│   ├── raw/                     # Datos crudos (versionados)
│   └── processed/               # Datos procesados (no versionados, regenerables)
├── src/
│   └── xxx/                     
│       ├── xxx.py
│       └── xxx.py             
├── results/
│   ├── figures/
│   ├── forecast/
└── notebooks/
    ├── 01_data_preparation/                 
    ├── 02_exploratory_analysis/             
    ├── 03_statistical_models/                 
    └── 04_machine_learning/                 
    ├── 05_process_based_models/             
    ├── 06_data_model_combination/                
    └── 07_uncertainty_quantification/                
    ├── 08_validation/            
    └── 09_ecosystem_interpretation/               

```

## Setup

Con `conda`:

```{bash}
conda create -n cst python=3.13
conda activate cst
pip install -r requirements.txt
pip install -e .
```
