clc
close all
format longg
%importing csv files of eating activity

dmp_eating_acc_import = csvread('/Users/shubham/Downloads/Data-2/EatFood1/accelerometer-1533862083.csv',1);
dmp_eating_emg_import = csvread('/Users/shubham/Downloads/Data-2/EatFood1/emg-1533862083.csv',1);
dmp_eating_gyro_import = csvread('/Users/shubham/Downloads/Data-2/EatFood1/gyro-1533862083.csv',1);
dmp_eating_orienation_import = csvread('/Users/shubham/Downloads/Data-2/EatFood1/orientation-1533862083.csv',1);
dmp_eating_orienationEuler_import = csvread('/Users/shubham/Downloads/Data-2/EatFood1/orientationEuler-1533862083.csv',1);


%taking the median of the timestamp for representation purpose
dmp_timestamp = [];

 j=1;
 for i=1:64:14400
     dmp_timestamp(j) = median(dmp_eating_acc_import([i:i+63],1));
     j=j+1;
 end
 
 dmp_eating_master = [];
 dmp_eating_master = dmp_timestamp';
 
 %calculating features for accelerometer for eating
 dmp_eating_acc= [];
 j=1;
 for i=1:64:14400
         dmp_eating_acc(1,j) = min(dmp_eating_acc_import([i:i+63],2));
         dmp_eating_acc(2,j) = max(dmp_eating_acc_import([i:i+63],2));
         dmp_eating_acc(3,j) = mean(dmp_eating_acc_import([i:i+63],2));
         dmp_eating_acc(4,j) = std(dmp_eating_acc_import([i:i+63],2));
         dmp_eating_acc(5,j) = rms(dmp_eating_acc_import([i:i+63],2));
         dmp_eating_acc(6,j) = min(dmp_eating_acc_import([i:i+63],3));
         dmp_eating_acc(7,j) = max(dmp_eating_acc_import([i:i+63],3));
         dmp_eating_acc(8,j) = mean(dmp_eating_acc_import([i:i+63],3));
         dmp_eating_acc(9,j) = std(dmp_eating_acc_import([i:i+63],3));
         dmp_eating_acc(10,j) = rms(dmp_eating_acc_import([i:i+63],3));     
         dmp_eating_acc(11,j) = min(dmp_eating_acc_import([i:i+63],4));
         dmp_eating_acc(12,j) = max(dmp_eating_acc_import([i:i+63],4));
         dmp_eating_acc(13,j) = mean(dmp_eating_acc_import([i:i+63],4));
         dmp_eating_acc(14,j) = std(dmp_eating_acc_import([i:i+63],4));
         dmp_eating_acc(15,j) = rms(dmp_eating_acc_import([i:i+63],4));
  
         j=j+1;
 end
      dmp_eating_master(:,(2:16)) = dmp_eating_acc';

 %calculating features for emg for eating
 dmp_eating_emg= [];
 j=1;
 for i=1:256:57600
         dmp_eating_emg(1,j) = min(dmp_eating_emg_import([i:i+255],2));
         dmp_eating_emg(2,j) = max(dmp_eating_emg_import([i:i+255],2));
         dmp_eating_emg(3,j) = mean(dmp_eating_emg_import([i:i+255],2));
         dmp_eating_emg(4,j) = std(dmp_eating_emg_import([i:i+255],2));
         dmp_eating_emg(5,j) = rms(dmp_eating_emg_import([i:i+255],2));
         dmp_eating_emg(6,j) = min(dmp_eating_emg_import([i:i+255],3));
         dmp_eating_emg(7,j) = max(dmp_eating_emg_import([i:i+255],3));
         dmp_eating_emg(8,j) = mean(dmp_eating_emg_import([i:i+255],3));
         dmp_eating_emg(9,j) = std(dmp_eating_emg_import([i:i+255],3));
         dmp_eating_emg(10,j) = rms(dmp_eating_emg_import([i:i+255],3));
         dmp_eating_emg(11,j) = min(dmp_eating_emg_import([i:i+255],4));
         dmp_eating_emg(12,j) = max(dmp_eating_emg_import([i:i+255],4));
         dmp_eating_emg(13,j) = mean(dmp_eating_emg_import([i:i+255],4));
         dmp_eating_emg(14,j) = std(dmp_eating_emg_import([i:i+255],4));
         dmp_eating_emg(15,j) = rms(dmp_eating_emg_import([i:i+255],4));
         dmp_eating_emg(16,j) = min(dmp_eating_emg_import([i:i+255],5));
         dmp_eating_emg(17,j) = max(dmp_eating_emg_import([i:i+255],5));
         dmp_eating_emg(18,j) = mean(dmp_eating_emg_import([i:i+255],5));
         dmp_eating_emg(19,j) = std(dmp_eating_emg_import([i:i+255],5));
         dmp_eating_emg(20,j) = rms(dmp_eating_emg_import([i:i+255],5));
         dmp_eating_emg(21,j) = min(dmp_eating_emg_import([i:i+255],6));
         dmp_eating_emg(22,j) = max(dmp_eating_emg_import([i:i+255],6));
         dmp_eating_emg(23,j) = mean(dmp_eating_emg_import([i:i+255],6));
         dmp_eating_emg(24,j) = std(dmp_eating_emg_import([i:i+255],6));
         dmp_eating_emg(25,j) = rms(dmp_eating_emg_import([i:i+255],6));
         dmp_eating_emg(26,j) = min(dmp_eating_emg_import([i:i+255],7));
         dmp_eating_emg(27,j) = max(dmp_eating_emg_import([i:i+255],7));
         dmp_eating_emg(28,j) = mean(dmp_eating_emg_import([i:i+255],7));
         dmp_eating_emg(29,j) = std(dmp_eating_emg_import([i:i+255],7));
         dmp_eating_emg(30,j) = rms(dmp_eating_emg_import([i:i+255],7));
         dmp_eating_emg(31,j) = min(dmp_eating_emg_import([i:i+255],8));
         dmp_eating_emg(32,j) = max(dmp_eating_emg_import([i:i+255],8));
         dmp_eating_emg(33,j) = mean(dmp_eating_emg_import([i:i+255],8));
         dmp_eating_emg(34,j) = std(dmp_eating_emg_import([i:i+255],8));
         dmp_eating_emg(35,j) = rms(dmp_eating_emg_import([i:i+255],8));
         dmp_eating_emg(36,j) = min(dmp_eating_emg_import([i:i+255],9));
         dmp_eating_emg(37,j) = max(dmp_eating_emg_import([i:i+255],9));
         dmp_eating_emg(38,j) = mean(dmp_eating_emg_import([i:i+255],9));
         dmp_eating_emg(39,j) = std(dmp_eating_emg_import([i:i+255],9));
         dmp_eating_emg(40,j) = rms(dmp_eating_emg_import([i:i+255],9));
         j=j+1;
 end
     dmp_eating_master(:,(17:56)) = dmp_eating_emg';
     
