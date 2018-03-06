CPP=/usr/bin/g++
CPPOPT= -Wall -g
INC= -I/usr/include/opencv2 -I/usr/include  
LIB= -L/usr/lib -lopencv_stitching -lopencv_objdetect -lopencv_superres -lopencv_videostab -lopencv_calib3d -lopencv_features2d -lopencv_highgui -lopencv_video -lopencv_photo -lopencv_ml -lopencv_imgproc -lopencv_flann -lopencv_core  -L/usr/local/share/OpenCV/3rdparty/lib -L/usr/local/lib  

All:displayMovies displayImage canny processMovies processWebcam display2Webcams
clean :
	rm *.o

displayImage : displayImage.cpp
	$(CPP) $(CPPOPT) -o displayImage displayImage.cpp $(INC) $(LIB)

canny : canny.cpp
	$(CPP) $(CPPOPT) -o canny canny.cpp $(INC) $(LIB)

displayMovies : displayMovies.cpp
	$(CPP) $(CPPOPT) -o displayMovies displayMovies.cpp $(INC) $(LIB)

processMovies : processMovies.cpp
	$(CPP) $(CPPOPT) -o processMovies processMovies.cpp $(INC) $(LIB)

processWebcam : processWebcam.cpp
	$(CPP) $(CPPOPT) -o processWebcam processWebcam.cpp $(INC) $(LIB)
	
display2Webcams : display2Webcams.cpp
	$(CPP) $(CPPOPT) -o display2Webcams display2Webcams.cpp $(INC) $(LIB)
	
	

# /usr/bin/g++ -Wall -g -o progImage progImage.cpp -I/usr/include/opencv2 -I/usr/include  -L/usr/lib -lopencv_stitching -lopencv_objdetect -lopencv_superres -lopencv_videostab -lopencv_calib3d -lopencv_features2d -lopencv_highgui -lopencv_video -lopencv_photo -lopencv_ml -lopencv_imgproc -lopencv_flann -lopencv_core  -L/usr/local/share/OpenCV/3rdparty/lib -L/usr/local/lib  

