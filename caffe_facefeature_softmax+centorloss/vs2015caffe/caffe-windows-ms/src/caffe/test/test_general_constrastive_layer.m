caffe.reset_all();
caffe.set_mode_cpu();
test_net = caffe.Net('general_constrastive_layer.prototxt','test');
random_data = single(abs(randn(1,1,10,2)));
label = zeros(1,1,1,2);
label(1) = 1;
label(2) = 2;
f = test_net.forward({random_data, label});
b = test_net.backward({1});
b1 = squeeze(b{1});