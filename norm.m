%Read an Image A(Template)
A1 = imread('benten.jpg');

%Read the Target Image
B1 = imread('watch.jpg');

A = A1(:,:,1);
B = B1(:,:,1);


normx_corrmap=normxcorr2(B(:,:,1),A(:,:,1));

maxptx = max(normx_corrmap(:));
[x1,y1]=find(normx_corrmap==maxptx);
figure,
imagesc(A1(x1-size(B,1):x1,y1-size(B,2):y1,:));axis image