%calculating features for gyro for eating 
dmp_eating_gyro= [];
 j=1;
 for i=1:64:14400
         dmp_eating_gyro(1,j) = min(dmp_eating_gyro_import([i:i+63],2));
         dmp_eating_gyro(2,j) = max(dmp_eating_gyro_import([i:i+63],2));
         dmp_eating_gyro(3,j) = mean(dmp_eating_gyro_import([i:i+63],2));
         dmp_eating_gyro(4,j) = std(dmp_eating_gyro_import([i:i+63],2));
         dmp_eating_gyro(5,j) = rms(dmp_eating_gyro_import([i:i+63],2));
         dmp_eating_gyro(6,j) = min(dmp_eating_gyro_import([i:i+63],3));
         dmp_eating_gyro(7,j) = max(dmp_eating_gyro_import([i:i+63],3));
         dmp_eating_gyro(8,j) = mean(dmp_eating_gyro_import([i:i+63],3));
         dmp_eating_gyro(9,j) = std(dmp_eating_gyro_import([i:i+63],3));
         dmp_eating_gyro(10,j) = rms(dmp_eating_gyro_import([i:i+63],3));     
         dmp_eating_gyro(11,j) = min(dmp_eating_gyro_import([i:i+63],4));
         dmp_eating_gyro(12,j) = max(dmp_eating_gyro_import([i:i+63],4));
         dmp_eating_gyro(13,j) = mean(dmp_eating_gyro_import([i:i+63],4));
         dmp_eating_gyro(14,j) = std(dmp_eating_gyro_import([i:i+63],4));
         dmp_eating_gyro(15,j) = rms(dmp_eating_gyro_import([i:i+63],4));
  
         j=j+1;
 end
      dmp_eating_master(:,(57:71)) = dmp_eating_gyro';
 
 %calculating Orientation features for eating
 dmp_eating_orienation= [];
 j=1;
 for i=1:64:14400
         dmp_eating_orienation(1,j) = min(dmp_eating_orienation_import([i:i+63],2));
         dmp_eating_orienation(2,j) = max(dmp_eating_orienation_import([i:i+63],2));
         dmp_eating_orienation(3,j) = mean(dmp_eating_orienation_import([i:i+63],2));
         dmp_eating_orienation(4,j) = std(dmp_eating_orienation_import([i:i+63],2));
         dmp_eating_orienation(5,j) = rms(dmp_eating_orienation_import([i:i+63],2));
         dmp_eating_orienation(6,j) = min(dmp_eating_orienation_import([i:i+63],3));
         dmp_eating_orienation(7,j) = max(dmp_eating_orienation_import([i:i+63],3));
         dmp_eating_orienation(8,j) = mean(dmp_eating_orienation_import([i:i+63],3));
         dmp_eating_orienation(9,j) = std(dmp_eating_orienation_import([i:i+63],3));
         dmp_eating_orienation(10,j) = rms(dmp_eating_orienation_import([i:i+63],3));     
         dmp_eating_orienation(11,j) = min(dmp_eating_orienation_import([i:i+63],4));
         dmp_eating_orienation(12,j) = max(dmp_eating_orienation_import([i:i+63],4));
         dmp_eating_orienation(13,j) = mean(dmp_eating_orienation_import([i:i+63],4));
         dmp_eating_orienation(14,j) = std(dmp_eating_orienation_import([i:i+63],4));
         dmp_eating_orienation(15,j) = rms(dmp_eating_orienation_import([i:i+63],4));
         dmp_eating_orienation(16,j) = min(dmp_eating_orienation_import([i:i+63],5));
         dmp_eating_orienation(17,j) = max(dmp_eating_orienation_import([i:i+63],5));
         dmp_eating_orienation(18,j) = mean(dmp_eating_orienation_import([i:i+63],5));
         dmp_eating_orienation(19,j) = std(dmp_eating_orienation_import([i:i+63],5));
         dmp_eating_orienation(20,j) = rms(dmp_eating_orienation_import([i:i+63],5));
  
         j=j+1;
 end
      dmp_eating_master(:,(72:91)) = dmp_eating_orienation';
      
      
