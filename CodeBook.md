The data set at hand is a result of experiments which have been carried out on 30 subjects of ages varying between 19 and 48. The data set can be found at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
and the title of the study is "Human Activity Recognition Using Smartphones Data Set ". In this study different variables are logged using a smartphone's embedded accelerometer and gyroscope. The subjects performed six different activities (laying, sitting, standing, walking, walking downstairs, walking upstairs).

The features available from this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. The "t" indicates that the variable is a time signal while the X, Y, or Z indicate the axis of measurement.The acceleration signal was further decomposed in body and gravity acceleration measurements using a filter. Furthermore, the letter "f" before any variable name indicates a fast fourier transform of the original signal.

A full description and listing of the orginal and the derived variables can be found in the "features_info.txt" file which accompanies the data set.

For the purpose of this project and in order to get to a tidy data set, the following variables have been used, some of which are intermediate variables and some of which are the final result.

Intermediate variables:
======================
feature_names    : records all the feature names from the file "features.txt"
X_test           : a data frame read from the file "X_test.txt" taking numeric values and
                   and represent the measured signals described in the "features_info
                   .txt"
y_test           : a data frame read from the file "y_test.txt" taking numeric values and
                   represents the activity number
subjectname      : a data frame read from the file "subject_test.txt" and represents the 
                   id of the subject that performed the activity
Xy_test          : a data frame that merges the X_test, y_test, and subjectname. It has        
                   563 culomns, one for the subject id, one for the activity id and 561 
                   for the various measured and derived signals.
body_acc_x_test  : a data frame of the body acceleration in the x direction for the test
                   group and contains 128 measurements for each observation.
Names            : a character vector used to assign names to all inertial signals
i                : an integer counter
body_acc_y_test  : a data frame of the body acceleration in the y direction for the test
                   group and contains 128 measurements for each observation.
body_acc_z_test  : a data frame of the body acceleration in the z direction for the test
                   group and contains 128 measurements for each observation.
body_gyro_x_test : a data frame of the gyroscope signal in the x direction for the test
                   group and contains 128 measurements for each observation.
body_gyro_y_test : a data frame of the gyroscope signal in the y direction for the test
                   group and contains 128 measurements for each observation.
body_gyro_z_test : a data frame of the gyroscope signal in the z direction for the test
                   group and contains 128 measurements for each observation.
total_acc_x_test : a data frame of the total acceleration in the x direction for the test
                   group and contains 128 measurements for each observation.
total_acc_y_test : a data frame of the total acceleration in the y direction for the test
                   group and contains 128 measurements for each observation.
total_acc_z_test : a data frame of the total acceleration in the z direction for the test
                   group and contains 128 measurements for each observation. 
test_data        : a data frame containing all the test data including the subject id, 
                   the activity, all the features, and the intertial signals.
X_train          : a data frame read from the file "X_train.txt" taking numeric values 
                   and represents the measured signals described in the "features_info
                  .txt"
y_train          : a data frame read from the file "y_train.txt" taking numeric values 
                   and represents the activity number
subjectname      : a data frame read from the file "subject_train.txt" and represents the 
                   id of the subject that performed the activity
Xy_train         : a data frame that merges the X_train, y_train, and subjectname. It has        
                   563 culomns, one for the subject id, one for the activity id and 561 
                   for the various measured and derived signals.
body_acc_x_train : a data frame of the body acceleration in the x direction for the train
                   group and contains 128 measurements for each observation.
Names            : a character vector used to assign names to all inertial signals
i                : an integer counter
body_acc_y_train : a data frame of the body acceleration in the y direction for the train
                   group and contains 128 measurements for each observation.
body_acc_z_train : a data frame of the body acceleration in the z direction for the train
                   group and contains 128 measurements for each observation.
body_gyro_x_train: a data frame of the gyroscope signal in the x direction for the train
                   group and contains 128 measurements for each observation.
body_gyro_y_train: a data frame of the gyroscope signal in the y direction for the train
                   group and contains 128 measurements for each observation.
body_gyro_z_train: a data frame of the gyroscope signal in the z direction for the train
                   group and contains 128 measurements for each observation.
total_acc_x_train: a data frame of the total acceleration in the x direction for the 
                   train group and contains 128 measurements for each observation.
total_acc_y_train: a data frame of the total acceleration in the y direction for the 
                   train group and contains 128 measurements for each observation.
total_acc_z_train: a data frame of the total acceleration in the z direction for the test
                   group and contains 128 measurements for each observation. 
train_data       : a data frame containing all the test data including the subject id, 
                   the activity, all the features, and the intertial signals.
selected         : identifies which column names have the word "mean" and "std".


Final variables:
===============
all_data         : contains all the data including the test and train data sets and their 
                   respective intertial data.
selected_data    : a data frame that selects only the subject id, activity and the 
                   culomns that represent a mean or a standard deviation value.
tidy_data        : calculates the mean of each variables for a specific subject and 
                   activity
tidier_data      : transforms the tidy_data data frame into a long format data frame 
                   having four columns for the subject id, activity, measurement and 
                   value. The measurement culomn contains strings that identify if it is 
                   a accelerometer signal, a gyroscope signal, a time signal, a fourier
                   transform...