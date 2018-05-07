**Tutorial for FEATURESELECT**

**Yosef Masoudi-Sobhanzadeha, Habib Motieghadera, Ali Masoudi-Nejada,\***

a Laboratory of system Biology and Bioinformatics, Institute of Biochemistry and
Biophysics, university of Tehran, Tehran, iran.

*FEATURESELECT*, an application for feature selection based on LIBSVM, has been
developed in laboratory of system biology and bioinformatics (LBB).
FEATURESELECT can be applied on problems needing to select subset of features
from given feature set. We will describe some aspects of *FEATURESELECT*.

**Implemented language**

MATLAB programing language is used for implementing of *FEATURESELECT*. There
some reasons for using it:

1.  *FEATURESELECT* can be applied on various areas such as biological data,
    image processing, handwrite detection, computer science and many other
    fields. MATLAB is common programing language in different sciences.

2.  MATLAB is supported by various operating systems such as win, linux, mac.

3.  MATLAB is open source, so everyone can add some new capabilities on
    *FEATURESELECT*. After investigating new capabilities, we will publish new
    version of *FEATURESELECT* at <https://lbb.ut.ac.ir>.

**Installation**

In order to install *FEATURESELECT*, you must provide some requirements:

1.  Install WINSDK.1 or MinGW

2.  Install c++ compiler

3.  Install MATLAB

After installing the requirements, follow these stages:

1.  Copy all files placed in *FEATURESELECT* folder on the one of the available
    directories.

2.  Go to \\FEATURESELECT\\matlab\\.

3.  Click on the one of the matlab files which is available in the entered
    directory. Notice that the matlab path is the current directory.

4.  Write "make" in the matlab's command window and press enter. Be sure that
    the command successfully completed. FEATURESELECT is based on LIBSVM
    library. You can get more information about it at
    https://www.csie.ntu.edu.tw/\~cjlin/libsvm/.

**Using from FEATURESELECT**

After installing the software, you can write "LBBFS" in the matlab command
window and use from *FEATURESELECT*. Consider fig.1 and fig.2.

