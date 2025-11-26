%"reading " the images
img1=imread("C:\Users\micha\Desktop\im-1.png");%path to img
img2=imread("C:\Users\micha\Desktop\im-2.png");
img3=imread("C:\Users\micha\Desktop\im-3.png");
img4=imread("C:\Users\micha\Desktop\im-4.png");

%control if the image is colored 
if size(img1, 3) == 3
    img1 = rgb2gray(img1);
end
if size(img2, 3) == 3
    img2 = rgb2gray(img2);
end
if size(img3, 3) == 3
    img3 = rgb2gray(img3);
end
if size(img4, 3) == 3
    img4 = rgb2gray(img4);
end

%calculating the fft2d

fftimg1=fft2(img1);
fftimg2=fft2(img2);
fftimg3=fft2(img3);
fftimg4=fft2(img4);


%finding fftshifted and the magnitude for each one
%calculating the fasma
fftshifted1=fftshift(fftimg1);
magn1=abs(fftshifted1);

fftshifted2=fftshift(fftimg2);
magn2=abs(fftshifted2);

fftshifted3=fftshift(fftimg3);
magn3=abs(fftshifted3);

fftshifted4=fftshift(fftimg4);
magn4=abs(fftshifted4);
%plot of the magnitude
figure;
imshow(log(1+magn1), []); 
title("magnitude for image 1.")
figure;
imshow(log(1+magn2), []); 
title("magnitude for image 2.")
figure;
imshow(log(1+magn3), []); 
title("magnitude for image 3.")
figure;
imshow(log(1+magn4), []);
title("magnitude for image 4.")
%plot of the centarized magnitude (N/2=512/2)
figure;
N2_1=magn1(128:384,128:384);
imshow(log(1+N2_1),[])
title("Centralized n/2 magnitude for image 1.")

figure;
N2_2=magn2(128:384,128:384);
imshow(log(1+N2_2),[])
title("Centralized n/2 magnitude for image 2.")

figure;
N2_3=magn3(128:384,128:384);
imshow(log(1+N2_3),[])
title("Centralized n/2 magnitude for image 3.")

figure;
N2_4=magn4(128:384,128:384);
imshow(log(1+N2_4),[])
title("Centralized n/2 magnitude for image 4.")
%reconstruction
inversedshift1_old=ifftshift(N2_1);
inversed1_old=ifft2(inversedshift1_old);
figure;
imshow(log(1+inversed1_old),[])
title("reconstruction of image 1.")


inversedshift2_old=ifftshift(N2_2);
inversed2_old=ifft2(inversedshift2_old);
figure;
imshow(log(1+inversed2_old),[])
title("reconstruction of image 2.")


inversedshift3_old=ifftshift(N2_3);
inversed3_old=ifft2(inversedshift3_old);
figure;
imshow(log(1+inversed3_old),[])
title("reconstruction of image 3.")

inversedshift4_old=ifftshift(N2_4);
inversed4_old=ifft2(inversedshift4_old);
figure;
imshow(log(1+inversed4_old),[])
title("reconstruction of image 4.")


%plot of centralized magnitude in the center of the image in length l=n/4 (n/4=512/4)
N=512;
figure;
N4_1=magn1(3*N/8:5*N/8,3*N/8:5*N/8);
imshow(log(1+N4_1),[])
title("Centralized n/4 magnitude for image 1.")


figure;
N4_2=magn2(3*N/8:5*N/8,3*N/8:5*N/8);
imshow(log(1+N4_2),[])
title("Centralized n/4 magnitude for image 2.")

figure;
N4_3=magn3(3*N/8:5*N/8,3*N/8:5*N/8);
imshow(log(1+N4_3),[])
title("Centralized n/4 magnitude for image 3.")

figure;
N4_4=magn4(3*N/8:5*N/8,3*N/8:5*N/8);
imshow(log(1+N4_4),[])
title("Centralized n/4 magnitude for image 4.")

%reconstruction of image using the scentralized square that has l=n/4
inversedshift1=ifftshift(N4_1);
inversed1=ifft2(inversedshift1);
figure;
imshow(log(1+inversed1),[])
title("reconstruction of image 1.")


inversedshift2=ifftshift(N4_2);
inversed2=ifft2(inversedshift2);
figure;
imshow(log(1+inversed2),[])
title("reconstruction of image 2.")


inversedshift3=ifftshift(N4_3);
inversed3=ifft2(inversedshift3);
figure;
imshow(log(1+inversed3),[])
title("reconstruction of image 3.")

inversedshift4=ifftshift(N4_4);
inversed4=ifft2(inversedshift4);
figure;
imshow(log(1+inversed4),[])
title("reconstruction of image 4.")



