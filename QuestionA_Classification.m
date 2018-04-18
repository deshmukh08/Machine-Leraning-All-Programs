clear all
clc
close
k=3;
load MNIST_digit_data

for i=1:10000  
    [index,~]=size(images_train);
    a = repmat(images_test(i,:),index,1);
    e_d = sqrt(sum((a-images_train).^2,2)); 
    [~ ,minsort_idx] = sort(e_d,'ascend');
    min_lbl_data = labels_train(minsort_idx(1:k));
    predicted(i) = mode(min_lbl_data);
    fprintf("Predicted data for %d is %d\n",i,predicted(i));
end

