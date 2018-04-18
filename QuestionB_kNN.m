function [acc acc_av]=kNN(images_train,labels_train,images_test,labels_test,k)
accuracy_0 = 0;
accuracy_1 = 0;
accuracy_2 = 0;
accuracy_3 = 0;
accuracy_4 = 0;
accuracy_5 = 0;
accuracy_6 = 0;
accuracy_7 = 0;
accuracy_8 = 0;
accuracy_9 = 0;
acc_0 = 0;
acc_1 = 0;
acc_2 = 0;
acc_3 = 0;
acc_4 = 0;
acc_5 = 0;
acc_6 = 0;
acc_7 = 0;
acc_8 = 0;
acc_9 = 0;



[count,b]=hist(labels_test,unique(labels_test));
count=count';

for i=1:1000 
    [index,~]=size(images_train);
    a = repmat(images_test(i,:),index,1);
    e_d = sqrt(sum((a-images_train).^2,2)); 
    [~ ,minsort_idx] = sort(e_d,'ascend');
    min_lbl_data = labels_train(minsort_idx(1:k));
    predicted = mode(min_lbl_data);
    if(predicted ==labels_test(i))
        if(labels_test(i)==0)
            accuracy_0 = accuracy_0 +1;
            acc_0 = (accuracy_0/count(1))*100;
        elseif(labels_test(i)==1)
            accuracy_1 = accuracy_1 +1;
            acc_1 = (accuracy_1/count(2))*100;
        elseif(labels_test(i)==2)
            accuracy_2 = accuracy_2 +1;
            acc_2 = (accuracy_2/count(3))*100;
        elseif(labels_test(i)==3)
            accuracy_3 = accuracy_3 +1;
            acc_3 = (accuracy_3/count(4))*100;
        elseif(labels_test(i)==4)
            accuracy_4 = accuracy_4 +1;
            acc_4 = (accuracy_4/count(5))*100;
        elseif(labels_test(i)==5)
            accuracy_5 = accuracy_5 +1;
            acc_5 = (accuracy_5/count(6))*100;
        elseif(labels_test(i)==6)
            accuracy_6 = accuracy_6 +1;
            acc_6 = (accuracy_6/count(7))*100;
        elseif(labels_test(i)==7)
            accuracy_7 = accuracy_7 +1;
            acc_7 = (accuracy_7/count(8))*100;
        elseif(labels_test(i)==8)
            accuracy_8 = accuracy_8 +1;
            acc_8 = (accuracy_8/count(9))*100;
        elseif(labels_test(i)==9)
            accuracy_9 = accuracy_9 +1;
            acc_9 = (accuracy_9/count(10))*100;
        end
    end
end
acc = [acc_0,acc_1,acc_2,acc_3,acc_4,acc_5,acc_6,acc_7,acc_8,acc_9];
acc_av = mean(acc);
end