clear all
clc
close

k=1;
load MNIST_digit_data
new_image_test_idx = 1:1000;
new_labels_test_idx = 1:1000;
a = [52.48,67.49,82.27,88.44,91.56,92.82,93.36,94.76,94.93,95.15];
b = [44.58,60.50,77.56,85.99,89.47,91.69,91.82,92.91,93.30,94.17];
c = [46.00,59.15,79.84,87.65,91.69,93.44,93.63,95.10,95.19,95.34];
d = [40.71,57.12,78.47,86.91,90.54,93.69,94.09,94.66,94.97,95.13];
e = [26.41,49.15,73.88,85.09,89.46,92.58,92.58,94.09,94.11,95.35];

output = [30 70 300 1000 2000 3500 4000 7500 8000 10000]'; 
index_size = 10;


for i = 1:index_size
    new_image_train_idx = 1:output(i);
    new_labels_train_idx = 1:output(i);



    new_image_test = images_test(new_image_test_idx,:);
    new_labels_test = labels_test(new_labels_test_idx,1);

    new_image_train = images_train(new_image_train_idx,:);
    new_labels_train = labels_train(new_labels_train_idx,1);

    [~,acc_av] = kNN(new_image_train,new_labels_train,new_image_test,new_labels_test,k);
    accuracy(i,1) = acc_av;
 
end

plot(output,a)
hold on
plot(output,b)
hold on
plot(output,c)
hold on
plot(output,d)
hold on
plot(output,e)
hold on
legend('show')