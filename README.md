# Exploración de problemas de predicción en oceanografia
#### Oportunidades de investigación interdisciplinar con computación cuántica

OceanQAst es una plataforma de exploración y formulación de problemas científicos comunes en oceanografía, que puedan traducirse en oportunidades de investigación interdisciplinar con computación cuántica.

El repositorio incluye una serie de 20 años de hidrografía (temperatura, salinidad, fluorescencia, oxígeno), nutrientes y clorofila, recogida en la estación E2GI (https://www.seriestemporales-ieo.net/). Los datos se utilizan en una serie de notebooks que permiten explorar, aplicar y comparar métodos de predicción de series temporales oceanográficas, desde enfoques estadísticos hasta modelos basados en procesos, con énfasis en sus fundamentos, requisitos, limitaciones y aplicaciones científicas.

Los notebooks están organizados siguiendo un flujo de trabajo real y cada uno intenta explicar cuál es el método, qué problema resuelve, qué datos necesita y cómo se interpretan sus resultados, mediante ejemplos sencillos y reproducibles. No es una lista exhaustiva, está en una fase inicial cuyo objetivo es identificar problemas interesantes, no presentar soluciones definitivas, ni presuponer dónde aparecerá la oportunidad cuántica.

### 1. Preparación de datos
Objetivo: entender los tipos de datos presentados, obtener series temporales utilizables, rellenar huecos si es necesario, formatear para análisis sucesivos.

### 2. Análisis exploratorio y cálculo de indicadores
Objetivo: comprender la dinámica de los datos. Cálculo de indicadores: MLD, DCM, fenología.

### 3. Modelización estadística
Objetivo: representar y predecir la dinámica mediante modelos estadísticos.
##### Apartado específico para métodos de evaluación de stocks

### 4. Aprendizaje automático (Machine Learning)
Objetivo: aprender relaciones predictivas a partir de los datos.

### 5. Modelización basada en procesos
Objetivo: representar explícitamente los mecanismos (físicos y) biológicos (0D).

### 6. Controlabilidad del sistema
Objetivo: evaluar la sensibilidad del modelo a perturbación en 1) parámetros (análisis de sensibilidad) y/o 2) estado (análisis de controlabilidad).

### 7. Integración datos-modelos
Objetivo: combinar observaciones y modelos para mejorar la representación y la capacidad predictiva del sistema. 1) calibración, métodos de optimización. 2) asimilación de datos.

### 8. Evaluación y validación
Objetivo: medir la calidad de simulaciones y predicciones (horizontes).
##### Apartado específico para detección de señales de alerta temprana


## Estructura del repositorio

```text
OceanQAst/
├── README.md                    # este archivo
├── environment.yml              # requiere conda
├── data/
│   ├── raw/                     # datos originales
│   └── processed/               # datos formateados        
├── notebooks/
│   ├── 01_data_preparation.ipynb               
│   ├── 02_exploratory_analysis.ipynb            
│   ├── 03_statistical_models.ipynb          
│   ├── 04_machine_learning.ipynb          
│   ├── 05_process_based_models.ipynb            
│   ├── 06_controlability.ipynb        
│   ├── 07_data_model_combination.ipynb               
│   └── 08_validation.ipynb
├── results/
│   ├── figures/
│   ├── forecast/
│   └── metrics/
├── seamless-notebooks/        # hay que clonar git@github.com:BoldingBruggeman/seamless-notebooks.git
│   ├── extern/ogs             # hay que clonar git@github.com:inogs/bfmforfabm.git
│   ├── extern/spectral        # hay que clonar git@github.com:pmlmodelling/fabm-spectral.git
│   └── setups/E2GI            # hay que clonar git@github.com:ealvarez-s/setup_BFM1D_E2GI.git
└── src/                       # de momento no hay nada, por si se necesita
    └── xxx/                     
        ├── xxx.py
        └── xxx.py          
```

### Configuración

`git clone git@github.com:ealvarez-s/OceanQAst.git`

`cd OceanQAst`

`git clone --recurse-submodules https://github.com/BoldingBruggeman/seamless-notebooks.git`

`conda env create -f environment.yml`

`conda activate oceanqast`

`export HOMEDIR=$PWD` ($env:HOMEDIR = $PWD.Path en PowerShell)

`export MY_DIR=$HOMEDIR/seamless-notebooks` ($env:MY_DIR = "$env:HOMEDIR\seamless-notebooks" en PowerShell)



#### Point to correct branches in FABM and GOTM

`cd $MY_DIR/extern/fabm/` (cd $env:MY_DIR/extern/fabm/ en PowerShell)

`git checkout master` (necesita master, neccton is no longer available y detached no funciona)

`cd $MY_DIR/extern/gotm/` (cd $env:MY_DIR/extern/gotm/ en PowerShell)

`git checkout 5f950ca05e08`

`git pull --recurse-submodules`

`git submodule update --init --recursive`



#### Add spectral light module (pml)

`cd $MY_DIR/extern/` (cd $env:MY_DIR/extern/ en PowerShell)

`git clone git@github.com:pmlmodelling/fabm-spectral.git spectral`



#### Add BFM (ogs)

`cd $MY_DIR/extern/`

`git clone --recurse-submodules git@github.com:inogs/bfmforfabm.git ogs`

`cd ogs`

`git checkout neccton` (it should work on master)



#### E2GI setup

`cd $MY_DIR/setups/` (cd $env:MY_DIR/setups/ en PowerShell)

`git clone git@github.com:ealvarez-s/setup_BFM1D_E2GI.git E2GI`



#### Compile pyfabm and GOTM-FABM (EAT posible)

`cd $HOMEDIR` (cd $env:HOMEDIR en PowerShell)

`bash ./my_install`



#### Open JupyterLab

`jupyter notebook`
