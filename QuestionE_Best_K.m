clear all
clc
close

k=[1;2;3;5;10];
load MNIST_digit_data
new_image_test_idx = 1001:2000;
new_labels_test_idx = 1001:2000;
new_image_training_value_idx = 1 : 1000;
new_label_training_value_idx = 1 : 1000;

index_size=10;
for s =1:5
    for i = 1:index_size
       
        new_image_test = images_test(new_image_test_idx,:);
        new_labels_test = labels_test(new_labels_test_idx,1);

        new_image_train = images_train(new_label_training_value_idx,:);
        new_labels_train = labels_train(new_label_training_value_idx,1);
        [~,acc_av] = kNN(new_image_train,new_labels_train,new_image_test,new_labels_test,k(s));
        accuracy(s,1) = acc_av;

    end
end

plot(k,accuracy)

