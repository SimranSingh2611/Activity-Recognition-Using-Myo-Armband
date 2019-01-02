# Activity-Recognition-Using-Myo-Armband


In this project, we attempted to develop a computing system that can understand human activities. There are a few components to understanding human activities: a) identify known activities, b) segment sequence of activities, and c) identify unknown activities. We will attempt to solve all three aspects. 

Assignment 1 comprised of three phases: 
1. Data Collection
2. Feature Extraction
3. Feature Selection

In Assignment 2, we did user dependent analysis. Considered the new set of features that were obtained by multiplying the PCA output with the feature set. Divided that new feature set into two parts for each user: a) part 1: training and b) part 2: test. Used three types of machines: a) decision trees, b) support vector machines, and c) neural networks. 
Trained each machine with the training data and then used the test data to report accuracy. The accuracy metrics used were:  Precision, Recall, F1 score. Reported each metric for every user.

In Assignment 3, we did user independent analysis. For a given gesture, we considered 60% of total users and used all their feature points of each user as training. Followed the same labelling strategy as considered in Assignement 2. The rest users were for testing. Did the same analysis as in Assignment 2 and reported the same metrics for each of the rest of the test users.
