
facedetect = vision.CascadeObjectDetector; %face detection object
img = imread('g3.jpg'); %read image

BB = step(facedetect,img); %face specifying

figure(1),imshow(img);
for i = 1:size(BB) % draw line around the face
rectangle('Position',BB(i,:),'LineWidth',2,'LineStyle','- -','EdgeColor','g');
end
title('Face Detected !');

cropped = imcrop(img,BB(1,:));%crop to image
figure(2),imshow(cropped);
bgray=rgb2gray(cropped); %rgb to gray
BW2 = edge(bgray,'Canny');%canny filter detect

figure(3),imshow(BW2);