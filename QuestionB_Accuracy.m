clear all
clc
close
k=3;
load MNIST_digit_data
new_image_test_idx = 1:1000;
new_labels_test_idx = 1:1000;
new_image_test = images_test(new_image_test_idx,:);
new_labels_test = labels_test(new_labels_test_idx,1);

new_image_train = images_train(new_image_test_idx,:);
new_labels_train = labels_train(new_labels_test_idx,1);

[acc,acc_av] = kNN(images_train,labels_train,new_image_test,new_labels_test,k);

fprintf("Average Accurage from 0 to 9 classes is as follows\n");
disp(acc);
fprintf("Average Accuracy is");
disp(acc_av);