%calculating Euler Orientation features for eating    
 dmp_eating_orienationEuler= [];
 j=1;
 for i=1:64:14400
         dmp_eating_orienationEuler(1,j) = min(dmp_eating_orienationEuler_import([i:i+63],2));
         dmp_eating_orienationEuler(2,j) = max(dmp_eating_orienationEuler_import([i:i+63],2));
         dmp_eating_orienationEuler(3,j) = mean(dmp_eating_orienationEuler_import([i:i+63],2));
         dmp_eating_orienationEuler(4,j) = std(dmp_eating_orienationEuler_import([i:i+63],2));
         dmp_eating_orienationEuler(5,j) = rms(dmp_eating_orienationEuler_import([i:i+63],2));
         dmp_eating_orienationEuler(6,j) = min(dmp_eating_orienationEuler_import([i:i+63],3));
         dmp_eating_orienationEuler(7,j) = max(dmp_eating_orienationEuler_import([i:i+63],3));
         dmp_eating_orienationEuler(8,j) = mean(dmp_eating_orienationEuler_import([i:i+63],3));
         dmp_eating_orienationEuler(9,j) = std(dmp_eating_orienationEuler_import([i:i+63],3));
         dmp_eating_orienationEuler(10,j) = rms(dmp_eating_orienationEuler_import([i:i+63],3));     
         dmp_eating_orienationEuler(11,j) = min(dmp_eating_orienationEuler_import([i:i+63],4));
         dmp_eating_orienationEuler(12,j) = max(dmp_eating_orienationEuler_import([i:i+63],4));
         dmp_eating_orienationEuler(13,j) = mean(dmp_eating_orienationEuler_import([i:i+63],4));
         dmp_eating_orienationEuler(14,j) = std(dmp_eating_orienationEuler_import([i:i+63],4));
         dmp_eating_orienationEuler(15,j) = rms(dmp_eating_orienationEuler_import([i:i+63],4));
  
         j=j+1;
 end
      dmp_eating_master(:,(92:106)) = dmp_eating_orienationEuler';

     

     