![1](https://user-images.githubusercontent.com/34372417/39718974-b757e43e-51ec-11e8-9cf2-5ee914f97488.jpg)

Fig.1: run *FEATURESELECT*

![2](https://user-images.githubusercontent.com/34372417/39719605-9528b2ce-51ee-11e8-828b-a17a75576355.jpg)

Fig.2: *FEATURESELECT*

Fig.2 shows the *FEATURESELECT* software. This application has several sections:

1.  **LBB**: this laboratory has been founded by prof ali masoudi-nejad in 2006
    at university of Tehran, iran.

2.  **Input**: text, xls and matlab files are acceptable formats of input. You
    must convert xls file to txt file or m file if it has *struct* structure.
    TCN is abbreviation for training column number. Your data file and label
    file must be in the same file. Supposed file name is *input.tx* and the
    train column number (label of samples) is 222. You can type your input file
    location in specified box or select it using *select input file button*. For
    some applications, we need to normalize or fuzzifize input file. *Data
    normalization* and *data fuzzification* are designed for this purpose. After
    clicking on the each of the mentioned buttons, a new file will be created
    and its name will be added to the specified box. If first row or first
    column is not part of input file, click *on first row is not data* or *first
    column is not data* respectively. *FEATURESELECT* has three main goal: 1-
    easy use from LIBSVM, 2- feature selection for regression problems and 3-
    feature selection for classification problems. The default option is
    regression. deactive the *this is regression problem* option if your problem
    is classification.

3.  **Selection parameters:** you can set LIBSVM parameters in this section.
    Learning parameter which can be selected by the doted button (fig.3) is one
    of the LIBSVM's parameters. Training data percentage and maximum number of
    features which is desirable for your application can be written in the
    related boxes. Also if you want to apply LIBSVM on the all of the features
    (in other words, if you don’t want feature selection), click on the *only
    apply SVM* button**.**

    ![3](https://user-images.githubusercontent.com/34372417/39719653-b31b5bce-51ee-11e8-92c0-344730ff5728.jpg)

    Fig.3: learning parameter

4.  **Algorithms**: eleven algorithms are developed for selecting features from
    feature set. It is advised that the optimization algorithms iterated more
    than 30 times because of stochastic nature of them. You can set number of
    iterations in the relative box. The new from such as fig.4 which is result
    of clicking on WCC algorithm will appear. Then you can set the algorithm
    parameters.

    ![4](https://user-images.githubusercontent.com/34372417/39719678-c7321af8-51ee-11e8-9d57-e94603b4d904.jpg)

    Fig.4: WCC's parameters

    The developed algorithms and their reference are:

5.  WCC (world competitive contest): this algorithm is inspired by human sport
    rules. The default values are determined fairly and based on number of
    LIBSVM calling for all of the algorithms. You can get more information about
    WCC in <http://www.sciencedirect.com/science/article/pii/S2352914816300077>.

6.  LCA (league championship algorithm): LCA is an algorithm inspired by sport
    championships. Here is a link for download LCA original paper:
    <http://www.sciencedirect.com/science/article/pii/S1568494613004250>.

7.  GA (genetic algorithm): GA is the first optimization that mimics natural
    evolutionary processes. *Crate* and *mrate* are abbreviation for crossover
    rate and mutation rate in FEATURESELECT. More information about genetic
    algorithms is available in
    <http://www.sciencedirect.com/science/article/pii/S0377042705000774>.

8.  PSO (particle swarm optimization): PSO inspired by social behavior of birds.
    Unlike GA, PSO has not evolutionary operations such as crossover and
    mutation. Groups of birds fly toward destination. Useful information about
    PSO is available in <http://www.swarmintelligence.org/tutorials.php>.

9.  ACO (ant colony optimization): this algorithm proposed by marco dorigo in
    1992 inspired by ants social behavior. Some aspects of ACO can be found in
    <http://www.sciencedirect.com/science/article/pii/S0167739X0000042X>.

10. ICA (imperialist competitive algorithm): atashpaz gargari proposed ICA which
    is an algorithm inspired by imperialistic competition. You can download
    relative paper from <http://ieeexplore.ieee.org/document/4425083/>.

11. LA (learning automata): an automata is an abstract concept. Every cellular
    automata selects an action from action set and applies it on environment.
    The selected action will be awarded or penalized. Meybodi published
    application of LA in
    <https://link.springer.com/chapter/10.1007/3-211-27389-1_35>.

12. HTS (heat transfer optimization algorithm): it is a meta-heuristic algorithm
    which is recently introduced and is based on thermodynamics law. HTS is
    available in
    <http://www.sciencedirect.com/science/article/pii/S0020025515004764>. We
    showed conduction factor as CDF, convection factor as COF and radiation
    factor as ROF in FEATURESELECT.

13. FOA (forest optimization algorithm): FOA has been proposed by manizheh
    ghaemi and has interesting results. This algorithms begins with some
    randomly created trees as potential solutions. Original research article can
    be accessed in
    <http://www.sciencedirect.com/science/article/pii/S0031320316300954>.

14. DSOS (discrete symbiotic organisms search): DSOS has been published in 2017.
    It has been showed that DSOS is comparable with the other optimization
    algorithms, so we implemented it in FEATURESELECT. Original paper of DSOS
    can be found in
    <http://www.sciencedirect.com/science/article/pii/S0957417417304141>.

15. CUK (cuckoo optimization): CUK is proper for continuous nonlinear
    optimization problem. CUK is inspired by the life of bird family.
    <http://www.sciencedirect.com/science/article/pii/S1568494611001670>.

16. **Notifications**

>   After running the selected algorithms, the status of program is showed in
>   the notification section.

>   **Outputs**

>   The *results* folder is placed in the directory which contains
>   *FEATURESELECT's* files. For the regression problem, 2 files named as
>   *description* and *tbls* are created. For the classification problems 3
>   files named as *description*, *evaluation* and *tbls* are created. Date and
>   time are added to the end of file name. The created files contents also are
>   presented in the matlab command window. *Description* file (for both
>   regression and classification problems) includes some information such as
>   number of features and their indices, etc. *Evaluation* file that is
>   specific for classification problems includes statistical measures which are
>   essential for classification problems. *Tbls* file includes some other
>   statistical information such as p-value, confidence interval, standard
>   deviation, etc, for both classification and regression problems. Fig.5
>   through fig.7 are output instances which have been acquired by batch running
>   of the all algorithms on supposed input file located in *FEATURESELECT*
>   directory.

![5](https://user-images.githubusercontent.com/34372417/39719693-d6dd60ac-51ee-11e8-9b6a-c48e0d15e294.jpg)

>   Fig.5: part of *description* file

![6](https://user-images.githubusercontent.com/34372417/39719725-ebdd35e0-51ee-11e8-9a4e-fa1820cef704.jpg)

>   Fig.6: part of *tbls* file


![7](https://user-images.githubusercontent.com/34372417/39719735-f92480fa-51ee-11e8-8259-02c94fa0fc6d.jpg)

>   Fig.7: part of *evaluation* file (only for classification)

>   Table.1 shows abbreviation used in *FEATURESELECT* and their complete
>   states.

>   Table.1: abbreviations

| abbreviation | Complete state      |
|--------------|---------------------|
| ACC          | Accuracy            |
| SEN          | Sensitivity         |
| SPC          | Specificity         |
| FPR          | False positive rate |
| AL_NAME      | Algorithm name      |
| PRE          | Precision           |
| NOP          | Number of features  |
| ET           | Elapsed time        |
| ER           | Error               |
| CR           | Correlation         |
| STD          | Standard deviation  |
| CI           | Confidence interval |
| P            | p-value             |
| Df           | Degree of freedom   |

>   Accuracy convergence, accuracy average convergence (accuracy for all of the
>   population in specific generation), accuracy stability, error convergence,
>   error average convergence (for all potential solutions in specific
>   generation) and error stability are plotted for classification problems
>   (fig.8). Error convergence, error average convergence, error stability,
>   correlation convergence, correlation average convergence and correlation
>   stability are plotted for regression problem (dig.9). ROC plot, a
>   statistical measurement that investigates diagnostic ability of classifier,
>   and ROC space are showed in fig.10. You can modify these plots using
>   *view/property editor* menu.

![8](https://user-images.githubusercontent.com/34372417/39719796-33e201a4-51ef-11e8-8930-ccb376440830.jpg)


>   Fig.8: algorithms output for classification problem

![9](https://user-images.githubusercontent.com/34372417/39719849-52df0dfe-51ef-11e8-9b90-9d0796c19574.jpg)

>   Fig.9: algorithms output for regression problem

![10](https://user-images.githubusercontent.com/34372417/39719866-62a04e88-51ef-11e8-9143-3a10b363825e.jpg)

>   Fig.10: ROC plot and ROC space
