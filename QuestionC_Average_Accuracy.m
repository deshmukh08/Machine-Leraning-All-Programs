clear all
clc
close
k=1;
load MNIST_digit_data
new_image_test_idx = 1:1000;
new_labels_test_idx = 1:1000;

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
plot(output,accuracy);