% Non-Eating Acitivity

%importing csv file for no-movement activity

dmp_noneating_acc_import = csvread('/Users/shubham/Downloads/Data-2/NoMovement1/accelerometer-1533863328.csv',1);
dmp_noneating_emg_import = csvread('/Users/shubham/Downloads/Data-2/NoMovement1/emg-1533863328.csv',1);
dmp_noneating_gyro_import = csvread('/Users/shubham/Downloads/Data-2/NoMovement1/gyro-1533863328.csv',1);
dmp_noneating_orienation_import = csvread('/Users/shubham/Downloads/Data-2/NoMovement1/orientation-1533863328.csv',1);
dmp_noneating_orienationEuler_import = csvread('/Users/shubham/Downloads/Data-2/NoMovement1/orientationEuler-1533863328.csv',1);



dmp_noneating_timestamp  = [];

 j=1;
 for i=1:64:14400
     dmp_noneating_timestamp(j) = median(dmp_noneating_acc_import([i:i+63],1));
     j=j+1;
 end
 
 dmp_noneating_master  = [];
 dmp_noneating_master  = dmp_noneating_timestamp';
 
 %calculating features for accelerometer for no-movement
 dmp_noneating_acc= [];
 j=1;
 for i=1:64:14400
         dmp_noneating_acc(1,j) = min(dmp_noneating_acc_import([i:i+63],2));
         dmp_noneating_acc(2,j) = max(dmp_noneating_acc_import([i:i+63],2));
         dmp_noneating_acc(3,j) = mean(dmp_noneating_acc_import([i:i+63],2));
         dmp_noneating_acc(4,j) = std(dmp_noneating_acc_import([i:i+63],2));
         dmp_noneating_acc(5,j) = rms(dmp_noneating_acc_import([i:i+63],2));
         dmp_noneating_acc(6,j) = min(dmp_noneating_acc_import([i:i+63],3));
         dmp_noneating_acc(7,j) = max(dmp_noneating_acc_import([i:i+63],3));
         dmp_noneating_acc(8,j) = mean(dmp_noneating_acc_import([i:i+63],3));
         dmp_noneating_acc(9,j) = std(dmp_noneating_acc_import([i:i+63],3));
         dmp_noneating_acc(10,j) = rms(dmp_noneating_acc_import([i:i+63],3));     
         dmp_noneating_acc(11,j) = min(dmp_noneating_acc_import([i:i+63],4));
         dmp_noneating_acc(12,j) = max(dmp_noneating_acc_import([i:i+63],4));
         dmp_noneating_acc(13,j) = mean(dmp_noneating_acc_import([i:i+63],4));
         dmp_noneating_acc(14,j) = std(dmp_noneating_acc_import([i:i+63],4));
         dmp_noneating_acc(15,j) = rms(dmp_noneating_acc_import([i:i+63],4));
  
         j=j+1;
 end
      dmp_noneating_master (:,(2:16)) = dmp_noneating_acc';

 %calculating features for emg for no-movement
 dmp_noneating_emg= [];
 j=1;
 for i=1:256:57600
         dmp_noneating_emg(1,j) = min(dmp_noneating_emg_import([i:i+255],2));
         dmp_noneating_emg(2,j) = max(dmp_noneating_emg_import([i:i+255],2));
         dmp_noneating_emg(3,j) = mean(dmp_noneating_emg_import([i:i+255],2));
         dmp_noneating_emg(4,j) = std(dmp_noneating_emg_import([i:i+255],2));
         dmp_noneating_emg(5,j) = rms(dmp_noneating_emg_import([i:i+255],2));
         dmp_noneating_emg(6,j) = min(dmp_noneating_emg_import([i:i+255],3));
         dmp_noneating_emg(7,j) = max(dmp_noneating_emg_import([i:i+255],3));
         dmp_noneating_emg(8,j) = mean(dmp_noneating_emg_import([i:i+255],3));
         dmp_noneating_emg(9,j) = std(dmp_noneating_emg_import([i:i+255],3));
         dmp_noneating_emg(10,j) = rms(dmp_noneating_emg_import([i:i+255],3));
         dmp_noneating_emg(11,j) = min(dmp_noneating_emg_import([i:i+255],4));
         dmp_noneating_emg(12,j) = max(dmp_noneating_emg_import([i:i+255],4));
         dmp_noneating_emg(13,j) = mean(dmp_noneating_emg_import([i:i+255],4));
         dmp_noneating_emg(14,j) = std(dmp_noneating_emg_import([i:i+255],4));
         dmp_noneating_emg(15,j) = rms(dmp_noneating_emg_import([i:i+255],4));
         dmp_noneating_emg(16,j) = min(dmp_noneating_emg_import([i:i+255],5));
         dmp_noneating_emg(17,j) = max(dmp_noneating_emg_import([i:i+255],5));
         dmp_noneating_emg(18,j) = mean(dmp_noneating_emg_import([i:i+255],5));
         dmp_noneating_emg(19,j) = std(dmp_noneating_emg_import([i:i+255],5));
         dmp_noneating_emg(20,j) = rms(dmp_noneating_emg_import([i:i+255],5));
         dmp_noneating_emg(21,j) = min(dmp_noneating_emg_import([i:i+255],6));
         dmp_noneating_emg(22,j) = max(dmp_noneating_emg_import([i:i+255],6));
         dmp_noneating_emg(23,j) = mean(dmp_noneating_emg_import([i:i+255],6));
         dmp_noneating_emg(24,j) = std(dmp_noneating_emg_import([i:i+255],6));
         dmp_noneating_emg(25,j) = rms(dmp_noneating_emg_import([i:i+255],6));
         dmp_noneating_emg(26,j) = min(dmp_noneating_emg_import([i:i+255],7));
         dmp_noneating_emg(27,j) = max(dmp_noneating_emg_import([i:i+255],7));
         dmp_noneating_emg(28,j) = mean(dmp_noneating_emg_import([i:i+255],7));
         dmp_noneating_emg(29,j) = std(dmp_noneating_emg_import([i:i+255],7));
         dmp_noneating_emg(30,j) = rms(dmp_noneating_emg_import([i:i+255],7));
         dmp_noneating_emg(31,j) = min(dmp_noneating_emg_import([i:i+255],8));
         dmp_noneating_emg(32,j) = max(dmp_noneating_emg_import([i:i+255],8));
         dmp_noneating_emg(33,j) = mean(dmp_noneating_emg_import([i:i+255],8));
         dmp_noneating_emg(34,j) = std(dmp_noneating_emg_import([i:i+255],8));
         dmp_noneating_emg(35,j) = rms(dmp_noneating_emg_import([i:i+255],8));
         dmp_noneating_emg(36,j) = min(dmp_noneating_emg_import([i:i+255],9));
         dmp_noneating_emg(37,j) = max(dmp_noneating_emg_import([i:i+255],9));
         dmp_noneating_emg(38,j) = mean(dmp_noneating_emg_import([i:i+255],9));
         dmp_noneating_emg(39,j) = std(dmp_noneating_emg_import([i:i+255],9));
         dmp_noneating_emg(40,j) = rms(dmp_noneating_emg_import([i:i+255],9));
         j=j+1;
 end
     dmp_noneating_master (:,(17:56)) = dmp_noneating_emg';
     
