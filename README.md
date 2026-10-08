# Benchmark de predicción en oceanografía

Se incluye una serie de 20 años de hidrografía (temperatura, salinidad, fluorescencia, oxígeno), nutrientes y clorofila, recogida en la estación E2GI (https://www.seriestemporales-ieo.net/), a la que se le aplican enfoques *estado-del-arte* para hacer predicción en oceanografía (métodos estadísticos, machine learning y modelos mecanicistas) y se evalúen sobre los mismos horizontes de predicción.

Los notebooks están organizados siguiendo un flujo de trabajo real que incluye:


### 1. Gestión y preparación de datos
Objetivo: obtener series temporales fiables y utilizables.

### 2. Análisis exploratorio de series temporales
Objetivo: comprender la dinámica de los datos. Cálculo de indicadores: MLD, DCM.

### 3. Modelización estadística
Objetivo: representar y predecir la dinámica mediante modelos estadísticos.

### 4. Aprendizaje automático (Machine Learning)
Objetivo: aprender relaciones predictivas a partir de los datos.

### 5. Modelización basada en procesos
Objetivo: representar explícitamente los mecanismos (físicos y) biológicos (0D). Resolver las d/dt. 

### 6. Controlabilidad del sistema
Objetivo: evaluar la sensibilidad del modelo a perturbación en 1) parámetros (análisis de sensibilidad) y/o 2) estado (análisis de controlabilidad).

### 7. Integración datos-modelos
Objetivo: combinar observaciones y modelos para mejorar la representación y la capacidad predictiva del sistema. 1) calibración, métodos de optimización. 2) asimilación de datos.

### 8. Evaluación y validación
Objetivo: medir la calidad de simulaciones y predicciones (horizontes).



## Estructura del repositorio

```text
OceanQAst/
├── README.md                    # este archivo
├── environment.yml              # requiere conda
├── data/
│   ├── raw/                     # datos originales
│   └── processed/               # datos procesados        
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
│   └── forecast/
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

`export HOMEDIR=$PWD`

`export MY_DIR=$HOMEDIR/seamless-notebooks`



#### Point to correct branches in FABM and GOTM

`cd $MY_DIR/extern/fabm/`

`git checkout master` (neccton was no longer available??)

`cd $MY_DIR/extern/gotm/`

`git checkout 5f950ca05e08`

`git pull --recurse-submodules`

`git submodule update --init --recursive`



#### Add spectral light module (pml)

`cd $MY_DIR/extern/`

`git clone git@github.com:pmlmodelling/fabm-spectral.git spectral`



#### Add BFM (ogs)

`cd $MY_DIR/extern/`

`git clone --recurse-submodules git@github.com:inogs/bfmforfabm.git ogs`

`cd ogs`

`git checkout neccton` (it should work on master)



#### E2GI setup

`cd $MY_DIR/setups/`

`git clone git@github.com:ealvarez-s/setup_BFM1D_E2GI.git E2GI`



#### Compile pyfabm and GOTM-FABM (EAT posible)

`cd $HOMEDIR`

`bash ./my_install`



#### Open JupyterLab

`jupyter notebook`