%calculating features for gyro for no-movement
dmp_noneating_gyro= [];
 j=1;
 for i=1:64:14400
         dmp_noneating_gyro(1,j) = min(dmp_noneating_gyro_import([i:i+63],2));
         dmp_noneating_gyro(2,j) = max(dmp_noneating_gyro_import([i:i+63],2));
         dmp_noneating_gyro(3,j) = mean(dmp_noneating_gyro_import([i:i+63],2));
         dmp_noneating_gyro(4,j) = std(dmp_noneating_gyro_import([i:i+63],2));
         dmp_noneating_gyro(5,j) = rms(dmp_noneating_gyro_import([i:i+63],2));
         dmp_noneating_gyro(6,j) = min(dmp_noneating_gyro_import([i:i+63],3));
         dmp_noneating_gyro(7,j) = max(dmp_noneating_gyro_import([i:i+63],3));
         dmp_noneating_gyro(8,j) = mean(dmp_noneating_gyro_import([i:i+63],3));
         dmp_noneating_gyro(9,j) = std(dmp_noneating_gyro_import([i:i+63],3));
         dmp_noneating_gyro(10,j) = rms(dmp_noneating_gyro_import([i:i+63],3));     
         dmp_noneating_gyro(11,j) = min(dmp_noneating_gyro_import([i:i+63],4));
         dmp_noneating_gyro(12,j) = max(dmp_noneating_gyro_import([i:i+63],4));
         dmp_noneating_gyro(13,j) = mean(dmp_noneating_gyro_import([i:i+63],4));
         dmp_noneating_gyro(14,j) = std(dmp_noneating_gyro_import([i:i+63],4));
         dmp_noneating_gyro(15,j) = rms(dmp_noneating_gyro_import([i:i+63],4));
  
         j=j+1;
 end
      dmp_noneating_master (:,(57:71)) = dmp_noneating_gyro';
      
  %calculating orientation features for no-movement
 dmp_noneating_orienation= [];
 j=1;
 for i=1:64:14400
         dmp_noneating_orienation(1,j) = min(dmp_noneating_orienation_import([i:i+63],2));
         dmp_noneating_orienation(2,j) = max(dmp_noneating_orienation_import([i:i+63],2));
         dmp_noneating_orienation(3,j) = mean(dmp_noneating_orienation_import([i:i+63],2));
         dmp_noneating_orienation(4,j) = std(dmp_noneating_orienation_import([i:i+63],2));
         dmp_noneating_orienation(5,j) = rms(dmp_noneating_orienation_import([i:i+63],2));
         dmp_noneating_orienation(6,j) = min(dmp_noneating_orienation_import([i:i+63],3));
         dmp_noneating_orienation(7,j) = max(dmp_noneating_orienation_import([i:i+63],3));
         dmp_noneating_orienation(8,j) = mean(dmp_noneating_orienation_import([i:i+63],3));
         dmp_noneating_orienation(9,j) = std(dmp_noneating_orienation_import([i:i+63],3));
         dmp_noneating_orienation(10,j) = rms(dmp_noneating_orienation_import([i:i+63],3));     
         dmp_noneating_orienation(11,j) = min(dmp_noneating_orienation_import([i:i+63],4));
         dmp_noneating_orienation(12,j) = max(dmp_noneating_orienation_import([i:i+63],4));
         dmp_noneating_orienation(13,j) = mean(dmp_noneating_orienation_import([i:i+63],4));
         dmp_noneating_orienation(14,j) = std(dmp_noneating_orienation_import([i:i+63],4));
         dmp_noneating_orienation(15,j) = rms(dmp_noneating_orienation_import([i:i+63],4));
         dmp_noneating_orienation(16,j) = min(dmp_noneating_orienation_import([i:i+63],5));
         dmp_noneating_orienation(17,j) = max(dmp_noneating_orienation_import([i:i+63],5));
         dmp_noneating_orienation(18,j) = mean(dmp_noneating_orienation_import([i:i+63],5));
         dmp_noneating_orienation(19,j) = std(dmp_noneating_orienation_import([i:i+63],5));
         dmp_noneating_orienation(20,j) = rms(dmp_noneating_orienation_import([i:i+63],5));
  
         j=j+1;
 end
      dmp_noneating_master (:,(72:91)) = dmp_noneating_orienation';
      
 %calculating Euler Orientation features for no-movement
 dmp_noneating_orienationEuler= [];
 j=1;
 for i=1:64:14400
         dmp_noneating_orienationEuler(1,j) = min(dmp_noneating_orienationEuler_import([i:i+63],2));
         dmp_noneating_orienationEuler(2,j) = max(dmp_noneating_orienationEuler_import([i:i+63],2));
         dmp_noneating_orienationEuler(3,j) = mean(dmp_noneating_orienationEuler_import([i:i+63],2));
         dmp_noneating_orienationEuler(4,j) = std(dmp_noneating_orienationEuler_import([i:i+63],2));
         dmp_noneating_orienationEuler(5,j) = rms(dmp_noneating_orienationEuler_import([i:i+63],2));
         dmp_noneating_orienationEuler(6,j) = min(dmp_noneating_orienationEuler_import([i:i+63],3));
         dmp_noneating_orienationEuler(7,j) = max(dmp_noneating_orienationEuler_import([i:i+63],3));
         dmp_noneating_orienationEuler(8,j) = mean(dmp_noneating_orienationEuler_import([i:i+63],3));
         dmp_noneating_orienationEuler(9,j) = std(dmp_noneating_orienationEuler_import([i:i+63],3));
         dmp_noneating_orienationEuler(10,j) = rms(dmp_noneating_orienationEuler_import([i:i+63],3));     
         dmp_noneating_orienationEuler(11,j) = min(dmp_noneating_orienationEuler_import([i:i+63],4));
         dmp_noneating_orienationEuler(12,j) = max(dmp_noneating_orienationEuler_import([i:i+63],4));
         dmp_noneating_orienationEuler(13,j) = mean(dmp_noneating_orienationEuler_import([i:i+63],4));
         dmp_noneating_orienationEuler(14,j) = std(dmp_noneating_orienationEuler_import([i:i+63],4));
         dmp_noneating_orienationEuler(15,j) = rms(dmp_noneating_orienationEuler_import([i:i+63],4));
  
         j=j+1;
 end
      dmp_noneating_master (:,(92:106)) = dmp_noneating_orienationEuler';
      
%combining eating and noneating for pca 
dmp_master = [];

dmp_master=dmp_eating_master(:,2:106);
dmp_master(226:450,:)=dmp_noneating_master(:,2:106);
      

%PCA
[coeff, pc, evl] = pca(dmp_master);
[coeff1, pc1, evl1] = pca(dmp_eating_master(:,2:106));
[coeff2, pc2, evl2] = pca(dmp_noneating_master(:,2:106));

%Converting coefficient to eigenvectors
evc=[];
for i=1:105
    evc(:,i)=coeff(:,i)/sqrt(evl(i));
end


evc1=[];
for i=1:105
    evc1(:,i)=coeff1(:,i)/sqrt(evl1(i));
end

evc2=[];
for i=1:105
    evc2(:,i)=coeff2(:,i)/sqrt(evl2(i));
end

ts = sum(evl);
ps = sum(evl(1:11,1));
%Percentage variance retained after selecting top 11 features (for joint PC)
pv = (ps/ts)*100

ts1 = sum(evl1);
ps1 = sum(evl1(1:11,1));
%Percentage variance retained after selecting top 11 features (for PC corresponding to eating)
pv1 = (ps1/ts1)*100

ts2= sum(evl2);
ps2 = sum(evl2(1:11,1));
%Percentage variance retained after selecting top 11 features (for PC corresponding to noneating)
pv2 = (ps2/ts2)*100

plot((1:105),pc1(1,:))
title('Data instance 1 of eating in terms of new feature space')
figure
plot((1:105),pc2(1,:))
title('Data instance 1 of noneating in terms of new feature space')

figure
bar((1:105),coeff(:,1));
title('Loadings for first component of joint matrix activity 1 and 2')
figure
bar((1:105),coeff2(:,1));
title('Loadings for first component of data matrix corr to activity 2 (noneating)')
figure
bar((1:105),coeff1(:,1));
title('Loadings for first component of data matrix corr to activity 1 (eating)')

figure
bar((1:105),evl(:));
title('Eigenvalues for joint pca of eating and noneating')
figure
bar((1:105),evl1(:));
title('Eigenvalues for pca of eating')
figure
bar((1:105),evl2(:));
title('Eigenvalues for pca of noneating')
